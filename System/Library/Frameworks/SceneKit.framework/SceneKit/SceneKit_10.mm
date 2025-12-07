void *__BindValueForSymbol(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  UserInfo = C3DFXProgramDelegateGetUserInfo(v6, a2);
  result = C3DFXProgramDelegateGetCallbacks(v6, v10);
  if (result)
  {
    result = *result;
    if (result)
    {
      v15 = result;
      ProgramID = C3DFXGLSLProgramObjectGetProgramID(v8, v12);
      Node = C3DRendererElementGetNode(v7);

      return (v15)(v5, a1, ProgramID, (v3 - 1), Node, UserInfo);
    }
  }

  return result;
}

uint64_t __UnbindValueForSymbol(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  UserInfo = C3DFXProgramDelegateGetUserInfo(v6, a2);
  result = C3DFXProgramDelegateGetCallbacks(v6, v10);
  if (result)
  {
    result = *(result + 8);
    if (result)
    {
      v15 = result;
      ProgramID = C3DFXGLSLProgramObjectGetProgramID(v8, v12);
      Node = C3DRendererElementGetNode(v7);

      return v15(v5, a1, ProgramID, (v3 - 1), Node, UserInfo);
    }
  }

  return result;
}

uint64_t C3DRendererElementStateBindProgramRendererElement(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(&v240[1] + 4) = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v8 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  *(a1 + 48) = a2;
  MaterialForRenderPass = C3DRendererElementGetMaterialForRenderPass(a2, a4);
  Technique = C3DMaterialGetTechnique(MaterialForRenderPass, v17);
  *(a1 + 368) = Technique;
  if (Technique)
  {
    SingleProgram = C3DFXTechniqueGetSingleProgram(Technique);
    Profile = C3DFXProgramGetProfile(SingleProgram, v21);
    CommonProfile = 0;
    *(a1 + 384) = Profile;
  }

  else
  {
    *(a1 + 384) = 0;
    CommonProfile = C3DMaterialGetCommonProfile(MaterialForRenderPass, v19);
  }

  *(a1 + 376) = CommonProfile;
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a3, v22);
  PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a3);
  ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, a2, a4, PreferredRenderMode);
  *(a1 + 392) = ProgramHashCodeForRenderElement;
  if (ProgramHashCodeForRenderElement)
  {
    HasShaderModifiers = C3DProgramHashCodeHasShaderModifiers(ProgramHashCodeForRenderElement);
    v30 = (a1 + 389);
    *(a1 + 389) = HasShaderModifiers;
    v31 = (a1 + 390);
    *(a1 + 390) = 0;
    if (HasShaderModifiers)
    {
      LODWORD(v28) = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        ShaderModifiers = C3DProgramHashCodeGetShaderModifiers(*(a1 + 392), v28);
        if (ShaderModifiers)
        {
          v35 = ShaderModifiers;
          if (!CFArrayGetCount(ShaderModifiers))
          {
            v37 = scn_default_log(0, v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              C3DRendererElementStateBindProgramRendererElement_cold_2(buf, v240, v37);
            }
          }

          Count = CFArrayGetCount(v35);
          if (Count >= 1)
          {
            v39 = Count;
            for (i = 0; i != v39; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v35, i);
              *v31 |= C3DShaderModifierGetFlags(ValueAtIndex, v42) & 1;
            }
          }
        }

        v32 = 0;
        v28 = 1;
      }

      while ((v33 & 1) != 0);
    }
  }

  else
  {
    v30 = (a1 + 389);
    *(a1 + 389) = 0;
    v31 = (a1 + 390);
  }

  v43 = *(a1 + 32);
  v44 = *(a1 + 16);
  v224 = *(a1 + 24);
  v46 = C3DEngineContextGetProgramHashCodeStore(v43, v28);
  if (a4)
  {
    v47 = C3DFXPassRequiresLighting(a4, v45);
  }

  else
  {
    v47 = 1;
  }

  v48 = C3DEngineContextGetPreferredRenderMode(v43);
  v49 = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(v46, a2, a4, v48);
  Node = C3DRendererElementGetNode(a2);
  v52 = Node;
  v53 = 1.0;
  if (Node && (*v31 & 1) == 0)
  {
    C3DNodeGetWorldAlpha(Node, v51);
    if (v54 == 0.0)
    {
      return 0;
    }

    v53 = v54;
  }

  v55 = C3DRendererElementGetMaterialForRenderPass(a2, a4);
  if (!v55)
  {
    __RendererElementStateUnbindLastUsedCommonProfile(a1, 1);
    if (*(a1 + 328))
    {
      C3DRendererContextUnbindProgramObject(v44);
      v69 = *(a1 + 328);
      if (v69)
      {
        CFRelease(v69);
        *(a1 + 328) = 0;
      }

      *(a1 + 336) = 0;
    }

    goto LABEL_134;
  }

  v221 = v52;
  v237 = 0;
  v216 = v55;
  v225 = v43;
  if (C3DMaterialGetTechnique(v55, v56))
  {
    v58 = 0;
    v218 = 0;
    v59 = 0;
    v214 = 0;
LABEL_30:
    v60 = 0;
    v223 = 1;
    goto LABEL_31;
  }

  if (!v49)
  {
    return 0;
  }

  v58 = C3DMaterialGetCommonProfile(v216, v57);
  v140 = C3DProgramHashCodeNeedTangents(v49);
  v59 = v47 && C3DEffectCommonProfileGetLightingModel(v58, v139) != 4 && C3DEffectCommonProfileGetLightingModel(v58, v141) != 0;
  HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(v49);
  if (a4 && HasConstantAlpha)
  {
    HasConstantAlpha = C3DFXPassHasConstantAlpha(a4, v167);
  }

  v214 = HasConstantAlpha;
  if ((*v30 & 1) == 0 && (v53 < 1.0 || (C3DEffectCommonProfileIsOpaque(v58, v167) & HasConstantAlpha & 1) == 0))
  {
    v172 = v59;
    TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(v58, v167);
    ConstantAlpha = C3DEffectCommonProfileGetConstantAlpha(v58);
    _ZF = TransparencyMode == 1;
    v59 = v172;
    if (!_ZF && (v53 * ConstantAlpha) <= 0.0)
    {
      return 0;
    }
  }

  v218 = v140;
  if (!v58)
  {
    goto LABEL_30;
  }

  v168 = *(v58 + 194);
  v169 = HIWORD(v168) & 0x1FFF;
  if (v169 == 1)
  {
    v223 = 0;
    v60 = 0;
    goto LABEL_31;
  }

  if (v169)
  {
    if ((v168 & 0x20000) != 0)
    {
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(v58, 0, 0);
      if (EffectSlot)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), EffectSlot);
      }
    }

    if ((*(v58 + 196) & 4) != 0)
    {
      v176 = C3DEffectCommonProfileGetEffectSlot(v58, 2, 0);
      if (v176)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v176);
      }
    }

    if ((*(v58 + 196) & 8) != 0)
    {
      v177 = C3DEffectCommonProfileGetEffectSlot(v58, 3, 0);
      if (v177)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v177);
      }
    }

    if ((*(v58 + 196) & 0x10) != 0)
    {
      v178 = C3DEffectCommonProfileGetEffectSlot(v58, 4, 0);
      if (v178)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v178);
      }
    }

    if ((*(v58 + 196) & 0x20) != 0)
    {
      v179 = C3DEffectCommonProfileGetEffectSlot(v58, 5, 0);
      if (v179)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v179);
      }
    }

    if ((*(v58 + 196) & 0x40) != 0)
    {
      v180 = C3DEffectCommonProfileGetEffectSlot(v58, 6, 0);
      if (v180)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v180);
      }
    }

    if ((*(v58 + 196) & 0x80) != 0)
    {
      v181 = C3DEffectCommonProfileGetEffectSlot(v58, 7, 0);
      if (v181)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v181);
      }
    }

    if (*(v58 + 197))
    {
      v182 = C3DEffectCommonProfileGetEffectSlot(v58, 1, 0);
      if (v182)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v182);
      }
    }

    if ((*(v58 + 197) & 2) != 0)
    {
      v183 = C3DEffectCommonProfileGetEffectSlot(v58, 8, 0);
      if (v183)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v183);
      }
    }

    if ((*(v58 + 197) & 4) != 0)
    {
      v184 = C3DEffectCommonProfileGetEffectSlot(v58, 9, 0);
      if (v184)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v184);
      }
    }

    if ((*(v58 + 197) & 8) != 0)
    {
      v185 = C3DEffectCommonProfileGetEffectSlot(v58, 10, 0);
      if (v185)
      {
        C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v185);
      }
    }

    if ((*(v58 + 197) & 0x10) == 0)
    {
      goto LABEL_256;
    }

    v186 = v58;
    v187 = 11;
  }

  else
  {
    *(v58 + 194) = v168 & 0xE000FFFF | 0x10000;
    v170 = C3DEffectCommonProfileGetEffectSlot(v58, 0, 0);
    if (v170)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v170))
      {
        v171 = 0x20000;
      }

      else
      {
        v171 = 0;
      }
    }

    else
    {
      v171 = 0;
    }

    *(v58 + 194) |= v171;
    v188 = C3DEffectCommonProfileGetEffectSlot(v58, 2, 0);
    if (v188)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v188))
      {
        v189 = 0x40000;
      }

      else
      {
        v189 = 0;
      }
    }

    else
    {
      v189 = 0;
    }

    *(v58 + 194) |= v189;
    v190 = C3DEffectCommonProfileGetEffectSlot(v58, 3, 0);
    if (v190)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v190))
      {
        v191 = 0x80000;
      }

      else
      {
        v191 = 0;
      }
    }

    else
    {
      v191 = 0;
    }

    *(v58 + 194) |= v191;
    v192 = C3DEffectCommonProfileGetEffectSlot(v58, 4, 0);
    if (v192)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v192))
      {
        v193 = 0x100000;
      }

      else
      {
        v193 = 0;
      }
    }

    else
    {
      v193 = 0;
    }

    *(v58 + 194) |= v193;
    v194 = C3DEffectCommonProfileGetEffectSlot(v58, 5, 0);
    if (v194)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v194))
      {
        v195 = 0x200000;
      }

      else
      {
        v195 = 0;
      }
    }

    else
    {
      v195 = 0;
    }

    *(v58 + 194) |= v195;
    v196 = C3DEffectCommonProfileGetEffectSlot(v58, 6, 0);
    if (v196)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v196))
      {
        v197 = 0x400000;
      }

      else
      {
        v197 = 0;
      }
    }

    else
    {
      v197 = 0;
    }

    *(v58 + 194) |= v197;
    v198 = C3DEffectCommonProfileGetEffectSlot(v58, 7, 0);
    if (v198)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v198))
      {
        v199 = 0x800000;
      }

      else
      {
        v199 = 0;
      }
    }

    else
    {
      v199 = 0;
    }

    *(v58 + 194) |= v199;
    v200 = C3DEffectCommonProfileGetEffectSlot(v58, 1, 0);
    if (v200)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v200))
      {
        v201 = 0x1000000;
      }

      else
      {
        v201 = 0;
      }
    }

    else
    {
      v201 = 0;
    }

    *(v58 + 194) |= v201;
    v202 = C3DEffectCommonProfileGetEffectSlot(v58, 8, 0);
    if (v202)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v202))
      {
        v203 = 0x2000000;
      }

      else
      {
        v203 = 0;
      }
    }

    else
    {
      v203 = 0;
    }

    *(v58 + 194) |= v203;
    v204 = C3DEffectCommonProfileGetEffectSlot(v58, 9, 0);
    if (v204)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v204))
      {
        v205 = 0x4000000;
      }

      else
      {
        v205 = 0;
      }
    }

    else
    {
      v205 = 0;
    }

    *(v58 + 194) |= v205;
    v206 = C3DEffectCommonProfileGetEffectSlot(v58, 10, 0);
    if (v206)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v206))
      {
        v207 = 0x8000000;
      }

      else
      {
        v207 = 0;
      }
    }

    else
    {
      v207 = 0;
    }

    *(v58 + 194) |= v207;
    v208 = C3DEffectCommonProfileGetEffectSlot(v58, 11, 0);
    if (v208)
    {
      if (C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v208))
      {
        v209 = 0x10000000;
      }

      else
      {
        v209 = 0;
      }
    }

    else
    {
      v209 = 0;
    }

    *(v58 + 194) |= v209;
    v210 = C3DEffectCommonProfileGetEffectSlot(v58, 15, 0);
    if (v210)
    {
      C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v210);
    }

    v211 = C3DEffectCommonProfileGetEffectSlot(v58, 12, 0);
    if (v211)
    {
      C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v211);
    }

    v212 = C3DEffectCommonProfileGetEffectSlot(v58, 13, 0);
    if (v212)
    {
      C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v212);
    }

    v186 = v58;
    v187 = 14;
  }

  v213 = C3DEffectCommonProfileGetEffectSlot(v186, v187, 0);
  if (v213)
  {
    C3DRendererContextExecuteSlotTextureProxy(*(a1 + 16), *(a1 + 24), *(a1 + 32), v213);
  }

LABEL_256:
  v223 = 0;
  v60 = (*(v58 + 194) & 0x1FFF0000) != 0x10000;
LABEL_31:
  v61 = *v30;
  v222 = v58;
  v217 = v59;
  if (v61 == 1)
  {
    v219 = a4;
    v62 = v44;
    v63 = 0;
    *(a1 + 388) = 0;
    do
    {
      v64 = v61;
      if (C3DProgramHashCodeGetShaderModifiers(v49, v63))
      {
        ShaderModifierOwner = __getShaderModifierOwner(a2, v63);
        value.columns[0].i64[0] = MEMORY[0x277D85DD0];
        value.columns[0].i64[1] = 0x40000000;
        value.columns[1].i64[0] = ___ExecuteShaderModifiersTextureProxy_block_invoke;
        value.columns[1].i64[1] = &__block_descriptor_tmp_12;
        value.columns[2].i64[0] = a1;
        C3DEntityEnumerateKeyValuesWithBlock(ShaderModifierOwner, &value);
      }

      LOBYTE(v61) = 0;
      v63 = 1;
    }

    while ((v64 & 1) != 0);
    v44 = v62;
    a4 = v219;
    if (((v60 | *(a1 + 388)) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (!v60)
  {
LABEL_37:
    v66 = 0;
    v67 = v225;
    goto LABEL_44;
  }

  v67 = v225;
  C3DRendererElementStateReset(a1, v225);
  v66 = 1;
LABEL_44:
  C3DEnginePipelineGetRenderComponentsForRenderPass(a2, a4, v67, 0, 0, &v237, 0);
  if (v237 && (ProgramResident = C3DResourceManagerMakeProgramResident(v224, v237, v44, 0)) != 0)
  {
    v71 = ProgramResident;
    v72 = v237;
  }

  else
  {
    v72 = 0;
    v71 = 0;
    v237 = 0;
  }

  v73 = *(a1 + 328);
  if (v73 != v72)
  {
    v74 = v72;
    if (v73)
    {
      CFRelease(*(a1 + 328));
      *(a1 + 328) = 0;
      v74 = v237;
    }

    if (v74)
    {
      v74 = CFRetain(v74);
    }

    *(a1 + 328) = v74;
    if (*(a1 + 336) != v71)
    {
      *(a1 + 336) = v71;
      C3DRendererContextBindProgramObject(v44, v71);
    }
  }

  if (v59)
  {
    v75 = *(a2 + 56);
    v76 = *(a1 + 344) != v75;
    *(a1 + 344) = v75;
  }

  else
  {
    v76 = 0;
  }

  v215 = v76;
  if ((v66 | v76) & 1 | (v73 != v72) || *(a1 + 56) != v58 || (C3DRendererElementIsOpaque(a2) & 1) == 0)
  {
    v220 = v66;
    v77 = v44;
    if (v73 == v72)
    {
      v78 = 1;
    }

    else
    {
      v78 = v223;
    }

    __RendererElementStateUnbindLastUsedCommonProfile(a1, v73 != v72);
    if (v71 && (v78 & 1) == 0)
    {
      UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v71, 187);
      if (UniformLocation != -1)
      {
        v82 = UniformLocation;
        PointOfView = C3DEngineContextGetPointOfView(v225, v81);
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        memset(&value, 0, sizeof(value));
        if (PointOfView)
        {
          if (C3DNodeGetProjectionInfos(PointOfView, &value))
          {
            ZFar = C3DProjectionInfosGetZFar(&value, v84);
            v87 = 1.0 / (ZFar - C3DProjectionInfosGetZNear(&value, v86));
            v[0] = v87;
            C3DRendererContextSetFloatUniformAtLocation(v77, v82, v, 1);
          }
        }
      }

      v88 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 190);
      if (v88 != -1)
      {
        v90 = v88;
        PointOfViewScale = C3DEngineContextGetPointOfViewScale(v225, v89);
        Scene = C3DEngineContextGetScene(v225, v92);
        value.columns[0] = 0uLL;
        value.columns[0] = *C3DSceneGetFogColor(Scene, v94);
        C3DRendererContextSetColor4UniformAtLocation(v77, v90, &value, 1);
        v95 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 191);
        if (v95 != -1)
        {
          v97 = v95;
          *&v[1] = 0;
          v[0] = 0.0;
          *&v98 = C3DSceneComputeFogParameters(Scene, v96, PointOfViewScale);
          *v = v98;
          C3DRendererContextSetVector3UniformAtLocation(v77, v97, v, 1);
        }
      }

      v99 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 189);
      if (v99 != -1)
      {
        v100 = v99;
        if ((__UpdateEffectIfNeeded_initialized & 1) == 0)
        {
          __UpdateEffectIfNeeded_initialized = 1;
          C3DSetupHaltonFilterKernelConic(__UpdateEffectIfNeeded_s_kernel, 31, 1.0, 1.0, -2.0);
        }

        C3DRendererContextSetVector4UniformAtLocation(v77, v100, __UpdateEffectIfNeeded_s_kernel[0].f32, 31);
      }

      v101 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 0);
      if (v101 != -1)
      {
        v102 = v101;
        SystemTime = C3DEngineContextGetSystemTime(v225);
        v104 = *&__UpdateEffectIfNeeded_t0;
        if (*&__UpdateEffectIfNeeded_t0 == 0.0)
        {
          __UpdateEffectIfNeeded_t0 = *&SystemTime;
          v104 = SystemTime;
        }

        v105 = SystemTime - v104;
        value.columns[0].f32[0] = v105;
        C3DRendererContextSetFloatUniformAtLocation(v77, v102, &value, 1);
      }

      v106 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 1);
      if (v106 != -1)
      {
        v107 = v106;
        Viewport = C3DEngineContextGetViewport(v225);
        __asm { FMOV            V1.2S, #1.0 }

        *value.columns[0].f32 = vdiv_f32(_D1, *&vextq_s8(Viewport, Viewport, 8uLL));
        C3DRendererContextSetVector2UniformAtLocation(v77, v107, &value, 1);
      }

      v114 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 14);
      if (v114 != -1)
      {
        v115 = v114;
        Matrix4x4 = C3DEngineContextGetMatrix4x4(v225, 0);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v77, v115, Matrix4x4, 1);
      }

      v117 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 15);
      if (v117 != -1)
      {
        v118 = v117;
        memset(&value, 0, sizeof(value));
        v119 = C3DEngineContextGetMatrix4x4(v225, 0);
        C3DMatrix4x4Invert(v119, &value);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v77, v118, &value, 1);
      }

      v120 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 17);
      if (v120 != -1)
      {
        v121 = v120;
        memset(&value, 0, sizeof(value));
        v122 = C3DEngineContextGetMatrix4x4(v225, 1);
        C3DMatrix4x4Invert(v122, &value);
        *&v[1] = 0;
        v[0] = 0.0;
        C3DMatrix4x4GetTranslation(&value, v);
        C3DRendererContextSetVector3UniformAtLocation(v77, v121, v, 1);
      }

      v123 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 12);
      if (v123 != -1)
      {
        v124 = v123;
        v125 = C3DEngineContextGetMatrix4x4(v225, 1);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v77, v124, v125, 1);
      }

      v126 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 13);
      if (v126 != -1)
      {
        v127 = v126;
        memset(&value, 0, sizeof(value));
        v128 = C3DEngineContextGetMatrix4x4(v225, 1);
        C3DMatrix4x4Invert(v128, &value);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v77, v127, &value, 1);
      }

      v79 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 16);
      LOBYTE(v59) = v217;
      if (v79 != -1)
      {
        v129 = v79;
        memset(&value, 0, sizeof(value));
        v130 = C3DEngineContextGetMatrix4x4(v225, 1);
        v131 = v130[3];
        v133 = *v130;
        v132 = v130[1];
        value.columns[2] = v130[2];
        value.columns[3] = v131;
        value.columns[0] = v133;
        value.columns[1] = v132;
        v135 = C3DEngineContextGetScene(v225, v134);
        C3DSceneComputeViewToCubemapMatrix(v135, &value);
        C3DRendererContextSetMatrix4x4UniformAtLocation(v77, v129, &value, 1);
      }
    }

    *(a1 + 320) = *(a1 + 400);
    v136 = *(a1 + 384);
    if (v136 == 1)
    {
      v142 = C3DBlendStatesDefaultOver(v79, v68);
      v44 = v77;
      C3DRendererContextSetBlendStates(v77, v142);
      v58 = v222;
    }

    else
    {
      v44 = v77;
      v58 = v222;
      if (!v136)
      {
        v137 = v53 * v44[19].f32[1];
        BlendMode = C3DMaterialGetBlendMode(v216, v68);
        C3DRendererContextBindCommonProfile(v44, v224, v222, a1 + 64, v214, BlendMode, v137);
      }
    }

    *(a1 + 400) = *(a1 + 320);
    v143 = v220;
    if ((v223 & 1) == 0)
    {
      v144 = v215;
      if (v73 != v72)
      {
        v144 = 1;
      }

      if (v71 != 0 && v59 && v144)
      {
        v145 = *(a1 + 16);
        *&v231 = 0;
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        memset(&value, 0, sizeof(value));
        C3DLightingSystemGetLightingSetDesc(*(a1 + 40), *(a1 + 48) + 56, &value);
        v146 = value.columns[0].i64[0];
        if (value.columns[0].i64[0] >= 1)
        {
          v147 = 0;
          do
          {
            v148 = &value + 8 * v147;
            v149 = *(v148 + 1);
            if (v149)
            {
              v150 = *(v148 + 9);
              if (v150)
              {
                C3DRendererContextSetLight(v145, v147, v149, v150, (a1 + 400));
                v146 = value.columns[0].i64[0];
              }
            }

            ++v147;
          }

          while (v147 < v146);
        }

        v151 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 184);
        if (v151 != -1)
        {
          v152 = v151;
          *v = C3DLightingSystemGetAmbientLighting(*(a1 + 40));
          *&v[2] = v153;
          C3DRendererContextSetColor4UniformAtLocation(v145, v152, v, 1);
        }

        v143 = v220;
      }

      if (v143)
      {
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 0, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 1, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 2, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 3, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 4, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 5, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 6, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 7, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 9, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 8, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 10, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 11, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 15, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 12, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 13, 0);
        _C3DEffectCommonProfileSetTextureForTextureProxy(v58, 14, 0);
      }
    }

    *(a1 + 56) = v58;
  }

  if (v221)
  {
    Skinner = C3DNodeGetSkinner(v221, v68);
    if (Skinner)
    {
      v155 = Skinner;
      if (C3DGeometryGetOverrideMaterial(Skinner))
      {
        Geometry = C3DNodeGetGeometry(v221, v68);
        if (C3DSkinnerGetEffectiveCalculationMode(v155, Geometry) == 1)
        {
          if (C3DRendererElementGetMeshElement(a2, v68))
          {
            value.columns[0].i64[0] = 0;
            JointMatrices = C3DSkinnerGetJointMatrices(v155, &value);
            if (value.columns[0].i64[0] >= 1)
            {
              v158 = JointMatrices;
              v159 = C3DFXGLSLProgramObjectGetUniformLocation(v71, 186);
              if (v159 != -1)
              {
                C3DRendererContextSetVector4UniformAtLocation(v44, v159, v158, value.columns[0].i64[0]);
              }
            }
          }
        }
      }
    }
  }

  if (v218)
  {
    Mesh = C3DRendererElementGetMesh(a2, v68);
    C3DMeshCreateTangentsIfNeeded(Mesh, 1);
  }

  if (v58)
  {
    v161 = C3DEffectCommonProfileGetLightingModel(v58, v68) != 4;
    if (C3DEngineContextGetScene(v225, v162))
    {
      if (*(a1 + 428) != v161)
      {
        *(a1 + 428) = v161;
      }
    }
  }

LABEL_134:
  RasterizerStates = C3DFXPassGetRasterizerStates(a4, v68);
  if (RasterizerStates || (RasterizerStates = C3DRendererElementGetRaterizerStates(a2, v164)) != 0)
  {
    C3DRendererContextSetRasterizerStates(v44, RasterizerStates);
  }

  return 1;
}

void C3DRendererElementStateDrawRendererElement(uint64_t a1, uint64_t a2, float32x4_t *a3, void *a4, int a5)
{
  *&v95[5] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v10 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  *(a1 + 48) = a2;
  if ((!a5 || C3DRendererElementStateBindProgramRendererElement(a1, a2, a3, a4)) && *(a1 + 328))
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(a3, a2);
    ResourceManager = C3DEngineContextGetResourceManager(a3, v18);
    Node = C3DRendererElementGetNode(a2);
    Mesh = C3DRendererElementGetMesh(a2, v21);
    MeshElement = C3DRendererElementGetMeshElement(a2, v23);
    v26 = *(a1 + 328);
    if (v26)
    {
      OverrideMaterial = C3DGeometryGetOverrideMaterial(v26);
      if (!Node)
      {
        goto LABEL_10;
      }
    }

    else
    {
      OverrideMaterial = 0;
      if (!Node)
      {
LABEL_10:
        if (Mesh)
        {
          C3DRendererContextBindMesh(RendererContextGL, ResourceManager, Mesh);
        }

        v29 = *(a1 + 336);
        if (*(v29 + 40))
        {
          if (*(a1 + 384) == 1)
          {
            C3DGLSLProfileBindProfileInputs(a3, v29, *(a1 + 368));
          }

          else
          {
            __UpdateMatrixUniforms(a1, a2);
            v31 = C3DRendererElementGetNode(a2);
            if (v31)
            {
              LightmapInfo = C3DNodeGetLightmapInfo(v31, v30);
              if (LightmapInfo)
              {
                v33 = LightmapInfo;
                v92 = OverrideMaterial;
                v34 = RendererContextGL;
                Value = CFDictionaryGetValue(LightmapInfo, @"image");
                if (!Value)
                {
                  goto LABEL_79;
                }

                v36 = Value;
                v37 = C3DEngineContextGetResourceManager(a3, v30);
                v90 = C3DEngineContextGetRendererContextGL(a3, v38);
                v39 = *(a1 + 400);
                *(a1 + 400) = v39 + 1;
                TypeID = C3DImageGetTypeID(v90, v40);
                if (TypeID != CFGetTypeID(v36))
                {
                  goto LABEL_79;
                }

                CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(*(a2 + 32), v30);
                if (!CommonProfileIfNoTechnique)
                {
                  goto LABEL_79;
                }

                TextureSampler = C3DEffectCommonProfileGetTextureSampler(CommonProfileIfNoTechnique, 2);
                ImageResident = C3DResourceManagerMakeImageResident(v37, v36, TextureSampler, v90);
                if (!ImageResident)
                {
                  goto LABEL_79;
                }

                v45 = ImageResident;
                valuePtr = 1;
                v46 = C3DRendererElementGetMesh(a2, v30);
                v47 = CFDictionaryGetValue(v33, @"uv_set");
                if (v47)
                {
                  CFNumberGetValue(v47, kCFNumberIntType, &valuePtr);
                }

                SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(v46, 3);
                if (SourcesCountForSemantic && (SourcesCountForSemantic - 1 >= valuePtr ? (v49 = valuePtr) : (v49 = (SourcesCountForSemantic - 1)), valuePtr = v49, C3DMeshGetSourceWithSemanticAtIndex(v46, 3, v49, 1)))
                {
                  v50 = v45;
                  v51 = TextureSampler;
                  v52 = v39;
                  v53 = a1 + 32 * v39;
                  *(v53 + 64) = 6;
                  v54 = v53 + 64;
                  v55 = v52;
                  *(v54 + 16) = v52;
                  v56 = *(v54 + 8);
                  cf = v50;
                  if (v56 != v50)
                  {
                    if (v56)
                    {
                      CFRelease(v56);
                      *(v54 + 8) = 0;
                    }

                    *(v54 + 8) = CFRetain(cf);
                  }

                  v57 = *(v54 + 24);
                  if (v57 != v51)
                  {
                    if (v57)
                    {
                      CFRelease(v57);
                      *(v54 + 24) = 0;
                    }

                    v57 = v51;
                    if (v51)
                    {
                      v57 = CFRetain(v51);
                    }

                    *(v54 + 24) = v57;
                  }

                  v58 = *(a1 + 336);
                  RendererContextGL = v34;
                  if (!v58)
                  {
                    v59 = scn_default_log(v57, v30);
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
                    {
                      C3DRendererElementStateDrawRendererElement_cold_2(v59, v60, v61, v62, v63, v64, v65, v66);
                    }
                  }

                  OverrideMaterial = v92;
                  if (v55 != C3DFXGLSLProgramObjectGetUniformValueAtIndex(v58, 178))
                  {
                    UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v58, 178);
                    C3DRendererContextSetIntUniformAtLocation(v90, UniformLocation, v55);
                    C3DFXGLSLProgramObjectSetUniformValueAtIndex(v58, 178, v55);
                  }

                  C3DRendererContextBindTexture(v90, cf, v51, 0, v55);
                  if (!MeshElement)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
LABEL_79:
                  v54 = 0;
                  RendererContextGL = v34;
                  OverrideMaterial = v92;
                  if (!MeshElement)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_49;
              }
            }
          }
        }

        else
        {
          __UpdateMatrixUniforms(a1, a2);
        }

        v54 = 0;
        if (!MeshElement)
        {
LABEL_50:
          if (OverrideMaterial)
          {
            __FireProgramDelegateCallback(a1, a2, OverrideMaterial, __BindValueForSymbol);
          }

          v68 = *(a1 + 389);
          if (v68 == 1)
          {
            *v91 = RendererContextGL;
            v93 = OverrideMaterial;
            v69 = 0;
            v70 = *(a1 + 392);
            do
            {
              v71 = v68;
              ShaderModifiers = C3DProgramHashCodeGetShaderModifiers(v70, v69);
              if (ShaderModifiers)
              {
                v73 = ShaderModifiers;
                if (!CFArrayGetCount(ShaderModifiers))
                {
                  v75 = scn_default_log(0, v74);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                  {
                    C3DRendererElementStateBindProgramRendererElement_cold_2(&valuePtr, v95, v75);
                  }
                }

                ShaderModifierOwner = __getShaderModifierOwner(a2, v69);
                Count = CFArrayGetCount(v73);
                if (Count >= 1)
                {
                  v78 = Count;
                  for (i = 0; i != v78; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v73, i);
                    if (C3DShaderModifierGetLanguage(ValueAtIndex, v81) == 1)
                    {
                      *(a1 + 400) += C3DShaderModifierBindUniforms(ValueAtIndex, *(a1 + 32), ShaderModifierOwner, *(a1 + 400));
                    }
                  }
                }
              }

              LOBYTE(v68) = 0;
              v69 = 1;
            }

            while ((v71 & 1) != 0);
            v82 = *(a1 + 388);
            RendererContextGL = *v91;
            OverrideMaterial = v93;
            if (v82 == 1)
            {
              v83 = 0;
              v84 = *(a1 + 392);
              do
              {
                v85 = v82;
                if (C3DProgramHashCodeGetShaderModifiers(v84, v83))
                {
                  v86 = __getShaderModifierOwner(a2, v83);
                  C3DEntityEnumerateKeyValuesWithBlock(v86, &__block_literal_global_22_0);
                }

                LOBYTE(v82) = 0;
                v83 = 1;
              }

              while ((v85 & 1) != 0);
              *(a1 + 388) = 0;
              OverrideMaterial = v93;
            }
          }

          C3DRendererContextRenderResidentMeshElement(RendererContextGL, v30);
          if (OverrideMaterial)
          {
            __FireProgramDelegateCallback(a1, a2, OverrideMaterial, __UnbindValueForSymbol);
          }

          if (v54)
          {
            v87 = *(v54 + 8);
            if (v87)
            {
              CFRelease(v87);
              *(v54 + 8) = 0;
            }

            v88 = *(v54 + 24);
            if (v88)
            {
              CFRelease(v88);
              *(v54 + 24) = 0;
            }

            --*(a1 + 400);
          }

          return;
        }

LABEL_49:
        C3DRendererContextBindMeshElement(RendererContextGL, ResourceManager, MeshElement);
        goto LABEL_50;
      }
    }

    WorldMatrix = C3DNodeGetWorldMatrix(Node, v24);
    C3DEngineContextSetMatrix4x4(a3, 2, WorldMatrix);
    goto LABEL_10;
  }
}

void __FireProgramDelegateCallback(uint64_t result, uint64_t a2, uint64_t a3, void (__cdecl *a4)(const void *, const void *, void *))
{
  context[4] = *MEMORY[0x277D85DE8];
  v4 = *(result + 336);
  if (v4)
  {
    if (C3DFXProgramDelegateGetCallbacks(a3, a2))
    {
      context[0] = *(result + 32);
      context[1] = a3;
      context[2] = v4;
      context[3] = a2;
      C3DFXGLSLProgramObjectApplyFunctionForAttributes(v4, a4, context);
      C3DFXGLSLProgramObjectApplyFunctionForUniforms(v4, a4, context);
    }
  }
}

void C3DRendererElementStateProcessRendererElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (!v6)
  {
    v7 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  Pass = C3DFXPassInstanceGetPass(v6, a2);
  Node = C3DRendererElementGetNode(a2);
  v17 = Node;
  if (!a1 && (v18 = scn_default_log(Node, v16), Node = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT), Node))
  {
    C3DRendererElementStateCreate_cold_2(v18, v16, v19, v20, v21, v22, v23, v24);
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    goto LABEL_9;
  }

  v25 = scn_default_log(Node, v16);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    _C3DRendererElementSync_cold_1(v25, v16, v26, v27, v28, v29, v30, v31);
  }

LABEL_9:
  *(a1 + 48) = a2;
  IsHidden = C3DRendererElementIsHidden(a2, v16);
  if (IsHidden)
  {
    v34 = scn_default_log(IsHidden, v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_4(v34, v33, v35, v36, v37, v38, v39, v40);
      if (v17)
      {
        goto LABEL_12;
      }

LABEL_22:
      IsRendererDelegate = C3DRendererElementIsRendererDelegate(a2);
      if (IsRendererDelegate)
      {
        return;
      }

      goto LABEL_23;
    }
  }

  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (C3DNodeGetOpacity(v17, v33) <= 0.0 && (*(a2 + 72) & 7) != 2)
  {
    v43 = scn_default_log(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateProcessRendererElement_cold_5(v43, v44, v45, v46, v47, v48, v49, v50);
    }
  }

  IsRendererDelegate = C3DRendererElementIsRendererDelegate(a2);
  if (IsRendererDelegate)
  {
    RendererDelegate = C3DNodeGetRendererDelegate(v17, v52);
    if (RendererDelegate)
    {
      v55 = RendererDelegate;
      C3DRendererElementStateReset(a1, v5);
      WorldMatrix = C3DNodeGetWorldMatrix(v17, v56);
      C3DEngineContextSetMatrix4x4(v5, 2, WorldMatrix);
      C3DRendererDelegateFireWithNode(v55, v5, v17, Pass);
      return;
    }

    v58 = scn_default_log(0, v54);
    IsRendererDelegate = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);
    if (IsRendererDelegate)
    {
      C3DRendererElementStateProcessRendererElement_cold_6(v58, v52, v59, v60, v61, v62, v63, v64);
    }
  }

LABEL_23:
  v65 = *(a2 + 40);
  if (v65)
  {
    if (v65 != C3DFXTechniqueGetNullTechnique(IsRendererDelegate, v52))
    {
      C3DEngineContextRenderSubTechnique(v5, v65, v6, a2);
      C3DRendererElementStateReset(a1, v5);
    }
  }

  else
  {
    C3DRendererElementStateDrawRendererElement(a1, a2, v5, Pass, 1);
  }
}

void C3DRendererContextDestroyAllVertexArrayObjects(void *context)
{
  v2 = *(context + 15);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _destroyVertexArray, context);
    CFDictionaryRemoveAllValues(*(context + 15));
    v3 = *(context + 16);
    if (v3)
    {
      CFRelease(v3);
      *(context + 16) = 0;
    }
  }
}

uint64_t _destroyVertexArray(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  result = (*(a3 + 1944))(1, &v5);
  --*(a3 + 428);
  return result;
}

void _C3DRendererContextCFFinalize(char *context)
{
  if (context)
  {
    CFDictionaryApplyFunction(*(context + 15), _destroyVertexArray, context);
    v2 = *(context + 15);
    if (v2)
    {
      CFRelease(v2);
      *(context + 15) = 0;
    }

    v3 = *(context + 16);
    if (v3)
    {
      CFRelease(v3);
      *(context + 16) = 0;
    }

    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = &context[24 * v4 + 1992];
      v8 = *(v7 + 2);
      if (v8)
      {
        CFRelease(v8);
        *(v7 + 2) = 0;
      }

      v9 = *v7;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = ___C3DRendererContextCFFinalize_block_invoke;
      v20[3] = &__block_descriptor_tmp_44;
      v20[4] = context;
      C3DArrayApply(v9, v20);
      if (*v7)
      {
        CFRelease(*v7);
        *v7 = 0;
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    v10 = *(context + 255);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = ___C3DRendererContextCFFinalize_block_invoke_2;
    v19[3] = &__block_descriptor_tmp_45_0;
    v19[4] = context;
    C3DArrayApply(v10, v19);
    v11 = *(context + 255);
    if (v11)
    {
      CFRelease(v11);
      *(context + 255) = 0;
    }

    v12 = *(context + 20);
    if (v12)
    {
      C3DResourceManagerRegistryReleaseContext(context, v12);
      C3DEAGLWrapperContextRelease(*(context + 20));
    }

    v13 = *(context + 12);
    if (v13)
    {
      CFRelease(v13);
      *(context + 12) = 0;
    }

    v14 = *(context + 9);
    if (v14)
    {
      CFRelease(v14);
      *(context + 9) = 0;
    }

    v15 = *(context + 14);
    if (v15)
    {
      CFRelease(v15);
      *(context + 14) = 0;
    }

    v16 = *(context + 8);
    if (v16)
    {
      CFRelease(v16);
      *(context + 8) = 0;
    }

    v17 = *(context + 22);
    if (v17)
    {
      CFRelease(v17);
      *(context + 22) = 0;
    }

    v18 = *(context + 257);
    if (v18)
    {
      CFRelease(v18);
      *(context + 257) = 0;
    }
  }
}

CFStringRef _C3DRendererContextCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DRendererContext>");
}

CFStringRef _C3DRendererContextCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DRendererContext>");
}

uint64_t __C3DRendererContextGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererContextGetTypeID_typeID = result;
  return result;
}

__n64 C3DRendererContextSetupCommonPipeline(__n64 *a1, uint64_t a2)
{
  a1[2].n64_u32[1] = 4;
  a1[6].n64_u32[0] = 1;
  C3DRendererContextSetPlatformSpecificImplementations_ES2(&a1[144], a2);
  a1[2].n64_u32[0] = 1;
  params = 0;
  glGetIntegerv(0xD33u, &params);
  result.n64_u64[0] = a1[3].n64_u64[0];
  if (result.n64_f32[0] == 0.0)
  {
    result.n64_f32[0] = params;
    a1[3].n64_u64[0] = result.n64_u64[0];
  }

  if (result.n64_f32[1] == 0.0)
  {
    result.n64_f32[1] = params;
    a1[3].n64_u64[0] = result.n64_u64[0];
  }

  return result;
}

__n64 __InitStateVarsIfNeeded(__n64 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DRendererContextSetupCommonPipeline(a1, a2);
}

__n64 *C3DRendererContextCreateWithOptions()
{
  if (C3DRendererContextGetTypeID_onceToken != -1)
  {
    C3DRendererContextCreateWithOptions_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererContextGetTypeID_typeID, 2048);
  Instance[21].n64_u64[0] = 0;
  Instance[6].n64_u32[1] = 1065353216;
  Instance[11].n64_u16[0] = 256;
  C3DColor4Make(&Instance[18], 1.0, 1.0, 1.0, 1.0);
  Instance[3].n64_u64[0] = 0;
  __InitStateVarsIfNeeded(Instance, v1);
  Instance[22].n64_u64[0] = 0;
  Instance[15].n64_u64[0] = CFDictionaryCreateMutable(0, 0, 0, 0);
  v2 = C3DArrayCreate(32, 0);
  Instance[249].n64_u64[0] = v2;
  C3DArraySetCount(v2, 3u);
  Instance[250].n64_u32[1] = 0;
  v3 = C3DArrayCreate(32, 0);
  Instance[252].n64_u64[0] = v3;
  C3DArraySetCount(v3, 3u);
  Instance[253].n64_u32[1] = 0;
  Instance[255].n64_u64[0] = C3DArrayCreate(4, 10);
  Instance[256].n64_u32[0] = 0;
  return Instance;
}

void C3DRendererContextSetMaxTextureSize(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 24) = a3;
}

void C3DRendererContextClear(uint64_t a1, GLbitfield mask, __int128 *a3)
{
  *(a1 + 1096) = 0;
  if (a3 && (mask & 0x4000) != 0)
  {
    v5 = *a3;
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(&v5, v4);
    }

    glClearColor(*&v5, *(&v5 + 1), *(&v5 + 2), *(&v5 + 3));
  }

  if ((mask & 0x100) != 0)
  {
    glDepthMask(1u);
  }

  if ((mask & 0x400) != 0)
  {
    glStencilMask(0xFFFFFFFF);
  }

  glClear(mask);
}

uint64_t C3DRendererContextGetTextureUnitOffset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DRendererContextGetStats(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 184;
}

BOOL C3DRendererContextIsEnabled(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 2929;
    return glIsEnabled(v2) != 0;
  }

  if (a2 == 2)
  {
    v2 = 2884;
    return glIsEnabled(v2) != 0;
  }

  return 0;
}

void C3DRendererContextSetEnable(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = 2929;
    if (a3)
    {
LABEL_4:
      glEnable(v3);
      return;
    }
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v3 = 2884;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  glDisable(v3);
}

void C3DRendererContextResetToDefaultStates(uint64_t a1)
{
  glPushGroupMarkerEXT(0, "Reset all states");
  glActiveTexture(0x84C0u);
  glDisable(0xB71u);
  glDisable(0xB44u);
  C3DRendererContextUnbindProgramObject(a1);
  C3DRendererContextBindMesh(a1, 0, 0);
  C3DRendererContextBindMeshElement(a1, 0, 0);
  v4 = C3DBlendStatesDefaultReplace(v2, v3);
  C3DRendererContextSetBlendStates(a1, v4);

  glPopGroupMarkerEXT();
}

void C3DRendererContextUnbindProgramObject(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    if (!*(a1 + 1076) || (*(a1 + 1076) = 0, glUseProgram(0), ++*(a1 + 228), (v2 = *(a1 + 176)) != 0))
    {
      CFRelease(v2);
      *(a1 + 176) = 0;
    }
  }
}

void C3DRendererContextUnbindBufferObjects(uint64_t a1)
{
  C3DRendererContextBindMesh(a1, 0, 0);

  C3DRendererContextBindMeshElement(a1, 0, 0);
}

void C3DRendererContextSetBlendStates(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1088))
  {
    v2 = a2;
    if (*(a1 + 1080) != a2)
    {
      if (!a2)
      {
        v2 = C3DBlendStatesDefaultReplace(a1, 0);
      }

      Desc = C3DBlendStatesGetDesc(v2, 0);
      v5 = *(a1 + 1080);
      if (v5)
      {
        v11 = HIBYTE(Desc);
        v6 = C3DBlendStatesGetDesc(v5, 0);
        v7 = BYTE2(v6);
        if ((v6 ^ Desc))
        {
          if (Desc)
          {
            glEnable(0xBE2u);
            v7 = 15;
          }

          else
          {
            glDisable(0xBE2u);
          }

          ++*(a1 + 236);
        }

        if ((Desc & 0x100) != 0)
        {
          if (v7 != BYTE2(Desc) || (v6 ^ Desc) & 0xFFFF0000000000 | (BYTE3(v6) ^ BYTE3(Desc)))
          {
            glBlendFuncSeparate(gl_BlendModes[BYTE2(Desc)], gl_BlendModes[BYTE3(Desc)], gl_BlendModes[BYTE5(Desc)], gl_BlendModes[BYTE6(Desc)]);
            ++*(a1 + 236);
          }

          if (BYTE4(v6) == BYTE4(Desc) && HIBYTE(v6) == v11)
          {
            goto LABEL_31;
          }

          glBlendEquationSeparate(*(a1 + 1160 + 4 * BYTE4(Desc)), *(a1 + 1160 + 4 * v11));
        }

        else
        {
          if (v7 != BYTE2(Desc) || BYTE3(v6) != BYTE3(Desc))
          {
            glBlendFunc(gl_BlendModes[BYTE2(Desc)], gl_BlendModes[BYTE3(Desc)]);
            ++*(a1 + 236);
          }

          if (BYTE4(v6) == BYTE4(Desc))
          {
            goto LABEL_31;
          }

          glBlendEquation(*(a1 + 4 * BYTE4(Desc) + 1160));
        }

        v8 = (a1 + 236);
      }

      else
      {
        if (Desc)
        {
          glEnable(0xBE2u);
        }

        else
        {
          glDisable(0xBE2u);
        }

        v8 = (a1 + 236);
        ++*(a1 + 236);
        v9 = gl_BlendModes[BYTE2(Desc)];
        v10 = gl_BlendModes[BYTE3(Desc)];
        if ((Desc & 0x100) != 0)
        {
          glBlendFuncSeparate(v9, v10, gl_BlendModes[BYTE5(Desc)], gl_BlendModes[BYTE6(Desc)]);
          glBlendEquationSeparate(*(a1 + 1160 + 4 * BYTE4(Desc)), *(a1 + 1160 + 4 * HIBYTE(Desc)));
        }

        else
        {
          glBlendFunc(v9, v10);
          glBlendEquation(*(a1 + 4 * BYTE4(Desc) + 1160));
        }
      }

      ++*v8;
LABEL_31:
      *(a1 + 1080) = v2;
    }
  }
}

void C3DRendererContextSetMatrix4x4UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *value, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log(a1, location);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniformMatrix4fv(location, v4, 0, value);
    if (a1)
    {
      *(a1 + 264) += v4;
    }
  }
}

void C3DRendererContextSetColor4UniformAtLocation(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a2 != -1)
  {
    IsEnabled = C3DLinearRenderingIsEnabled();
    if (!IsEnabled)
    {
      v19 = a2;
      v20 = a4;
      v18 = a3;
LABEL_9:
      glUniform4fv(v19, v20, v18);
      if (!a1)
      {
        return;
      }

      goto LABEL_10;
    }

    if (a4 == 1)
    {
      *v25[0].f32 = *a3->f32;
      C3DColor4ConvertToNonLinear(v25, v17);
      v18 = v25;
      v19 = a2;
      v20 = 1;
      goto LABEL_9;
    }

    MEMORY[0x28223BE20](IsEnabled);
    memcpy(&v25[-2 * a4], a3, v21);
    if (a4 >= 1)
    {
      v23 = &v25[-2 * a4];
      v24 = a4;
      do
      {
        C3DColor4ConvertToNonLinear(v23, v22);
        v23 += 2;
        --v24;
      }

      while (v24);
    }

    glUniform4fv(a2, a4, &v25[-2 * a4]);
    if (a1)
    {
LABEL_10:
      *(a1 + 260) += a4;
    }
  }
}

void C3DRendererContextSetVector4UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log(a1, location);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform4fv(location, v4, v);
    if (a1)
    {
      *(a1 + 260) += v4;
    }
  }
}

void C3DRendererContextSetVector3UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log(a1, location);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform3fv(location, v4, v);
    if (a1)
    {
      *(a1 + 256) += v4;
    }
  }
}

void C3DRendererContextSetVector2UniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log(a1, location);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform2fv(location, v4, v);
    if (a1)
    {
      *(a1 + 252) += v4;
    }
  }
}

void C3DRendererContextSetIntUniformAtLocation(uint64_t a1, uint64_t location, GLint x)
{
  if (location != -1)
  {
    glUniform1i(location, x);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetInt2UniformAtLocation(uint64_t a1, uint64_t location, GLint *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = scn_default_log(a1, location);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (location != -1)
  {
    glUniform2i(location, *a3, a3[1]);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetInt3UniformAtLocation(uint64_t a1, uint64_t location, GLint *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = scn_default_log(a1, location);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (location != -1)
  {
    glUniform3i(location, *a3, a3[1], a3[2]);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetInt4UniformAtLocation(uint64_t a1, uint64_t location, GLint *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = scn_default_log(a1, location);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (location != -1)
  {
    glUniform4i(location, *a3, a3[1], a3[2], a3[3]);
    if (a1)
    {
      ++*(a1 + 248);
    }
  }
}

void C3DRendererContextSetFloatUniformAtLocation(uint64_t a1, uint64_t location, GLfloat *v, uint64_t count)
{
  v4 = count;
  if (!count)
  {
    v8 = scn_default_log(a1, location);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (location != -1)
  {
    glUniform1fv(location, v4, v);
    if (a1)
    {
      *(a1 + 244) += v4;
    }
  }
}

void C3DRendererContextBindProgramObject(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 176);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 176) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 176) = v5;
  }

  if (cf)
  {
    ProgramID = C3DFXGLSLProgramObjectGetProgramID(cf, cf);
  }

  else
  {
    ProgramID = 0;
  }

  if (*(a1 + 1076) != ProgramID)
  {
    *(a1 + 1076) = ProgramID;
    glUseProgram(ProgramID);
    ++*(a1 + 228);
  }
}

BOOL C3DRendererContextExecuteSlotTextureProxy(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextExecuteSlotTextureProxy_cold_2(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  ImageProxy = C3DEffectSlotGetImageProxy(a4, a2);
  if (ImageProxy)
  {
    TextureSampler = C3DEffectSlotGetTextureSampler(a4, v22);
    if (!TextureSampler)
    {
      TextureSampler = C3DTextureSamplerGetDefault(0, v24);
    }

    C3DRendererContextResetToDefaultStates(v7);
    ImageProxyResident = C3DResourceManagerMakeImageProxyResident(a2, ImageProxy, TextureSampler, v7, a3);
    C3DEffectSlotSetTextureFromImageProxy(a4, ImageProxyResident);
    *(v7 + 1076) = -1;
    *(v7 + 1104) = -1;
    *(v7 + 1112) = -1;
    *(v7 + 1080) = 0;
    *(v7 + 1096) = 0;
  }

  return ImageProxy != 0;
}

uint64_t C3DRendererContextInvalidateCache(uint64_t result)
{
  *(result + 1076) = -1;
  *(result + 1104) = -1;
  *(result + 1112) = -1;
  *(result + 1080) = 0;
  *(result + 1096) = 0;
  return result;
}

void C3DRendererContextSetupResidentMeshSourceAtLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v12 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v12, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (a4 != -1)
  {
    Accessor = C3DMeshSourceGetAccessor(a2, a2, a3, a4, a5, a6, a7, a8);
    v15 = Accessor;
    if (a3)
    {
      v16 = *(a3 + 72);
      if (v16)
      {
        v17 = *v16;
      }

      else
      {
        v17 = 0;
      }

      ValuePtrAtIndex = (v17 + C3DSourceAccessorGetOffset(Accessor, v14));
    }

    else
    {
      ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, 0);
    }

    ComponentsCountPerValue = C3DMeshSourceGetComponentsCountPerValue(a2);
    glEnableVertexAttribArray(a4);
    if (a1)
    {
      ++*(a1 + 216);
    }

    ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v15);
    CompoundType = C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue);
    if (CompoundType == ComponentsValueType)
    {
      ComponentType = C3DBaseTypeGetComponentType(ComponentsValueType, v22);
      CompoundType = C3DBaseTypeGetComponentCount(ComponentsValueType, v24);
      LODWORD(ComponentsCountPerValue) = CompoundType;
      LOWORD(ComponentsValueType) = ComponentType;
    }

    if (ComponentsValueType <= 0xEu)
    {
      if (ComponentsValueType > 3u)
      {
        if (ComponentsValueType != 4)
        {
          if (ComponentsValueType == 6)
          {
            v27 = scn_default_log(CompoundType, v22);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              C3DRendererContextSetupResidentMeshSourceAtLocation_cold_2();
            }

            goto LABEL_43;
          }

          if (ComponentsValueType == 14)
          {
            v25 = 5122;
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        v26 = 0;
        v25 = 5120;
        goto LABEL_44;
      }

      if (ComponentsValueType == 1)
      {
LABEL_43:
        v26 = 0;
        v25 = 5126;
        goto LABEL_44;
      }

      if (ComponentsValueType == 2)
      {
        v26 = 0;
        v25 = 5124;
        goto LABEL_44;
      }
    }

    else
    {
      if (ComponentsValueType <= 0x14u)
      {
        switch(ComponentsValueType)
        {
          case 0xFu:
            v26 = 0;
            v25 = 5131;
            break;
          case 0x10u:
            v26 = 0;
            v25 = 5121;
            break;
          case 0x11u:
            v25 = 5123;
LABEL_40:
            v26 = 1;
            break;
          default:
            goto LABEL_41;
        }

LABEL_44:
        Library = C3DSceneSourceGetLibrary(v15);
        glVertexAttribPointer(a4, ComponentsCountPerValue, v25, v26, Library, ValuePtrAtIndex);
        if (a1)
        {
          ++*(a1 + 212);
        }

        if (*(a1 + 104))
        {
          InstancingDivisor = C3DMeshSourceGetInstancingDivisor(a2, v30);
          glVertexAttribDivisor(a4, InstancingDivisor);
        }

        return;
      }

      switch(ComponentsValueType)
      {
        case 0x15u:
          v25 = 5121;
          goto LABEL_40;
        case 0x16u:
          v25 = 5120;
          goto LABEL_40;
        case 0x17u:
          v25 = 33640;
          v26 = 1;
          LODWORD(ComponentsCountPerValue) = 4;
          goto LABEL_44;
      }
    }

LABEL_41:
    v28 = scn_default_log(CompoundType, v22);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextSetupResidentMeshSourceAtLocation_cold_3();
    }

    goto LABEL_43;
  }
}

CFStringRef __CopyHashCodeFromShaderSources(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CFStringUpdateHash(a1);
  CFStringUpdateHash(a2);
  CC_SHA256_Final(md, &c);
  v4 = 0;
  v5 = __str;
  do
  {
    snprintf(v5, 3uLL, "%02x", md[v4++]);
    v5 += 2;
  }

  while (v4 != 32);
  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], __str, 0x8000100u);
}

void *C3DRendererContextCreateProgramObjectForProgram(_BOOL8 a1, uint64_t a2, CFDictionaryRef *a3, uint64_t a4)
{
  v6 = a1;
  if (!a1 && (v7 = scn_default_log(0, a2), a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v7, a2, v8, v9, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextCreateProgramObjectForProgram_cold_2(v14, a2, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Profile = C3DFXProgramGetProfile(a3, a2);
  if (Profile >= 2)
  {
    if (Profile == 2)
    {
      v30 = scn_default_log(Profile, v22);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateProgramObjectForProgram_cold_3();
      }
    }

    else
    {
      v31 = scn_default_log(Profile, v22);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateProgramObjectForProgram_cold_6();
      }
    }

    return 0;
  }

  ShaderSources = C3DFXGLSLProgramGetShaderSources(a3);
  if (!ShaderSources)
  {
    v33 = scn_default_log(0, v24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateProgramObjectForProgram_cold_5();
    }

    return 0;
  }

  v25 = v24;
  if (!v24)
  {
    v34 = scn_default_log(ShaderSources, 0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateProgramObjectForProgram_cold_4();
    }

    return 0;
  }

  v26 = ShaderSources;
  v27 = __CopyHashCodeFromShaderSources(ShaderSources, v24);
  ValueForKey = C3DKeyValueStoreGetValueForKey(a2, v27);
  if (ValueForKey)
  {
    v29 = ValueForKey;
    C3DFXGLSLProgramObjectAttachWithProgram(ValueForKey);
    __FillProgramObjectLocations(a3, v29);
    CFRelease(v27);
    CFRetain(v29);
    return v29;
  }

  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  if (v6)
  {
    ++*(v6 + 240);
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(a3);
  v38 = OverrideMaterial;
  if (!OverrideMaterial)
  {
    v40 = 0;
    Mutable = 0;
    if (*(v6 + 92) != 1)
    {
      goto LABEL_31;
    }

LABEL_30:
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    goto LABEL_31;
  }

  Callbacks = C3DFXProgramDelegateGetCallbacks(OverrideMaterial, v37);
  v40 = Callbacks;
  if (Callbacks && *(Callbacks + 16))
  {
    goto LABEL_30;
  }

  Mutable = 0;
LABEL_31:
  IsClientProgram = C3DFXProgramIsClientProgram(a3, v37);
  v44 = C3DCreateProgram(v6, v26, v25, IsClientProgram, Mutable);
  if (Mutable)
  {
    if (CFStringGetLength(Mutable) >= 1)
    {
      if (v40)
      {
        v45 = C3DErrorCreate(0, Mutable, &stru_282DCC058);
        v46 = *(v40 + 16);
        UserInfo = C3DFXProgramDelegateGetUserInfo(v38, v47);
        v46(0, v45, UserInfo);
        CFRelease(v45);
      }

      else if (*(v6 + 92) == 1)
      {
        v49 = *(v6 + 96);
        if (!v49)
        {
          v49 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(v6 + 96) = v49;
        }

        CFDictionaryAddValue(v49, a3, Mutable);
      }
    }

    CFRelease(Mutable);
  }

  if (v44 && (v50 = C3DFXGLSLProgramObjectCreateWithProgramID(v44, v43)) != 0)
  {
    v29 = v50;
    __FillProgramObjectLocations(a3, v50);
    glUseProgram(params);
    C3DResourceManagerSetGLSLProgramObjectForSourceHash(a2, v27, v29);
  }

  else
  {
    glUseProgram(params);
    v29 = 0;
  }

  CFRelease(v27);
  return v29;
}

void __FillProgramObjectLocations(CFDictionaryRef *a1, uint64_t a2)
{
  *&v62[17] = *MEMORY[0x277D85DE8];
  ProgramID = C3DFXGLSLProgramObjectGetProgramID(a2, a2);
  Profile = C3DFXProgramGetProfile(a1, v5);
  cf = a1;
  v8 = C3DFXGLSLProgramCopyAttributesNames(a1, v7);
  v9 = v8;
  if (!v8 || !Profile)
  {
    for (i = 0; i != 14; ++i)
    {
      CFStringGetCString(kC3DVertexAttribDefaultNames[i], buffer, 64, 0x600u);
      glBindAttribLocation(ProgramID, i, buffer);
    }

LABEL_9:
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Count = CFArrayGetCount(v8);
  if (Count >= 1)
  {
    v11 = Count;
    for (j = 0; j != v11; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, j);
      AttributeIndex = C3DFXGLSLProgramGetAttributeIndex(a1, ValueAtIndex);
      CFStringGetCString(ValueAtIndex, buffer, 64, 0x600u);
      glBindAttribLocation(ProgramID, AttributeIndex, buffer);
    }

    goto LABEL_9;
  }

LABEL_10:
  CFRelease(v9);
LABEL_11:
  glLinkProgram(ProgramID);
  *params = 0;
  length = 0;
  glGetProgramiv(ProgramID, 0x8B86u, &params[1]);
  glGetProgramiv(ProgramID, 0x8B87u, params);
  v16 = malloc_type_malloc(params[0] + 1, 0xB7660323uLL);
  v17 = *(a2 + 104);
  if (v17)
  {
    CFRelease(v17);
    *(a2 + 104) = 0;
  }

  *(a2 + 104) = CFDictionaryCreateMutable(0, params[1], MEMORY[0x277CBF138], 0);
  Mutable = CFArrayCreateMutable(0, params[1], MEMORY[0x277CBF128]);
  if (params[1] >= 1)
  {
    v19 = 0;
    v20 = v16 - 1;
    do
    {
      glGetActiveUniform(ProgramID, v19, params[0], &length, 0, 0, v16);
      UniformLocation = glGetUniformLocation(ProgramID, v16);
      v22 = length;
      if (length)
      {
        v23 = length;
        if (v20[length] == 93)
        {
          do
          {
            v22 = v23 - 1;
            length = v23 - 1;
            if (v23 < 2)
            {
              break;
            }

            v24 = v20[v23--];
          }

          while (v24 != 91);
        }
      }

      v16[v22] = 0;
      v25 = CFStringCreateWithCString(0, v16, 0x8000100u);
      CFArrayAppendValue(Mutable, v25);
      CFDictionarySetValue(*(a2 + 104), v25, (UniformLocation + 1));
      CFRelease(v25);
      ++v19;
    }

    while (v19 < params[1]);
  }

  free(v16);
  v58 = 0;
  glGetProgramiv(ProgramID, 0x8B89u, &v58);
  glGetProgramiv(ProgramID, 0x8B8Au, params);
  v26 = malloc_type_malloc(params[0] + 1, 0xFAC7A56AuLL);
  v27 = *(a2 + 112);
  if (v27)
  {
    CFRelease(v27);
    *(a2 + 112) = 0;
  }

  *(a2 + 112) = CFDictionaryCreateMutable(0, v58, MEMORY[0x277CBF138], 0);
  if (v58 >= 1)
  {
    for (k = 0; k < v58; ++k)
    {
      glGetActiveAttrib(ProgramID, k, params[0], &length, 0, 0, v26);
      AttribLocation = glGetAttribLocation(ProgramID, v26);
      v26[length] = 0;
      v30 = CFStringCreateWithCString(0, v26, 0x8000100u);
      CFDictionarySetValue(*(a2 + 112), v30, (AttribLocation + 1));
      CFRelease(v30);
    }
  }

  free(v26);
  if (Mutable)
  {
    v31 = CFArrayGetCount(Mutable);
    MaxUniformIndex = _C3DFXGLSLProgramGetMaxUniformIndex(cf, v32);
    v34 = MaxUniformIndex + 1;
    v35 = MaxUniformIndex + v31;
    v36 = 8 * (MaxUniformIndex + v31);
    v37 = malloc_type_malloc(v36 + 8, 0x100004000313F17uLL);
    v38 = v37;
    if ((v35 & 0x8000000000000000) == 0)
    {
      memset(v37, 255, v36 + 8);
    }

    v54 = v38;
    if (v31 >= 1)
    {
      for (m = 0; m != v31; ++m)
      {
        v40 = CFArrayGetValueAtIndex(Mutable, m);
        UniformIndex = C3DFXGLSLProgramGetUniformIndex(cf, v40);
        if (UniformIndex == -1)
        {
          if (v34 > v35)
          {
            v44 = scn_default_log(-1, v42);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              __FillProgramObjectLocations_cold_1(buffer, v62, v44);
            }
          }

          v43 = v34 + 1;
        }

        else
        {
          v43 = v34;
          v34 = UniformIndex;
        }

        v45 = v34;
        v34 = v43;
        v46 = CFStringGetLength(v40);
        v47 = malloc_type_calloc(v46 + 1, 1uLL, 0x37A345EBuLL);
        CFStringGetCString(v40, v47, v46 + 1, 0x600u);
        v49 = C3DFXGLSLProgramObjectGetProgramID(a2, v48);
        v50 = glGetUniformLocation(v49, v47);
        v52 = v50;
        if (v47)
        {
          free(v47);
        }

        if (v45 <= v35)
        {
          v54[v45] = v52;
        }

        else
        {
          v53 = scn_default_log(v50, v51);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            __FillProgramObjectLocations_cold_2(&buf, v57, v53);
          }
        }
      }
    }

    C3DFXGLSLProgramObjectSetUniformsLocations(a2, v54, v34);
    free(v54);
    CFRelease(Mutable);
  }
}

void C3DRendererContextDeleteProgramObject(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DVRAMResourceLockCount(a2) && (C3DVRAMResourceIsAttachment(a2, v12) & 1) == 0)
  {
    v13 = CFGetTypeID(a2);
    if (v13 == C3DFXGLSLProgramObjectGetTypeID(v13, v14))
    {
      ProgramID = C3DFXGLSLProgramObjectGetProgramID(a2, v15);
      if (ProgramID)
      {
        if (a1)
        {
          --*(a1 + 400);
        }

        glDeleteProgram(ProgramID);
      }
    }
  }
}

void C3DRendererContextDeleteBufferObject(_DWORD *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DVRAMResourceLockCount(a2) && (C3DVRAMResourceIsAttachment(a2, v12) & 1) == 0)
  {
    BufferID = C3DBufferObjectGetBufferID(a2, v13);
    buffers = BufferID;
    if (!BufferID)
    {
      v18 = scn_default_log(BufferID, v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Trying to delete an empty or already released VBO", v19, 2u);
      }

      goto LABEL_17;
    }

    Size = C3DBufferObjectGetSize(a2, v15);
    v17 = *(a2 + 64);
    if (v17 == 1)
    {
      if (a1)
      {
        --a1[105];
        a1[111] -= Size;
        goto LABEL_16;
      }
    }

    else if (v17)
    {
      if (a1)
      {
        goto LABEL_16;
      }
    }

    else if (a1)
    {
      --a1[103];
      a1[110] -= Size;
LABEL_16:
      glDeleteBuffers(1, &buffers);
    }

LABEL_17:
    C3DVRAMResourceSetID(a2, 0);
  }
}

void C3DRendererContextApplyTextureSampler(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a2 && (v6 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DRendererContextApplyTextureSampler_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DTextureSamplerSetAnisotropy_cold_1(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a2 + 88);
  WrapModeS = C3DTextureSamplerGetWrapModeS(a3, a2);
  v22 = 33071.0;
  v23 = 33071.0;
  if (v20 == 3553)
  {
    if ((WrapModeS - 1) > 3)
    {
      v23 = 10497.0;
    }

    else
    {
      v23 = flt_21C281480[WrapModeS - 1];
    }
  }

  glTexParameterf(v20, 0x2802u, v23);
  WrapModeT = C3DTextureSamplerGetWrapModeT(a3, v24);
  if (v20 == 3553)
  {
    if ((WrapModeT - 1) > 3)
    {
      v22 = 10497.0;
    }

    else
    {
      v22 = flt_21C281480[WrapModeT - 1];
    }
  }

  glTexParameterf(v20, 0x2803u, v22);
  ComparisonFunc = C3DTextureSamplerGetComparisonFunc(a3, v26);
  if (ComparisonFunc)
  {
    v28 = ComparisonFunc;
    glTexParameteri(v20, 0x884Cu, 34894);
    v29 = gl_ComparisonFunc[v28];
    v30 = v20;
    v31 = 34893;
  }

  else
  {
    v30 = v20;
    v31 = 34892;
    v29 = 0;
  }

  glTexParameteri(v30, v31, v29);
  MinFilter = C3DTextureSamplerGetMinFilter(a3, v32);
  MagFilter = C3DTextureSamplerGetMagFilter(a3, v34);
  v37 = (*(a2 + 80) << 31 >> 31) & C3DTextureSamplerGetMipFilter(a3, v36);
  v38 = 9729.0;
  v39 = 9729.0;
  switch(v37)
  {
    case 2:
      if (MinFilter > 2)
      {
        break;
      }

      v40 = &unk_21C281430;
      goto LABEL_26;
    case 1:
      if (MinFilter >= 3)
      {
        break;
      }

      v40 = &unk_21C281424;
      goto LABEL_26;
    case 0:
      v39 = 9729.0;
      if (MinFilter < 3)
      {
        v40 = flt_21C28143C;
LABEL_26:
        v39 = v40[MinFilter];
      }

      break;
  }

  if (MagFilter <= 2)
  {
    v38 = flt_21C28143C[MagFilter];
  }

  glTexParameterf(v20, 0x2800u, v38);
  glTexParameterf(v20, 0x2801u, v39);
  v41 = *(a3 + 64);
  if (*&C3DRendererContextApplyTextureSampler_largest_supported_anisotropy < 0.0)
  {
    glGetFloatv(0x84FFu, &C3DRendererContextApplyTextureSampler_largest_supported_anisotropy);
    if (v5)
    {
      ++*(v5 + 240);
    }
  }

  v42 = 1.0;
  if (v41 == -1.0)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = v41;
  }

  if (*&C3DRendererContextApplyTextureSampler_largest_supported_anisotropy < v43)
  {
    v43 = *&C3DRendererContextApplyTextureSampler_largest_supported_anisotropy;
  }

  if (v43 >= 1.0)
  {
    v42 = v43;
  }

  glTexParameterf(v20, 0x84FEu, v42);
}

uint64_t C3DGLTextureTypePixelSize(int a1, int a2)
{
  if ((a2 - 5120) > 6)
  {
    result = 2;
    if (((a2 - 33635) > 3 || a2 == 33636) && (a2 - 32819) >= 2)
    {
      return 4;
    }
  }

  else if (((1 << a2) & 0x70) != 0)
  {
    if (a1 != 6407)
    {
      if (a1 == 32993 || a1 == 6408)
      {
        return 16;
      }

      return 0;
    }

    return 12;
  }

  else if (((1 << a2) & 3) != 0)
  {
    if (a1 != 6407)
    {
      if (a1 == 32993 || a1 == 6408)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a1 != 6407)
    {
      if (a1 == 32993 || a1 == 6408)
      {
        return 8;
      }

      return 0;
    }

    return 6;
  }

  return result;
}

uint64_t _C3DRendererContextComputeRenderBufferInternalSize(uint64_t a1, int a2, int a3, int a4)
{
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D50u, &params);
  v7 = params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D51u, &params);
  v8 = params + v7;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D52u, &params);
  v9 = params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D53u, &params);
  v10 = v8 + v9 + params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D54u, &params);
  v11 = params;
  params = 0;
  glGetRenderbufferParameteriv(0x8D41u, 0x8D55u, &params);
  return (v10 + v11 + params) / 8 * (a3 * a2 * a4);
}

uint64_t __C3DRendererContextGetDefaultInvalidTexture(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 64);
  if (!result)
  {
    v5 = xmmword_21C281470;
    v4 = C3DTextureSamplerBilinearNoAnisotropy(0, a2);
    result = _C3DRendererContextCreateTextureWithSize(a1, 4, 4, v4, 6408, 0x80E1u, 0x1401u, &v5);
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t _C3DRendererContextCreateTextureWithSize(_DWORD *a1, GLsizei a2, GLsizei a3, uint64_t a4, uint64_t a5, GLenum a6, GLenum a7, float32x4_t *a8)
{
  *params = 0;
  glGetIntegerv(0x8069u, params);
  glGenTextures(1, &params[1]);
  if (a1)
  {
    ++a1[101];
    glBindTexture(0xDE1u, params[1]);
    ++a1[58];
  }

  else
  {
    glBindTexture(0xDE1u, params[1]);
  }

  if (a5 == 6408 && a8)
  {
    pixels = C3DMalloc((4 * a3 * a2));
    v17 = vrev32_s16(vmovn_s32(vcvtq_s32_f32(vmulq_f32(*a8, vdupq_n_s32(0x437F0000u)))));
    v18 = vext_s8(v17, v17, 6uLL);
    __pattern4 = vuzp1_s8(v18, v18).u32[0];
    memset_pattern4(pixels, &__pattern4, (4 * a3 * a2));
    glTexImage2D(0xDE1u, 0, 6408, a2, a3, 0, 0x80E1u, 0x1401u, 0);
    if (pixels)
    {
      glTexSubImage2D(0xDE1u, 0, 0, 0, a2, a3, 0x80E1u, 0x1401u, pixels);
      if (a1)
      {
        a1[69] += a3 * a2 * C3DGLTextureTypePixelSize(32993, 5121);
      }

      free(pixels);
    }
  }

  else
  {
    glTexImage2D(0xDE1u, 0, a5, a2, a3, 0, a6, a7, 0);
  }

  v21 = C3DTextureCreate(v19, v20);
  C3DTextureSetID(v21, params[1], 3553);
  C3DTextureSetFormat(v21, a5);
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *(v21 + 64) = v22;
  C3DTextureSetServerStorageSize(v21, 0);
  C3DRendererContextApplyTextureSampler(a1, v21, a4);
  glBindTexture(0xDE1u, 0);
  if (a1)
  {
    ++a1[58];
  }

  glBindTexture(0xDE1u, params[0]);
  return v21;
}

void C3DRendererContextBindTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 <= 7)
  {
    DefaultInvalidTexture = a2;
    if (!a1)
    {
      v9 = scn_default_log(0, a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextRenderScene_cold_2(v9, a2, v10, v11, v12, v13, v14, v15);
      }
    }

    TextureUnitOffset = C3DRendererContextGetTextureUnitOffset(a1, a2);
    glActiveTexture(TextureUnitOffset + a5 + 33984);
    if (!DefaultInvalidTexture)
    {
      DefaultInvalidTexture = __C3DRendererContextGetDefaultInvalidTexture(a1, v17);
      if (!DefaultInvalidTexture)
      {
        v18 = scn_default_log(0, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          C3DRendererContextApplyTextureSampler_cold_1(v18, v17, v19, v20, v21, v22, v23, v24);
        }

        DefaultInvalidTexture = 0;
      }
    }

    TargetMode = C3DTextureGetTargetMode(DefaultInvalidTexture, v17);
    ID = C3DTextureGetID(DefaultInvalidTexture, v26);
    glBindTexture(TargetMode, ID);
    if (a1)
    {
      ++*(a1 + 232);
    }

    *(a1 + 4 * a5 + 1040) = TargetMode;
    if (*(a1 + 1072) <= a5)
    {
      *(a1 + 1072) = a5 + 1;
    }

    if (a3)
    {
      v28 = *(DefaultInvalidTexture + 96);
      if (v28 != C3DMeshSourceGetMTLVertexFormat(a3))
      {
        C3DRendererContextApplyTextureSampler(a1, DefaultInvalidTexture, a3);
        *(DefaultInvalidTexture + 96) = C3DMeshSourceGetMTLVertexFormat(a3);
      }
    }
  }
}

void _C3DRendererContextBindTextureGL(uint64_t a1, GLenum target, GLuint texture)
{
  glBindTexture(target, texture);
  if (a1)
  {
    ++*(a1 + 232);
  }
}

void C3DRendererContextDeleteTexture(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DVRAMResourceLockCount(a2) && (C3DVRAMResourceIsAttachment(a2, v12) & 1) == 0)
  {
    textures = C3DVRAMResourceGetID(a2, v13);
    if (textures)
    {
      if (a1)
      {
        *(a1 + 452) -= C3DTextureGetServerStorageSize(a2, v14);
        --*(a1 + 404);
      }

      glDeleteTextures(1, &textures);
      *(a2 + 48) = 0;
    }
  }
}

int32x2_t *C3DRendererContextCreateTextureWithImage(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  textures = 0;
  if (!a2)
  {
    v6 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  params = 0;
  glGetIntegerv(0x8069u, &params);
  ImageType = C3DImageGetImageType(v4, v14);
  v17 = C3DTextureSamplerUseMipmaps(a3, v16);
  TextureSize = C3DImageGetTextureSize(v4, v18);
  if (C3DImageIsCubeMap(v4, v20))
  {
    v21 = 0;
    v17 = 0;
    v22 = 0;
    *(a3 + 36) = 0;
    v23 = 34067;
    goto LABEL_15;
  }

  v23 = C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler(ImageType);
  v25.n64_u64[0] = C3DRendererContextInferTextureSizeForImageAndTextureSampler(v4, a3).n64_u64[0];
  v26 = vbsl_s8(vcgt_f32(v25.n64_u64[0], a1[3]), a1[3], v25.n64_u64[0]);
  v27 = vceq_f32(v26, TextureSize);
  if ((vpmin_u32(v27, v27).u32[0] & 0x80000000) == 0)
  {
    v28 = C3DImageCopyCGImage(v4, v24.n64_i64[0]);
    if (v28)
    {
      v30 = v28;
      v21 = C3DImageCreateWithCGImageAndSize(v28, v29, *&v26);
      v32 = C3DImageNeedsUnpremultiply(v4, v31);
      C3DImageSetNeedsUnpremultiply(v21, v32);
      CFRelease(v30);
      v4 = v21;
      goto LABEL_12;
    }

    v33 = scn_default_log(0, v29);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateTextureWithImage_cold_2();
    }
  }

  v21 = 0;
LABEL_12:
  if (C3DImageHasTextureRawData(v4))
  {
    v22 = 0;
    v23 = 3553;
  }

  else
  {
    v22 = C3DImageCopyBitmap(v4, 1);
    if (!v22)
    {
      v47 = 0;
      goto LABEL_126;
    }
  }

LABEL_15:
  glGenTextures(1, &textures);
  if (!textures)
  {
    v37 = scn_default_log(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextCreateTextureWithImage_cold_3(v37, v38, v39, v40, v41, v42, v43, v44);
      if (a1)
      {
        goto LABEL_18;
      }

LABEL_21:
      glBindTexture(v23, textures);
      goto LABEL_22;
    }
  }

  if (!a1)
  {
    goto LABEL_21;
  }

LABEL_18:
  ++a1[50].i32[1];
  glBindTexture(v23, textures);
  ++a1[29].i32[0];
LABEL_22:
  v47 = C3DTextureCreate(v45, v46);
  v47[8] = TextureSize;
  C3DTextureSetID(v47, textures, v23);
  v47[5] = v4;
  if (!v4)
  {
    v50 = scn_default_log(v48, v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  v169[0] = 0;
  glGetIntegerv(0x8069u, v169);
  v59 = C3DImageGetTextureSize(v4, v58);
  v61.n64_u64[0] = C3DRendererContextInferTextureSizeForImageAndTextureSampler(v4, a3).n64_u64[0];
  v62 = a1[3];
  v63 = vcgt_f32(v61.n64_u64[0], v62);
  v64.i32[0] = vbsl_s8(vdup_lane_s32(v63, 0), v62, v61.n64_u64[0]).u32[0];
  v153 = v64.i32[0];
  v64.i32[1] = v61.n64_i32[1];
  v150 = vbsl_s8(vdup_lane_s32(v63, 1), *&v62, *&v64).i32[1];
  v64.i32[1] = v150;
  v65 = vceq_f32(v64, v59);
  if ((vpmin_u32(v65, v65).u32[0] & 0x80000000) != 0 || (v151 = *&v64, (v66 = C3DImageCopyCGImage(v4, v60.n64_i64[0])) == 0))
  {
    v69 = 0;
  }

  else
  {
    v68 = v66;
    v69 = C3DImageCreateWithCGImageAndSize(v66, v67, v151);
    v71 = C3DImageNeedsUnpremultiply(v4, v70);
    C3DImageSetNeedsUnpremultiply(v69, v71);
    CFRelease(v68);
    v4 = v69;
  }

  if (C3DImageHasTextureRawData(v4))
  {
    v152 = v69;
    TextureRawData = C3DImageGetTextureRawData(v4);
    IsCubeMap = C3DImageIsCubeMap(v4, v73);
    ValueAtIndex = *(TextureRawData + 40);
    if (IsCubeMap)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    }

    Count = CFArrayGetCount(ValueAtIndex);
    v160 = MEMORY[0x277D85DD0];
    v77.n128_u64[0] = 0x40000000;
    v161 = 0x40000000;
    v162 = ___C3DRendererContextFillTextureWithImage_block_invoke;
    v163 = &__block_descriptor_tmp_51;
    v164.i64[0] = Count;
    v164.u64[1] = v59;
    v165 = TextureRawData;
    v166 = a1;
    if (IsCubeMap)
    {
      for (i = 0; i != 6; ++i)
      {
        v79 = CFArrayGetValueAtIndex(*(TextureRawData + 40), i);
        (v162)(&v160, i, v79, (i + 34069));
      }
    }

    else
    {
      ___C3DRendererContextFillTextureWithImage_block_invoke(&v160, 0, *(TextureRawData + 40), v23, v77);
    }

    v98 = 0;
    v99 = Count != 1;
    goto LABEL_122;
  }

  v148 = v21;
  v80 = C3DImageCopyBitmap(v4, 1);
  if (v80)
  {
    v82 = v80;
    IsEnabled = C3DLinearRenderingIsEnabled();
    v147 = v23;
    v146 = v22;
    if ((IsEnabled & 1) != 0 || C3DWideGamutIsUsed(IsEnabled, v84))
    {
      v85 = C3DCreateSRGBBitmapContextWithContext(v82);
      v87 = v85;
      if (v85 != v82 && (_C3DRendererContextFillTextureWithImage_done & 1) == 0)
      {
        _C3DRendererContextFillTextureWithImage_done = 1;
        v88 = scn_default_log(v85, v86);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          C3DRendererContextCreateTextureWithImage_cold_5();
        }
      }

      CGContextRelease(v82);
      v82 = v87;
    }

    Data = CGBitmapContextGetData(v82);
    if (Data)
    {
      v91 = Data;
      v143 = v17;
      v154 = __PAIR64__(v150, v153);
      BytesPerRow = CGBitmapContextGetBytesPerRow(v82);
      BitsPerComponent = CGBitmapContextGetBitsPerComponent(v82);
      v94 = CGBitmapContextGetBitsPerPixel(v82) / BitsPerComponent;
      v149 = BitsPerComponent;
      Width = CGBitmapContextGetWidth(v82);
      v142 = BytesPerRow;
      Height = CGBitmapContextGetHeight(v82);
      if (BytesPerRow == ((BitsPerComponent * v94 * Width) >> 3))
      {
        v95 = v94;
        v96 = 1;
        v97 = v143;
      }

      else
      {
        v95 = v94;
        v103 = ~(BytesPerRow / v94 * v94) + BytesPerRow;
        v97 = v143;
        if (v103 > 7)
        {
          v96 = 1;
        }

        else
        {
          v96 = dword_21C281448[v103];
        }
      }

      glPixelStorei(0xCF5u, v96);
      BitmapInfo = CGBitmapContextGetBitmapInfo(v82);
      v106 = BitmapInfo & 0x1B;
      v107 = v95;
      if (v106 == 1)
      {
        v108 = BitmapInfo & 0x7000;
        v109 = v97;
        v110 = v154;
        if ((BitmapInfo & 0x7000) != 0)
        {
          v111 = Width;
          if (v108 != 12288)
          {
            v106 = v108 == 0x4000;
          }
        }

        else
        {
          v111 = Width;
        }
      }

      else
      {
        v106 = 0;
        v109 = v97;
        v111 = Width;
        v110 = v154;
      }

      v112 = vcvtq_f64_f32(v110);
      v152 = v69;
      if (v107 == 1)
      {
        v98 = 6409;
      }

      else
      {
        v113 = v106 | ((BitmapInfo & 0x100) >> 8);
        if (v107 == 4)
        {
          v98 = 6408;
          if (v113)
          {
            v114 = 6408;
          }

          else
          {
            v114 = 32993;
          }

          v145 = v114;
          if ((BitmapInfo & 0x100) != 0)
          {
            v115 = 5131;
          }

          else
          {
            v115 = 5123;
          }

          if (v149 == 16)
          {
            v116 = v115;
          }

          else
          {
            v116 = 5121;
          }

LABEL_86:
          v156 = vcvtq_u64_f64(v112);
          v141 = v107;
          if (C3DImageNeedsUnpremultiply(v4, v105) && C3DImageHasAlpha(v4, v118))
          {
            v119 = 0;
            v120 = v116;
            v121 = v156;
            if (v116 != 5123 && v145 == 6408)
            {
              v122 = C3DMalloc(Height * v142);
              v119 = v122;
              if (Height)
              {
                v126 = 0;
                v127 = 0;
                v109 = v143;
                do
                {
                  v128 = v126;
                  for (j = v111; j; --j)
                  {
                    v130 = (v91 + v128);
                    v131 = &v122[v128];
                    v132 = v130[3];
                    if (v130[3])
                    {
                      if (v132 == 255)
                      {
                        *v131 = *v130;
                        v131[1] = v130[1];
                        LOBYTE(v133) = v130[2];
                      }

                      else
                      {
                        v134 = 1.0 / v132;
                        LOBYTE(v123) = *v130;
                        v135 = v134 * LODWORD(v123);
                        LOBYTE(v124) = v130[1];
                        v124 = v134 * LODWORD(v124);
                        LOBYTE(v125) = v130[2];
                        v136 = v134 * v125;
                        if (v135 > 1.0)
                        {
                          v135 = 1.0;
                        }

                        if (v124 > 1.0)
                        {
                          v124 = 1.0;
                        }

                        v125 = 1132396544;
                        if (v136 > 1.0)
                        {
                          v136 = 1.0;
                        }

                        *v131 = (v135 * 255.0);
                        v123 = v124 * 255.0;
                        v131[1] = (v124 * 255.0);
                        v133 = (v136 * 255.0);
                      }

                      v131[2] = v133;
                      v131[3] = v130[3];
                    }

                    else
                    {
                      *v131 = 0;
                    }

                    v128 += 4;
                  }

                  ++v127;
                  v126 += v142;
                }

                while (v127 != Height);
              }

              else
              {
                v109 = v143;
              }

              v120 = v116;
              v121 = v156;
            }

            if (v119)
            {
              v91 = v119;
            }
          }

          else
          {
            v119 = 0;
            v120 = v116;
            v121 = v156;
          }

          v160 = MEMORY[0x277D85DD0];
          v161 = 0x40000000;
          v162 = ___C3DRendererContextFillTextureWithImage_block_invoke_52;
          v163 = &__block_descriptor_tmp_54_0;
          v164 = v121;
          v166 = __PAIR64__(v145, v98);
          v167 = v120;
          v168 = v109;
          v165 = a1;
          if (C3DImageIsCubeMap(v4, v118))
          {
            v138 = C3DImageGetImageType(v4, v137);
            v159[0] = MEMORY[0x277D85DD0];
            v159[1] = 0x40000000;
            v159[2] = ___C3DRendererContextFillTextureWithImage_block_invoke_2;
            v159[3] = &unk_2782FD068;
            v159[4] = &v160;
            C3DImageEnumerateCubeMapFacePixelBuffers(v138, v156.i64[0], v142, v156.i64[0] * ((v141 * v149) >> 3), (v141 * v149) >> 3, v91, v159);
          }

          else
          {
            (v162)(&v160, v147, v91);
          }

          v22 = v146;
          if (v82)
          {
            CFRelease(v82);
          }

          v23 = v147;
          if (v119)
          {
            free(v119);
          }

          v99 = 1;
          v21 = v148;
LABEL_122:
          C3DTextureSetFormat(v47, v98);
          v69 = v152;
          if (!v152)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        }

        if (v113)
        {
          v98 = 6407;
        }

        else
        {
          v155 = v112;
          v117 = scn_default_log(BitmapInfo, v105);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            C3DRendererContextCreateTextureWithImage_cold_6();
          }

          v98 = 6407;
          v112 = v155;
        }
      }

      if (v149 == 16)
      {
        v116 = 5123;
      }

      else
      {
        v116 = 5121;
      }

      v145 = v98;
      goto LABEL_86;
    }

    v102 = scn_default_log(0, v90);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateTextureWithImage_cold_7();
    }

    if (v82)
    {
      CFRelease(v82);
    }
  }

  else
  {
    v100 = scn_default_log(0, v81);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateTextureWithImage_cold_8(v4, v100);
    }
  }

  v99 = 1;
  v21 = v148;
  if (v69)
  {
LABEL_123:
    C3DImageReleaseBitmapCache(v69, v101);
    CFRelease(v69);
  }

LABEL_124:
  glBindTexture(0xDE1u, v169[0]);
  v47[10].i8[0] = v47[10].i8[0] & 0xFE | v99;
  C3DTextureSetServerStorageSize(v47, 0);
  glBindTexture(v23, 0);
  if (a1)
  {
    ++a1[29].i32[0];
  }

LABEL_126:
  if (v21)
  {
    C3DImageReleaseBitmapCache(v21, v34);
    CFRelease(v21);
  }

  glBindTexture(0xDE1u, params);
  if (v22)
  {
    CFRelease(v22);
  }

  return v47;
}

uint64_t C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler(unsigned int a1)
{
  v1 = C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(a1);
  if (v1 != 2)
  {
    if (v1 == 4)
    {
      return 34067;
    }

    v4 = scn_default_log(v1, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_DEFAULT, "Warning: C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler: called with kC3DTextureUntype type should be resolved before calling it, using GL_TEXTURE_2D as fallback", v5, 2u);
    }
  }

  return 3553;
}

__n64 C3DRendererContextInferTextureSizeForImageAndTextureSampler(uint64_t a1, uint64_t a2)
{
  TextureSize = C3DImageGetTextureSize(a1, a2);
  ImageType = C3DImageGetImageType(a1, v4);
  if (C3DRendererContextInferTextureTargetForImageTypeAndTextureSampler(ImageType) == 3553 && ((WrapModeS = C3DTextureSamplerGetWrapModeS(a2, v6), WrapModeT = C3DTextureSamplerGetWrapModeT(a2, v8), C3DTextureSamplerGetMipFilter(a2, v10)) || (WrapModeS & 0xFFFFFFFD) != 1 || (WrapModeT & 0xFFFFFFFD) != 1))
  {
    result.n64_u64[0] = TextureSize;
    if ((*TextureSize.i32 & (*TextureSize.i32 - 1)) != 0)
    {
      v12 = 1;
      do
      {
        v13 = v12;
        v12 *= 2;
      }

      while (v13 < *TextureSize.i32);
      result.n64_f32[0] = v13;
    }

    if ((*&TextureSize.i32[1] & (*&TextureSize.i32[1] - 1)) != 0)
    {
      v14 = 1;
      do
      {
        v15 = v14;
        v14 *= 2;
      }

      while (v15 < *&TextureSize.i32[1]);
      result.n64_f32[1] = v15;
    }
  }

  else
  {
    return TextureSize;
  }

  return result;
}

uint64_t C3DCreateTextureFromIOSurface(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, double a5)
{
  textures = 0;
  glGenTextures(1, &textures);
  glBindTexture(0xDE1u, textures);
  if (a1)
  {
    ++*(a1 + 232);
  }

  glTexParameteri(0xDE1u, 0x2801u, 9729);
  glTexParameteri(0xDE1u, 0x2800u, 9729);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  GLContext = C3DRendererContextGetGLContext(a1, v10);
  v12 = C3DIOSurfaceToTexImage(a2, GLContext, 0xDE1u, a3, a5);
  v14 = C3DTextureCreate(v12, v13);
  C3DTextureSetID(v14, textures, 3553);
  *(v14 + 64) = a5;
  *(v14 + 80) &= ~1u;
  *(v14 + 104) = CFRetain(a2);
  C3DTextureSetFormat(v14, a3);
  C3DTextureSetServerStorageSize(v14, 0);
  C3DRendererContextApplyTextureSampler(a1, v14, a4);
  glBindTexture(0xDE1u, 0);
  if (a1)
  {
    ++*(a1 + 232);
  }

  return v14;
}

double *C3DRendererContextCreateRenderTargetWithDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = BYTE1(a2);
  SampleCount = C3DFramebufferGetSampleCount(a3, a2);
  if (BYTE1(a2) != SampleCount)
  {
    v16 = scn_default_log(SampleCount, v15);
    SampleCount = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (SampleCount)
    {
      C3DRendererContextCreateRenderTargetWithDescription_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = C3DRenderTargetCreate(SampleCount);
  Size = C3DFramebufferGetSize(a3, v25);
  C3DRenderTargetSetDescription(v24, a2);
  v28 = Size;
  v24[5] = Size;
  if ((a2 & 0x1000000) != 0)
  {
    if (!a1)
    {
      v29 = scn_default_log(v26, v27);
      v26 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
      v28 = Size;
      if (v26)
      {
        C3DEngineContextRenderScene_cold_2(v29, v27, v30, v31, v32, v33, v34, v35);
        v28 = Size;
      }
    }

    if (*&v28 == 0.0 || (v36 = *(&v28 + 1), *(&v28 + 1) == 0.0))
    {
      v44 = scn_default_log(v26, v27);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateRenderTargetWithDescription_cold_4();
      }

      goto LABEL_25;
    }

    v37 = C3DTextureSamplerNearest(v26, v27);
    v38 = (a1 + 12 * a2);
    v39 = v38[295];
    if ((a2 & 0x8000000) != 0)
    {
      v45 = SCNIOSurfaceCreateWithSize(Size);
      TextureWithSize = C3DCreateTextureFromIOSurface(a1, v45, v39, v37, Size);
      CFRelease(v45);
      if (!TextureWithSize)
      {
LABEL_25:
        CFRelease(v24);
        return 0;
      }
    }

    else
    {
      TextureWithSize = _C3DRendererContextCreateTextureWithSize(a1, *&Size, v36, v37, v39, v38[296], v38[297], 0);
      if (!TextureWithSize)
      {
        goto LABEL_25;
      }
    }

    C3DRenderTargetSetTexture(v24, TextureWithSize);
    *(v24 + 8) = C3DTextureGetServerStorageSize(TextureWithSize, v46);
    CFRelease(TextureWithSize);
    return v24;
  }

  if (*&Size == 0.0 || *(&Size + 1) == 0.0)
  {
    v41 = scn_default_log(v26, v27);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextCreateRenderTargetWithDescription_cold_5();
    }

    v42 = 0;
    v43 = 0;
  }

  else
  {
    renderbuffers = 0;
    glGenRenderbuffers(1, &renderbuffers);
    if (a1)
    {
      ++*(a1 + 416);
      params = 0;
      glGetIntegerv(0x8CA7u, &params);
      ++*(a1 + 240);
    }

    else
    {
      params = 0;
      glGetIntegerv(0x8CA7u, &params);
    }

    glBindRenderbuffer(0x8D41u, renderbuffers);
    if (a2 == 41 || a2 == 44 || (v47 = *(a3 + 136)) == 0)
    {
      v51 = a1 + 4 * a2;
      v49 = *&Size;
      v50 = *(&Size + 1);
      if (v13 < 2)
      {
        glRenderbufferStorage(0x8D41u, *(v51 + 1732), *&Size, *(&Size + 1));
      }

      else
      {
        v48 = (*(a1 + 1984))(36161, v13, *(v51 + 1732), *&Size, *(&Size + 1));
      }
    }

    else
    {
      v48 = (*(v47 + 16))();
      v49 = *&Size;
      v50 = *(&Size + 1);
    }

    v42 = _C3DRendererContextComputeRenderBufferInternalSize(v48, v49, v50, v13);
    glBindRenderbuffer(0x8D41u, params);
    v43 = renderbuffers;
  }

  C3DRenderTargetSetRenderBuffer(v24, v43);
  *(v24 + 8) = v42;
  if (a1)
  {
    *(a1 + 436) += v42;
  }

  return v24;
}

BOOL C3DRendererContextSetupFramebuffer(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  context[2] = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextRenderScene_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextSetupFramebuffer_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  FBO = C3DFramebufferGetFBO(a2, a2);
  v20 = FBO;
  if (FBO)
  {
    v21 = scn_default_log(FBO, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextSetupFramebuffer_cold_3();
    }
  }

  else
  {
    framebuffers = 0;
    glGenFramebuffers(1, &framebuffers);
    if (v3)
    {
      ++*(v3 + 408);
    }

    C3DFramebufferSetFBO(a2, framebuffers);
    C3DRendererContextBindFramebuffer(v3, a2);
    RenderTargetDescriptions = C3DFramebufferGetRenderTargetDescriptions(a2, v22);
    if (RenderTargetDescriptions && (v24 = RenderTargetDescriptions, CFDictionaryGetCount(RenderTargetDescriptions) >= 1))
    {
      context[0] = v3;
      context[1] = a2;
      CFDictionaryApplyFunction(v24, _attachRenderTargetDescription, context);
    }

    else
    {
      RenderTarget = C3DFramebufferGetRenderTarget(a2, 0);
      if (RenderTarget)
      {
        C3DRenderContextAttachRenderTargetToFramebuffer(v3, RenderTarget, 0);
      }

      v27 = C3DFramebufferGetRenderTarget(a2, 4);
      if (v27)
      {
        C3DRenderContextAttachRenderTargetToFramebuffer(v3, v27, 4);
      }

      v28 = C3DFramebufferGetRenderTarget(a2, 5);
      if (v28)
      {
        C3DRenderContextAttachRenderTargetToFramebuffer(v3, v28, 5);
      }
    }

    C3DRendererContextUnbindFramebuffer(v3, v25);
  }

  return v20 == 0;
}

void C3DRendererContextBindFramebuffer(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetupFramebuffer_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 72);
  if (!v11)
  {
    v11 = C3DStackCreate(8u, kCFTypeStackCallBacks, 8uLL);
    *(a1 + 72) = v11;
  }

  if (!C3DStackGetCount(v11, a2))
  {
    params = 0;
    glGetIntegerv(0x8CA6u, &params);
    ++*(a1 + 240);
    *(a1 + 80) = params;
  }

  C3DStackPush(*(a1 + 72), v12);
  C3DStackSetValue(*(a1 + 72), a2);
  _C3DRendererContextBindFramebuffer(a1, a2);
}

void _attachRenderTargetDescription(char a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  C3DSceneSourcePerformConsistencyCheck();
  RenderTargetWithDescription = C3DRendererContextCreateRenderTargetWithDescription(v4, v6, v5);
  v8 = a1;
  C3DRenderContextAttachRenderTargetToFramebuffer(v4, RenderTargetWithDescription, v8);
  C3DFramebufferAddRenderTarget(v5, RenderTargetWithDescription, v8);

  CFRelease(RenderTargetWithDescription);
}

uint64_t C3DRenderContextAttachRenderTargetToFramebuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a1 + 1920))(a3);
  if (*(a2 + 19))
  {
    Texture = C3DRenderTargetGetTexture(a2, v5);
    ID = C3DTextureGetID(Texture, v9);
    TargetMode = C3DTextureGetTargetMode(Texture, v11);
    glFramebufferTexture2D(0x8D40u, v6, TargetMode, ID, 0);
  }

  else
  {
    RenderBuffer = C3DRenderTargetGetRenderBuffer(a2, v5);
    glFramebufferRenderbuffer(0x8D40u, v6, 0x8D41u, RenderBuffer);
  }

  result = C3DAnimationGetKeyPath(a2);
  *(a1 + 432) += result;
  return result;
}

void C3DRendererContextUnbindFramebuffer(uint64_t a1, uint64_t a2)
{
  Value = C3DStackGetValue(*(a1 + 72), a2);
  if (Value)
  {
    v5 = Value;
    if ((*(Value + 128) & 1) == 0)
    {
      v6 = scn_default_log(Value, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        C3DRendererContextUnbindFramebuffer_cold_1(v6, v4, v7, v8, v9, v10, v11, v12);
      }
    }

    *(v5 + 128) &= ~1u;
  }

  else
  {
    v13 = scn_default_log(0, v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextUnbindFramebuffer_cold_2();
    }
  }

  C3DStackPop(*(a1 + 72), v4);
  if (C3DStackGetCount(*(a1 + 72), v14))
  {
    v16 = C3DStackGetValue(*(a1 + 72), v15);
    if (v16)
    {
      _C3DRendererContextBindFramebuffer(a1, v16);
      return;
    }
  }

  else
  {
    LODWORD(v16) = *(a1 + 80);
  }

  glBindFramebuffer(0x8D40u, v16);
  ++*(a1 + 204);
}

void _C3DRendererContextBindFramebuffer(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetupFramebuffer_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  FBO = C3DFramebufferGetFBO(a2, a2);
  *(a2 + 128) |= 1u;
  glBindFramebuffer(0x8D40u, FBO);
  if (a1)
  {
    ++*(a1 + 204);
  }
}

void C3DRendererContextRestoreFramebuffer(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      Value = C3DStackGetValue(v3, a2);
      if (Value)
      {

        _C3DRendererContextBindFramebuffer(a1, Value);
      }
    }
  }
}

uint64_t C3DRendererContextGetBoundFramebuffer(uint64_t a1, uint64_t a2)
{
  if (a1 && (v2 = *(a1 + 72)) != 0)
  {
    return C3DStackGetValue(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DRendererContextResolveFramebuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, __int128 *a6)
{
  FBO = C3DFramebufferGetFBO(a3, a2);
  glBindFramebuffer(0x8CA8u, FBO);
  v13 = C3DFramebufferGetFBO(a2, v12);
  glBindFramebuffer(0x8CA9u, v13);
  if (a1)
  {
    ++*(a1 + 204);
  }

  Size = C3DFramebufferGetSize(a2, v14);
  if (a6)
  {
    v16 = *a6;
  }

  else
  {
    *&v16 = 0;
    *(&v16 + 1) = Size;
  }

  if (a4)
  {
    v17 = 0x4000;
  }

  else
  {
    v17 = 0;
  }

  if (a5)
  {
    v17 |= 0x100u;
  }

  return (*(a1 + 1952))(*&v16, *(&v16 + 1), *(&v16 + 2), *(&v16 + 3), *&v16, *(&v16 + 1), *(&v16 + 2), *(&v16 + 3), v17 | 0x260000000000, a1);
}

void _C3DRendererContextDeleteRenderBuffer(uint64_t a1, uint64_t a2)
{
  renderbuffers = a2;
  if (a1)
  {
    --*(a1 + 416);
  }

  else
  {
    v2 = scn_default_log(0, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  glDeleteRenderbuffers(1, &renderbuffers);
}

void C3DRendererContextDeleteRenderTarget(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 19))
  {
    Texture = C3DRenderTargetGetTexture(a2, a2);
    C3DRendererContextDeleteTexture(a1, Texture);
    if (!a1)
    {
      return;
    }

    v5 = 452;
  }

  else
  {
    RenderBuffer = C3DRenderTargetGetRenderBuffer(a2, a2);
    _C3DRendererContextDeleteRenderBuffer(a1, RenderBuffer);
    if (!a1)
    {
      return;
    }

    v5 = 436;
  }

  *(a1 + v5) -= C3DAnimationGetKeyPath(a2);
  *(a1 + 432) -= C3DAnimationGetKeyPath(a2);
}

void C3DRendererContextDeleteFramebuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 0x40000000;
    context[2] = __C3DRendererContextDeleteFramebuffer_block_invoke;
    context[3] = &__block_descriptor_tmp_20_1;
    context[4] = a1;
    C3DFramebufferApplyToRenderTargets(a2, context);
  }

  framebuffers = C3DFramebufferGetFBO(a2, a2);
  if (framebuffers)
  {
    if (a1)
    {
      --*(a1 + 408);
    }

    glDeleteFramebuffers(1, &framebuffers);
  }

  C3DFramebufferCleanup(a2, v5);
}

void C3DRendererContextSetRasterizerStates(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = C3DRasterizerStatesDefault();
  }

  if (*(a1 + 1096) != v2)
  {
    v44 = 0;
    *flag = 0;
    v47 = 0;
    v46 = 0;
    C3DRasterizerStatesGetDesc(v2, a2, &v44);
    v5 = *(a1 + 1096);
    if (v5)
    {
      v40 = 0;
      v41 = 0;
      v43 = 0;
      v42 = 0;
      C3DRasterizerStatesGetDesc(v5, v4, &v40);
      if (v40 == v44)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (v41 == flag[0])
      {
        v9 = v40 != v44;
      }

      else
      {
        v9 = v8;
      }

      if (flag[0] == 1 && BYTE2(v41) != flag[2] || (v41 & 1) == 0)
      {
        v9 |= 4u;
      }

      if (flag[0] && BYTE1(v41) != flag[1] || (v41 & 1) == 0)
      {
        v9 |= 8u;
      }

      if ((flag[3] & 1) != 0 || BYTE3(v41) == 1)
      {
        LOBYTE(v9) = v9 | 0x10;
      }

      else if (!v9)
      {
        v10 = scn_default_log(v6, v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          C3DRendererContextSetRasterizerStates_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
        }

        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = -1;
    }

    v18 = flag[0];
    v19 = flag[1];
    v20 = flag[2];
    v21 = flag[3];
    v22 = flag[4];
    v23 = flag[5];
    v39 = flag[7];
    v24 = v46;
    v38 = BYTE1(v46);
    v37 = BYTE2(v46);
    v36 = BYTE3(v46);
    v29 = BYTE4(v46);
    v31 = BYTE5(v46);
    v34 = BYTE6(v46);
    mask = flag[6];
    v33 = v47;
    v32 = BYTE1(v47);
    v30 = BYTE2(v47);
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }

    if (v44 == 2)
    {
      glDisable(0xB44u);
    }

    else
    {
      if (v44 == 1)
      {
        glEnable(0xB44u);
        v25 = 1028;
      }

      else
      {
        if (v44)
        {
          goto LABEL_40;
        }

        glEnable(0xB44u);
        v25 = 1029;
      }

      glCullFace(v25);
    }

LABEL_40:
    ++*(a1 + 236);
    if ((v9 & 2) == 0)
    {
LABEL_29:
      if ((v9 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_45;
    }

LABEL_41:
    if (v18)
    {
      glEnable(0xB71u);
    }

    else
    {
      glDisable(0xB71u);
    }

    ++*(a1 + 236);
    if ((v9 & 4) == 0)
    {
LABEL_30:
      if ((v9 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_46;
    }

LABEL_45:
    glDepthFunc(gl_ComparisonFunc[v20]);
    ++*(a1 + 236);
    if ((v9 & 8) == 0)
    {
LABEL_31:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

LABEL_46:
    glDepthMask(v19);
    ++*(a1 + 236);
    if ((v9 & 0x10) == 0)
    {
LABEL_54:
      *(a1 + 1096) = v2;
      return;
    }

LABEL_47:
    if (v21)
    {
      glEnable(0xB90u);
      v26 = gl_ComparisonFunc[v23];
      if (v22)
      {
        glStencilFuncSeparate(0x404u, v26, v24, mask);
        glStencilOpSeparate(0x404u, gl_StencilOp[v36], gl_StencilOp[v37], gl_StencilOp[v38]);
        glStencilMaskSeparate(0x404u, v39);
        glStencilFuncSeparate(0x405u, gl_ComparisonFunc[v29], v24, v31);
        glStencilOpSeparate(0x405u, gl_StencilOp[v30], gl_StencilOp[v32], gl_StencilOp[v33]);
        v27 = 1029;
        v28 = v34;
      }

      else
      {
        glStencilFuncSeparate(0x408u, v26, v24, mask);
        glStencilOpSeparate(0x408u, gl_StencilOp[v36], gl_StencilOp[v37], gl_StencilOp[v38]);
        v27 = 1032;
        v28 = v39;
      }

      glStencilMaskSeparate(v27, v28);
    }

    else
    {
      glDisable(0xB90u);
    }

    ++*(a1 + 236);
    goto LABEL_54;
  }
}

void C3DRendererContextRenderResidentMeshElement(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  __drawCall(a1, a2);
}

void __drawCall(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1124);
  v3 = *(a1 + 1144);
  v4 = vadd_s32(*(a1 + 188), (v3 | 0x100000000));
  *(a1 + 188) = v4;
  v5 = *(a1 + 1128);
  v6 = *(a1 + 184) + v5;
  *(a1 + 184) = v6;
  v7 = *(a1 + 1120);
  if (v7 > 0)
  {
    switch(v7)
    {
      case 1:
        v8 = *(a1 + 1132);
        v9 = *(a1 + 1136);

        glDrawElements(v2, v5, v8, v9);
        return;
      case 2:
        v11 = *(a1 + 1148) - 1;
        *(a1 + 184) = v6 + v5 * v11;
        *(a1 + 188) = v4.i32[0] + v11 * v3;
        __assert_rtn("__drawCall", "C3DRendererContextGL.c", 3465, "0");
      case 3:
        __drawCall_cold_1();
    }

    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    v10 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __drawCall_cold_2();
    }

    return;
  }

  glDrawArrays(v2, 0, v5);
}

double C3DRendererContextGetViewport()
{
  v1 = 0uLL;
  glGetFloatv(0xBA2u, &v1);
  return *&v1;
}

void C3DRendererContextSetLight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = a1;
  if (!*(a1 + 176))
  {
    v10 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DRendererContextSetLight_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  if (a2 >= 8)
  {
    v17 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetLight_cold_2(a2, v17);
    }
  }

  v18 = *(v9 + 176);
  v19 = 16 * a2;
  UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v18, 16 * a2 + 18);
  if (UniformLocation != -1)
  {
    C3DLightGetColorModulatedByIntensity(a3, v21, v22, v23, v24, v25, v26, v27);
    *&v58[0] = v28;
    *(&v58[0] + 1) = v29;
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(v58, v30);
    }

    glUniform4fv(UniformLocation, 1, v58);
  }

  v31 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 19);
  if (v31 != -1)
  {
    glUniform4f(v31, COERCE_GLFLOAT(*(a4 + 16)), COERCE_GLFLOAT(HIDWORD(*(a4 + 16))), COERCE_GLFLOAT(*(a4 + 24)), 0.0);
  }

  v32 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 20);
  if (v32 != -1)
  {
    glUniform4f(v32, COERCE_GLFLOAT(*(a4 + 32)), COERCE_GLFLOAT(HIDWORD(*(a4 + 32))), COERCE_GLFLOAT(*(a4 + 40)), 0.0);
  }

  v33 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 23);
  if (v33 != -1)
  {
    glUniform4f(v33, COERCE_GLFLOAT(*(a4 + 80)), COERCE_GLFLOAT(HIDWORD(*(a4 + 80))), COERCE_GLFLOAT(*(a4 + 88)), 0.0);
  }

  v34 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 24);
  if (v34 != -1)
  {
    glUniform4f(v34, COERCE_GLFLOAT(*(a4 + 96)), COERCE_GLFLOAT(HIDWORD(*(a4 + 96))), COERCE_GLFLOAT(*(a4 + 104)), 0.0);
  }

  if (*(a4 + 408) && *(a4 + 400))
  {
    if (a3 && *(a3 + 168) == 1 && (*(a3 + 169) & 1) == 0)
    {
      v35 = v19 + 30;
      v36 = v19 + 31;
      v37 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 32);
      if (v37 == -1)
      {
LABEL_34:
        v42 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v35);
        v45 = v42;
        if (v42 != -1)
        {
          if (*a5 >= 8)
          {
            v46 = scn_default_log(v42, v43);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              C3DRendererContextSetLight_cold_3(v46, v47, v48, v44, v49, v50, v51, v52);
            }
          }

          C3DRendererContextBindTexture(v9, *(a4 + 400), *(a4 + 408), v44, *a5);
          glUniform1i(v45, *a5);
          C3DFXGLSLProgramObjectSetUniformValueAtIndex(v18, v35, *a5);
          ++*a5;
        }

        v53 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v36);
        if (v53 != -1)
        {
          v54 = *(a4 + 144);
          v58[0] = *(a4 + 128);
          v58[1] = v54;
          v55 = *(a4 + 176);
          v58[2] = *(a4 + 160);
          v58[3] = v55;
          glUniformMatrix4fv(v53, 1, 0, v58);
          ++*(v9 + 264);
        }

        v56 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 33);
        if (v56 != -1)
        {
          v58[0] = *(a3 + 112);
          if (C3DLinearRenderingIsEnabled())
          {
            C3DColor4ConvertToNonLinear(v58, v57);
          }

          glUniform4fv(v56, 1, v58);
        }

        return;
      }

      RealShadowMapSize = C3DLightGetRealShadowMapSize(a3, v40);
      if (*RealShadowMapSize.i32 <= *&RealShadowMapSize.i32[1])
      {
        RealShadowMapSize.i32[0] = RealShadowMapSize.i32[1];
      }

      if (*RealShadowMapSize.i32 < 1.0)
      {
        *RealShadowMapSize.i32 = 1.0;
      }

      *v58 = *(a3 + 140) / *RealShadowMapSize.i32;
      v39 = v58;
    }

    else
    {
      v35 = v19 + 25;
      v36 = v19 + 26;
      v37 = C3DFXGLSLProgramObjectGetUniformLocation(v18, v19 + 27);
      if (v37 == -1)
      {
        goto LABEL_34;
      }

      Gobo = C3DLightGetGobo(a3, 0);
      if (!Gobo)
      {
        goto LABEL_34;
      }

      v39 = (Gobo + 72);
    }

    glUniform1fv(v37, 1, v39);
    ++*(v9 + 244);
    goto LABEL_34;
  }
}

void C3DRendererContextBindCommonProfile(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, GLfloat a7)
{
  v50[0] = a3;
  v50[1] = a4;
  v51 = 0;
  v53 = a2;
  v52 = a7;
  __SetupCommonProfileEffectProperty(a1, 7, v50);
  __SetupCommonProfileEffectProperty(a1, 2, v50);
  if (C3DEffectCommonProfileIsUsingSelfIllumination(a3))
  {
    v13 = 9;
  }

  else
  {
    v13 = 0;
  }

  __SetupCommonProfileEffectProperty(a1, v13, v50);
  __SetupCommonProfileEffectProperty(a1, 6, v50);
  if (!__SetupCommonProfileEffectProperty(a1, 8, v50))
  {
    __SetupCommonProfileEffectProperty(a1, 1, v50);
  }

  __SetupCommonProfileEffectProperty(a1, 3, v50);
  __SetupCommonProfileEffectProperty(a1, 16, v50);
  v14 = __SetupCommonProfileEffectProperty(a1, 19, v50);
  if (*(a3 + 24) == 5)
  {
    v16 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DRendererContextBindCommonProfile_cold_1();
    }

    *(a3 + 24) = 2;
  }

  if (a1[11].i8[1] == 1)
  {
    __SetupCommonProfileEffectProperty(a1, 4, v50);
  }

  TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(a3, v15);
  FloatProperty = C3DEffectCommonProfileGetFloatProperty(a3, 18);
  *(a4 + 260) = TransparencyMode;
  v20 = __SetupCommonProfileEffectProperty(a1, 5, v50);
  if (a7 >= 1.0)
  {
    IsOpaque = C3DEffectCommonProfileIsOpaque(a3, v19);
    if (IsOpaque)
    {
      if (a5)
      {
        v30 = C3DBlendStatesDefaultReplace(IsOpaque, v29);
        C3DRendererContextSetBlendStates(a1, v30);
        *(a4 + 260) = -1;
        goto LABEL_32;
      }
    }
  }

  v21 = a1[22];
  UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v21, 168);
  if (UniformLocation != -1)
  {
    v23 = FloatProperty * a7;
    if (TransparencyMode == 1)
    {
      v23 = FloatProperty;
    }

    glUniform1f(UniformLocation, v23);
  }

  v24 = C3DFXGLSLProgramObjectGetUniformLocation(v21, 9);
  if (v24 != -1)
  {
    glUniform1f(v24, a7);
  }

  IsOpaqueForEffectProperty = C3DEffectCommonProfileContainsContentForEffectProperty(a3, 2);
  if (IsOpaqueForEffectProperty)
  {
    IsOpaqueForEffectProperty = C3DEffectCommonProfileContentIsOpaqueForEffectProperty(a3, 2);
    v27 = IsOpaqueForEffectProperty ^ 1;
  }

  else
  {
    v27 = 0;
  }

  v33 = v20 | v27 | a5 ^ 1;
  if (TransparencyMode != 1)
  {
    if ((v33 & 1) == 0)
    {
      ConstantAlpha = C3DEffectCommonProfileGetConstantAlpha(a3);
      glBlendColor(0.0, 0.0, 0.0, ConstantAlpha * a7);
      v45 = C3DBlendStatesDefaultConstantAlpha(v47, v48);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v33)
  {
LABEL_29:
    v45 = C3DBlendStatesDefaultOver(IsOpaqueForEffectProperty, v26);
    goto LABEL_31;
  }

  v34 = a7;
  Color = C3DEffectCommonProfileGetColor(a3, 5);
  v36 = Color[1];
  v37 = Color[2];
  v38 = v36 * 0.71516 + *Color * 0.212671 + v37 * 0.072169;
  v39 = (1.0 - (FloatProperty * *Color)) * v34;
  v40 = (1.0 - (FloatProperty * v36)) * v34;
  v41 = (1.0 - (FloatProperty * v37)) * v34;
  v42 = (1.0 - (FloatProperty * v38)) * v34;
  glBlendColor(v39, v40, v41, v42);
  v45 = C3DBlendStatesDefaultConstantColor(v43, v44);
LABEL_31:
  C3DRendererContextSetBlendStates(a1, v45);
LABEL_32:
  if (a6 > 3)
  {
    switch(a6)
    {
      case 4:
        v49 = C3DBlendStatesDefaultScreen(v31, v32);
        break;
      case 5:
        v49 = C3DBlendStatesDefaultReplace(v31, v32);
        break;
      case 6:
        v49 = C3DBlendStatesDefaultMax(v31, v32);
        break;
      default:
        return;
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v49 = C3DBlendStatesDefaultAdditive(v31, v32);
        break;
      case 2:
        v49 = C3DBlendStatesDefaultSubtract(v31, v32);
        break;
      case 3:
        v49 = C3DBlendStatesDefaultMultiplicative(v31, v32);
        break;
      default:
        return;
    }
  }

  C3DRendererContextSetBlendStates(a1, v49);
}

BOOL __SetupCommonProfileEffectProperty(float32x2_t *a1, uint64_t a2, uint64_t *a3)
{
  if (!*&a1[22])
  {
    v6 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetLight_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[22];
  v15 = *a3;
  v16 = a3[1];
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(*a3, a2, 0);
  if (EffectSlot)
  {
    v19 = EffectSlot;
    Texture = C3DEffectSlotGetTexture(EffectSlot, v18);
    TextureSampler = C3DEffectSlotGetTextureSampler(v19, v21);
    v25 = TextureSampler;
    if (Texture)
    {
      goto LABEL_6;
    }

    Image = C3DEffectSlotGetImage(v19, v23);
    Texture = Image;
    if (Image)
    {
      v32 = a3[3];
      Default = v25;
      if (!v25)
      {
        Default = C3DTextureSamplerGetDefault(Image, v31);
      }

      TextureSampler = C3DResourceManagerMakeImageResident(v32, Texture, Default, a1);
      Texture = TextureSampler;
      if (TextureSampler)
      {
LABEL_6:
        v26 = v16 + 32 * *(v16 + 256);
        if (!v25)
        {
          v25 = C3DTextureSamplerGetDefault(TextureSampler, v23);
        }

        v27 = *(v26 + 8);
        if (v27 != Texture)
        {
          if (v27)
          {
            CFRelease(v27);
            *(v26 + 8) = 0;
          }

          *(v26 + 8) = CFRetain(Texture);
        }

        v28 = (v16 + 256);
        v29 = *(v26 + 24);
        if (v29 != v25)
        {
          if (v29)
          {
            CFRelease(v29);
            *(v26 + 24) = 0;
          }

          if (v25)
          {
            v29 = CFRetain(v25);
          }

          else
          {
            v29 = 0;
          }

          *(v26 + 24) = v29;
        }

        *v26 = a2;
        v34 = *v28;
        *(v26 + 16) = *v28;
        if (v34 >= 8)
        {
          v35 = scn_default_log(v29, v23);
          result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          __SetupCommonProfileEffectProperty_cold_4();
          return 0;
        }

        C3DRendererContextBindTexture(a1, Texture, v25, v24, v34);
        ++*v28;
        if ((a2 - 10) <= 0xA)
        {
          if ((__SetupCommonProfileEffectProperty_done & 1) == 0)
          {
            __SetupCommonProfileEffectProperty_done = 1;
            v39 = scn_default_log(v37, v38);
            result = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            __SetupCommonProfileEffectProperty_cold_3();
          }

          return 0;
        }

        v40 = s_PropertyToTextureUniformIndex[a2];
        UniformValueAtIndex = C3DFXGLSLProgramObjectGetUniformValueAtIndex(v14, v40);
        if (*(v26 + 16) != UniformValueAtIndex)
        {
          UniformValueAtIndex = C3DFXGLSLProgramObjectGetUniformLocation(v14, v40);
          if (UniformValueAtIndex != -1)
          {
            glUniform1i(UniformValueAtIndex, *(v26 + 16));
            C3DFXGLSLProgramObjectSetUniformValueAtIndex(v14, v40, *(v26 + 16));
          }
        }

        if ((a2 - 21) >= 0xFFFFFFFFFFFFFFF5)
        {
          if ((__SetupCommonProfileEffectProperty_done_58 & 1) == 0)
          {
            __SetupCommonProfileEffectProperty_done_58 = 1;
            v45 = scn_default_log(UniformValueAtIndex, v42);
            result = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            __SetupCommonProfileEffectProperty_cold_2();
          }

          return 0;
        }

        UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v14, s_PropertyToIntensityUniformIndex[a2]);
        if (UniformLocation == -1)
        {
          LOBYTE(Texture) = 1;
        }

        else
        {
          LODWORD(v79[0]) = C3DEffectSlotGetIntensity(v19, v43);
          LOBYTE(Texture) = 1;
          glUniform1fv(UniformLocation, 1, v79);
          ++a1[30].i32[1];
        }
      }
    }

    if ((a2 - 10) >= 0xB)
    {
      v47 = C3DFXGLSLProgramObjectGetUniformLocation(v14, s_PropertyToTextureMatrixUniformIndex[a2]);
      if (v47 != -1)
      {
        ImageTransform = C3DEffectSlotGetImageTransform(v19, v46);
        memset(v79, 0, sizeof(v79));
        if (!ImageTransform)
        {
          ImageTransform = v79;
          C3DMatrix4x4MakeIdentity(v79);
        }

        glUniformMatrix4fv(v47, 1, 0, ImageTransform);
        ++a1[33].i32[0];
      }
    }

    if (Texture)
    {
      return 1;
    }
  }

  result = 0;
  if (a2 > 4)
  {
    if (a2 <= 8)
    {
      if (a2 == 5)
      {
        v61 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 169);
        if (v61 != -1)
        {
          v50 = v61;
          v51 = v15;
          v52 = 5;
          goto LABEL_78;
        }
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        v59 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 164);
        if (v59 != -1)
        {
          v50 = v59;
          v51 = v15;
          v52 = 6;
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (a2 != 9)
      {
        if (a2 == 16)
        {
          v73 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 147);
          if (v73 != -1)
          {
            v75 = v73;
            v76 = C3DWasLinkedBeforeMajorOSYear2014(v73, v74);
            FloatProperty = C3DEffectCommonProfileGetFloatProperty(v15, 16);
            if (v76)
            {
              v78 = FloatProperty < 1.0;
              FloatProperty = 1.0;
              if (v78)
              {
                FloatProperty = C3DEffectCommonProfileGetFloatProperty(v15, 16);
              }
            }

            glUniform1f(v75, FloatProperty * 128.0);
          }
        }

        else
        {
          if (a2 != 19)
          {
            return result;
          }

          v53 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 183);
          if (v53 != -1)
          {
            v54 = v53;
            v55 = C3DEffectCommonProfileGetFloatProperty(v15, 19);
            v56 = C3DEffectCommonProfileGetFloatProperty(v15, 20);
            v57 = ((1.0 - v55) * (1.0 - v55)) / ((v55 + 1.0) * (v55 + 1.0));
            glUniform3f(v54, v57, 1.0 - v57, v56);
          }
        }

        return 0;
      }

      v63 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 160);
      if (v63 != -1)
      {
        v50 = v63;
        v51 = v15;
        v52 = 9;
        goto LABEL_78;
      }
    }
  }

  else if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v58 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 152);
      if (v58 == -1)
      {
        return 0;
      }

      v50 = v58;
      v51 = v15;
      v52 = 1;
      goto LABEL_78;
    }

    v60 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 160);
    if (v60 != -1)
    {
      v50 = v60;
      v51 = v15;
      v52 = 0;
      goto LABEL_78;
    }
  }

  else if (a2 == 2)
  {
    v62 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 148);
    if (v62 != -1)
    {
      v50 = v62;
      v51 = v15;
      v52 = 2;
      goto LABEL_78;
    }
  }

  else if (a2 == 3)
  {
    v64 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 156);
    if (v64 != -1)
    {
      v50 = v64;
      v51 = v15;
      v52 = 3;
      goto LABEL_78;
    }
  }

  else
  {
    v49 = C3DFXGLSLProgramObjectGetUniformLocation(v14, 179);
    if (v49 != -1)
    {
      v50 = v49;
      v51 = v15;
      v52 = 4;
LABEL_78:
      ColorModulatedByIntensity = C3DEffectCommonProfileGetColorModulatedByIntensity(v51, v52);
      v67 = v66;
      *&v79[0] = ColorModulatedByIntensity;
      *(&v79[0] + 1) = v66;
      if (C3DLinearRenderingIsEnabled())
      {
        C3DColor4ConvertToNonLinear(v79, v68);
        v70 = *(v79 + 1);
        v69 = *v79;
        v72 = *(v79 + 3);
        v71 = *(v79 + 2);
      }

      else
      {
        v70 = *(&ColorModulatedByIntensity + 1);
        v69 = *&ColorModulatedByIntensity;
        v72 = *(&v67 + 1);
        v71 = *&v67;
      }

      glUniform4f(v50, v69, v70, v71, v72);
    }
  }

  return 0;
}

void C3DRendererContextUnbindCommonProfile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 256);
  if (v4)
  {
    v5 = (a3 + 24);
    do
    {
      v6 = *(v5 - 2);
      if (v6)
      {
        CFRelease(v6);
        *(v5 - 2) = 0;
        if (*v5)
        {
          CFRelease(*v5);
          *v5 = 0;
        }
      }

      v5 += 4;
      --v4;
    }

    while (v4);
  }

  *(a3 + 256) = 0;
  if (*(a3 + 260) != 255)
  {

    glBlendColor(0.0, 0.0, 0.0, 0.0);
  }
}

void C3DRendererContextSetFrontFace(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 2305;
  }

  else
  {
    v3 = 2304;
  }

  glFrontFace(v3);
  if (a1)
  {
    ++*(a1 + 236);
  }
}

BOOL C3DRendererContextGetFrontFace(uint64_t a1)
{
  params = 0;
  glGetIntegerv(0xB46u, &params);
  if (a1)
  {
    ++*(a1 + 240);
  }

  return params != 2304;
}

void C3DRendererContextSetEnableWriteToDepth(uint64_t a1, int a2)
{
  glDepthMask(a2 != 0);
  *(a1 + 1096) = 0;
  ++*(a1 + 236);
}

void C3DRendererContextSetEnableReadsFromDepth(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 515;
  }

  else
  {
    v3 = 519;
  }

  glDepthFunc(v3);
  if (a1)
  {
    ++*(a1 + 236);
  }
}

uint64_t C3DRendererContextAllocateBufferObject(_DWORD *a1, uint64_t a2, GLsizeiptr a3, int a4)
{
  if (a4)
  {
    v7 = 35040;
  }

  else
  {
    v7 = 35044;
  }

  buffers = 0;
  glGenBuffers(1, &buffers);
  if (a2 == 1)
  {
    glBindBuffer(0x8893u, buffers);
    glBufferData(0x8893u, a3, 0, v7);
    if (a1)
    {
      ++a1[105];
      a1[111] += a3;
    }
  }

  else if (!a2)
  {
    glBindBuffer(0x8892u, buffers);
    glBufferData(0x8892u, a3, 0, v7);
    if (a1)
    {
      ++a1[103];
      a1[110] += a3;
    }
  }

  return C3DBufferObjectCreate(buffers, a2, a3, 0);
}

uint64_t C3DRendererContextCreateBufferObjectForMeshSource(uint64_t a1, uint64_t a2)
{
  buffers = 0;
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Data = C3DMeshSourceGetData();
  if (Data)
  {
    v14 = Data;
    glGenBuffers(1, &buffers);
    if (a1)
    {
      ++*(a1 + 412);
    }

    glBindBuffer(0x8892u, buffers);
    if (C3DMeshSourceIsMutable(a2))
    {
      v15 = 35048;
    }

    else
    {
      v15 = 35044;
    }

    Length = CFDataGetLength(v14);
    BytePtr = CFDataGetBytePtr(v14);
    glBufferData(0x8892u, Length, BytePtr, v15);
    if (a1)
    {
      *(a1 + 440) += Length;
    }

    return C3DBufferObjectCreate(buffers, 0, Length, v14);
  }

  else
  {
    if ((C3DRendererContextCreateBufferObjectForMeshSource_done & 1) == 0)
    {
      C3DRendererContextCreateBufferObjectForMeshSource_done = 1;
      v19 = scn_default_log(0, v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        C3DRendererContextCreateBufferObjectForMeshSource_cold_2();
      }
    }

    return 0;
  }
}

uint64_t C3DRendererContextCreateBufferObjectForMeshElement(uint64_t a1, uint64_t a2)
{
  *buffers = 0;
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextCreateBufferObjectForMeshElement_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Indexes = C3DMeshElementGetIndexes(a2, buffers);
  Length = CFDataGetLength(Indexes);
  glGenBuffers(1, &buffers[1]);
  if (a1)
  {
    ++*(a1 + 420);
    glBindBuffer(0x8893u, buffers[1]);
    BytePtr = CFDataGetBytePtr(Indexes);
    glBufferData(0x8893u, Length, BytePtr, 0x88E4u);
    *(a1 + 444) += Length;
  }

  else
  {
    glBindBuffer(0x8893u, buffers[1]);
    v15 = CFDataGetBytePtr(Indexes);
    glBufferData(0x8893u, Length, v15, 0x88E4u);
  }

  return C3DBufferObjectCreate(buffers[1], 1, Length, a2);
}

void C3DRendererContextUnbindTexture(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (*(a1 + 20) > a3)
    {
      TextureUnitOffset = C3DRendererContextGetTextureUnitOffset(a1, a2);
      glActiveTexture(a3 + TextureUnitOffset + 33984);
      TargetMode = C3DTextureGetTargetMode(a2, v7);
      glBindTexture(TargetMode, 0);
      ++*(a1 + 232);
      *(a1 + 4 * a3 + 1040) = 0;
    }
  }
}

void C3DRendererContextUnbindTextureUnits(uint64_t a1)
{
  v2 = *(a1 + 1072);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 1040;
    v5 = 33984;
    do
    {
      v6 = *(v4 + 4 * v3);
      if (v6)
      {
        glActiveTexture(v5);
        glBindTexture(v6, 0);
        ++*(a1 + 232);
        *(v4 + 4 * v3) = 0;
        v2 = *(a1 + 1072);
      }

      ++v3;
      ++v5;
    }

    while (v3 < v2);
  }

  *(a1 + 1072) = 0;
}

void C3DRendererContextBindMesh(uint64_t a1, uint64_t a2, void *key)
{
  if (*(a1 + 1104) != key)
  {
    v16 = v3;
    v17 = v4;
    *(a1 + 1104) = key;
    *(a1 + 1112) = -1;
    if (!key)
    {
      glBindBuffer(0x8892u, 0);
      Value = 0;
LABEL_9:
      (*(a1 + 1928))(Value, a1);
      ++*(a1 + 224);
      return;
    }

    Value = CFDictionaryGetValue(*(a1 + 120), key);
    v15 = Value;
    if (Value)
    {
      if (C3DMeshIsMutable(key, v8))
      {
        if (!*(a1 + 128))
        {
          *(a1 + 128) = CFDictionaryCreateMutable(0, 0, 0, 0);
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 0x40000000;
        v13[2] = __C3DRendererContextBindMesh_block_invoke_2;
        v13[3] = &__block_descriptor_tmp_31_1;
        v13[4] = a1;
        v13[5] = key;
        v13[6] = a2;
        C3DMeshApplySources(key, 1, v13);
        glBindBuffer(0x8892u, 0);
        v10 = *(a1 + 128);
        MutabilityTimeStamp = C3DMeshGetMutabilityTimeStamp(key, v11);
        CFDictionarySetValue(v10, key, MutabilityTimeStamp);
      }

      goto LABEL_9;
    }

    (*(a1 + 1936))(1, &v15, a1);
    ++*(a1 + 428);
    (*(a1 + 1928))(v15, a1);
    ++*(a1 + 224);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __C3DRendererContextBindMesh_block_invoke;
    v14[3] = &__block_descriptor_tmp_30;
    v14[4] = a2;
    v14[5] = a1;
    C3DMeshApplySources(key, 1, v14);
    CFDictionarySetValue(*(a1 + 120), key, v15);
    glBindBuffer(0x8892u, 0);
  }
}

void C3DRendererContextBindMeshElement(uint64_t a1, uint64_t a2, const void *a3)
{
  if (*(a1 + 1112) == a3)
  {
    return;
  }

  v36 = v3;
  v37 = v4;
  *(a1 + 1112) = a3;
  if (!a3)
  {
    BufferID = 0;
    *(a1 + 1144) = 0;
    *(a1 + 1136) = 0;
    *(a1 + 1120) = 0u;
    goto LABEL_46;
  }

  v35 = 0;
  Indexes = C3DMeshElementGetIndexes(a3, &v35);
  IsVolatile = C3DMeshElementIsVolatile(a3, v9);
  if (IsVolatile)
  {
    if (!*(a1 + 2056))
    {
      v12 = scn_default_log(IsVolatile, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DRendererContextBindMeshElement_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    Value = CFDictionaryGetValue(*(a1 + 2056), a3);
    BufferID = Value;
    *(a1 + 1120) = 1;
    if (v35 != 4)
    {
      if (v35 != 2)
      {
        if (v35 != 1)
        {
          v22 = scn_default_log(Value, v11);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          return;
        }

        goto LABEL_21;
      }

LABEL_22:
      v27 = 5123;
      goto LABEL_24;
    }

LABEL_23:
    v27 = 5125;
    goto LABEL_24;
  }

  if (!Indexes)
  {
    BufferID = 0;
    *(a1 + 1120) = 0;
LABEL_25:
    if (*(a1 + 104))
    {
      InstanceCount = C3DMeshElementGetInstanceCount(a3, v11);
      if (InstanceCount >= 2)
      {
        *(a1 + 1148) = InstanceCount;
        if (Indexes)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        *(a1 + 1120) = v29;
      }
    }

    PrimitiveCount = C3DMeshElementGetPrimitiveCount(a3);
    if (C3DMeshElementGetPrimitiveRange(a3) != -1)
    {
      PrimitiveCount = v31;
    }

    Type = C3DMeshElementGetType(a3, v31);
    *(a1 + 1144) = PrimitiveCount;
    if (Type <= 1u)
    {
      if (!Type)
      {
        *(a1 + 1124) = 4;
        PrimitiveCount *= 3;
        goto LABEL_45;
      }

      if (Type == 1)
      {
        v33 = 5;
        goto LABEL_41;
      }
    }

    else
    {
      switch(Type)
      {
        case 2u:
          *(a1 + 1124) = 1;
          PrimitiveCount *= 2;
          goto LABEL_45;
        case 3u:
          *(a1 + 1124) = 0;
          goto LABEL_45;
        case 5u:
          v33 = 6;
LABEL_41:
          *(a1 + 1124) = v33;
          PrimitiveCount += 2;
LABEL_45:
          *(a1 + 1128) = PrimitiveCount;
          break;
      }
    }

LABEL_46:
    glBindBuffer(0x8893u, BufferID);
    ++*(a1 + 220);
    return;
  }

  *(a1 + 1120) = 1;
  MeshElementResident = C3DResourceManagerMakeMeshElementResident(a2, a3, a1);
  BufferID = C3DBufferObjectGetBufferID(MeshElementResident, v24);
  v25 = MeshElementResident[9];
  if (v25)
  {
    SharedIndexBufferOffset = *v25;
  }

  else
  {
    SharedIndexBufferOffset = C3DMeshElementGetSharedIndexBufferOffset(a3, v11);
  }

  *(a1 + 1136) = SharedIndexBufferOffset;
  switch(v35)
  {
    case 4:
      goto LABEL_23;
    case 2:
      goto LABEL_22;
    case 1:
LABEL_21:
      v27 = 5121;
LABEL_24:
      *(a1 + 1132) = v27;
      goto LABEL_25;
  }

  v34 = scn_default_log(SharedIndexBufferOffset, v11);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
LABEL_49:
    C3DRendererContextBindMeshElement_cold_1();
  }
}

void _C3DRendererContextMeshWillDie(uint64_t a1, const void *a2, NSObject *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 120), a2);
  if (Value)
  {
    C3DRendererContextRetainContext(a1);
    CFRetain(a1);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___C3DRendererContextMeshWillDie_block_invoke;
    v8[3] = &__block_descriptor_tmp_28_1;
    v8[4] = a1;
    v9 = Value;
    dispatch_async(a3, v8);
    *(a1 + 1104) = -1;
    CFDictionaryRemoveValue(*(a1 + 120), a2);
    v7 = *(a1 + 128);
    if (v7)
    {
      CFDictionaryRemoveValue(v7, a2);
    }
  }
}

void __C3DRendererContextBindMesh_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  MeshSourceResident = C3DResourceManagerMakeMeshSourceResident(*(a1 + 32), a2, *(a1 + 40));
  if (MeshSourceResident)
  {
    v10 = MeshSourceResident;
    BufferID = C3DBufferObjectGetBufferID(MeshSourceResident, v9);
    glBindBuffer(0x8892u, BufferID);
    v12 = *(a1 + 40);
    if (v12)
    {
      ++*(v12 + 208);
    }

    AttributeIndexFromSemanticAndUVSet = _GetAttributeIndexFromSemanticAndUVSet(v5, a4);

    C3DRendererContextSetupResidentMeshSourceAtLocation(v12, a2, v10, AttributeIndexFromSemanticAndUVSet, v14, v15, v16, v17);
  }
}

uint64_t _GetAttributeIndexFromSemanticAndUVSet(int a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
        return 3;
    }

    return -1;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 4;
    }

    if (a1 == 6)
    {
      return 5;
    }

    return -1;
  }

  if (a1 != 3)
  {
    return 2;
  }

  if (a2 == -1)
  {
    return 6;
  }

  return a2 + 6;
}

void __C3DRendererContextBindMesh_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsMutable(a2))
  {
    if (C3DGenericSourceIsPrimary(a2, v4))
    {
      Value = CFDictionaryGetValue(*(*(a1 + 32) + 128), *(a1 + 40));
      if (C3DMeshGetMutabilityTimeStamp(*(a1 + 40), v6) != Value)
      {
        Data = C3DMeshSourceGetData();
        if (Data)
        {
          v8 = Data;
          Length = CFDataGetLength(Data);
          BytePtr = CFDataGetBytePtr(v8);
          MeshSourceResident = C3DResourceManagerMakeMeshSourceResident(*(a1 + 48), a2, *(a1 + 32));
          BufferID = C3DBufferObjectGetBufferID(MeshSourceResident, v12);
          glBindBuffer(0x8892u, BufferID);
          v14 = *(a1 + 32);
          if (v14)
          {
            ++*(v14 + 208);
          }

          if (Length == MeshSourceResident[17])
          {
            v15 = (*(v14 + 1960))(34962, 0, Length, 38);
            memcpy(v15, BytePtr, Length);
            v16 = *(*(a1 + 32) + 1976);

            v16(34962);
          }

          else
          {
            glBufferData(0x8892u, Length, BytePtr, 0x88E8u);
            MeshSourceResident[17] = Length;
          }
        }
      }
    }
  }
}

uint64_t C3DRendererContextBindEffectSlot(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a3)
  {
    v12 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  if (a5 > 7)
  {
    return 0;
  }

  Texture = C3DEffectSlotGetTexture(a3, a2);
  TextureSampler = C3DEffectSlotGetTextureSampler(a3, v21);
  if (TextureSampler)
  {
    if (!Texture)
    {
LABEL_10:
      Image = C3DEffectSlotGetImage(a3, v22);
      if (Image)
      {
        Texture = C3DResourceManagerMakeImageResident(a2, Image, TextureSampler, a1);
      }

      else
      {
        Texture = 0;
      }
    }
  }

  else
  {
    TextureSampler = C3DTextureSamplerGetDefault(0, v22);
    if (!Texture)
    {
      goto LABEL_10;
    }
  }

  if (a6 != -1)
  {
    ImageTransform = C3DEffectSlotGetImageTransform(a3, v22);
    memset(v27, 0, sizeof(v27));
    if (!ImageTransform)
    {
      ImageTransform = v27;
      C3DMatrix4x4MakeIdentity(v27);
    }

    glUniformMatrix4fv(a6, 1, 0, ImageTransform);
    if (a1)
    {
      ++a1[33].i32[0];
    }
  }

  result = 0;
  if (Texture && TextureSampler)
  {
    C3DRendererContextBindTexture(a1, Texture, TextureSampler, v23, a5);
    if (a4 != -1)
    {
      glUniform1i(a4, a5);
      if (a1)
      {
        ++a1[31].i32[0];
      }
    }

    return 1;
  }

  return result;
}

uint64_t __ReserveAndBindVolatileVBO(_DWORD *a1, unint64_t a2, void *a3, int a4, int a5)
{
  v5 = a5;
  v10 = gl_ArrayBufferType[a5];
  v11 = &a1[6 * a5];
  Count = C3DArrayGetCount(*(v11 + 249), a2);
  ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v11 + 249), v11[501]);
  v15 = *ValuePtrAtIndex;
  if (!*ValuePtrAtIndex)
  {
LABEL_25:
    v26 = 0x800000;
    if (a2 > 0x800000)
    {
      v26 = a2;
    }

    if (a4)
    {
      v27 = a2;
    }

    else
    {
      v27 = v26;
    }

    result = C3DRendererContextAllocateBufferObject(a1, v5, v27, 1);
    *ValuePtrAtIndex = result;
    *(ValuePtrAtIndex + 8) = a2;
    *(ValuePtrAtIndex + 20) = a1[14];
    *a3 = 0;
    return result;
  }

  target = v10;
  v16 = (v11 + 498);
  while (1)
  {
    Size = C3DBufferObjectGetSize(v15, v13);
    v19 = Size;
    v20 = a1[14] - *(ValuePtrAtIndex + 20);
    if (!v20)
    {
      v20 = 0x7FFFFFFF;
    }

    v21 = *(ValuePtrAtIndex + 8);
    if (Size > 0x800000 && !v21 && v20 >= 3)
    {
      v21 = 0;
      if (*(ValuePtrAtIndex + 16) > 0x3Cu)
      {
        v19 = 0;
      }
    }

    if (v21 + a2 > v19 || v20 < 3)
    {
      break;
    }

    if (!v21 || (a4 & 1) == 0)
    {
      BufferID = C3DBufferObjectGetBufferID(*ValuePtrAtIndex, v18);
      glBindBuffer(target, BufferID);
      ++a1[52];
      *(ValuePtrAtIndex + 20) = a1[14];
      result = *ValuePtrAtIndex;
      v30 = *(ValuePtrAtIndex + 8);
      *a3 = v30;
      *(ValuePtrAtIndex + 8) = v30 + a2;
      return result;
    }

LABEL_22:
    v24 = v11[500];
    v25 = (v11[501] + 1) % Count;
    v11[501] = v25;
    if (v24 == v25)
    {
      C3DArraySetCount(*v16, Count + 1);
    }

    Count = C3DArrayGetCount(*v16, v18);
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v11 + 249), v11[501]);
    v15 = *ValuePtrAtIndex;
    if (!*ValuePtrAtIndex)
    {
      goto LABEL_25;
    }
  }

  if (v21 || v20 < 3)
  {
    goto LABEL_22;
  }

  v31 = 0x800000;
  if (a2 > 0x800000)
  {
    v31 = a2;
  }

  if (a4)
  {
    v32 = a2;
  }

  else
  {
    v32 = v31;
  }

  C3DRendererContextDeleteBufferObject(a1, *ValuePtrAtIndex);
  if (*ValuePtrAtIndex)
  {
    CFRelease(*ValuePtrAtIndex);
    *ValuePtrAtIndex = 0;
  }

  result = C3DRendererContextAllocateBufferObject(a1, v5, v32, 1);
  *ValuePtrAtIndex = result;
  *(ValuePtrAtIndex + 8) = a2;
  *(ValuePtrAtIndex + 20) = a1[14];
  *a3 = 0;
  if (a4)
  {
    *(ValuePtrAtIndex + 8) = v19;
  }

  return result;
}

uint64_t C3DRendererContextMapVolatileMesh(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int a5)
{
  IsVolatile = C3DMeshIsVolatile(a3, a2);
  if (IsVolatile)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 0x40000000;
    v43[2] = __C3DRendererContextMapVolatileMesh_block_invoke;
    v43[3] = &unk_2782FCEF8;
    v43[4] = &v44;
    v43[5] = a4;
    C3DMeshApplySources(a3, 1, v43);
    v12 = v45[3];
    if (v12 && (v42 = 0, (v13 = __ReserveAndBindVolatileVBO(a1, v12, &v42, a5, 0)) != 0) && (v14 = v13, v15 = v42, (v16 = (*(a1 + 1960))(34962, v42, v45[3], 38, a1)) != 0))
    {
      v17 = v16;
      *(C3DArrayGetValuePtrAtIndex(*(a1 + 1992), *(a1 + 2004)) + 24) = v16;
      value_4[0] = 0;
      value_4[1] = value_4;
      value_4[2] = 0x2000000000;
      value_4[3] = 0;
      value = 0;
      v18 = *(a1 + 2048);
      if (v18 >= C3DArrayGetCount(*(a1 + 2040), v19))
      {
        (*(a1 + 1936))(1, &value, a1);
        ++*(a1 + 428);
        C3DArrayAppendValue(*(a1 + 2040), &value);
        v20 = value;
      }

      else
      {
        v20 = *C3DArrayGetValuePtrAtIndex(*(a1 + 2040), *(a1 + 2048));
        value = v20;
      }

      ++*(a1 + 2048);
      (*(a1 + 1928))(v20, a1);
      ++*(a1 + 224);
      v36 = 0;
      v37 = &v36;
      v38 = 0x2000000000;
      v39 = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 0x40000000;
      v35[2] = __C3DRendererContextMapVolatileMesh_block_invoke_2;
      v35[3] = &unk_2782FCF20;
      v35[4] = &v36;
      v35[5] = value_4;
      v35[6] = v17;
      v35[7] = v15;
      v35[8] = a1;
      v35[9] = v14;
      C3DMeshApplySources(a3, 1, v35);
      if (*(v37 + 24) == 1)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 0x40000000;
        v34[2] = __C3DRendererContextMapVolatileMesh_block_invoke_3;
        v34[3] = &__block_descriptor_tmp_36_0;
        v34[4] = a2;
        v34[5] = a1;
        C3DMeshApplySources(a3, 1, v34);
        BufferID = C3DBufferObjectGetBufferID(v14, v30);
        glBindBuffer(0x8892u, BufferID);
        ++*(a1 + 208);
      }

      CFDictionarySetValue(*(a1 + 120), a3, value);
      (*(a1 + 1928))(0, a1);
      Mutable = *(a1 + 2008);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        *(a1 + 2008) = Mutable;
      }

      CFArrayAppendValue(Mutable, a3);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(value_4, 8);
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v21 = scn_default_log(IsVolatile, v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextMapVolatileMesh_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    return 0;
  }

  return v29;
}

uint64_t __C3DRendererContextMapVolatileMesh_block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DMeshSourceIsVolatile(a2);
  if (result)
  {
    Accessor = C3DMeshSourceGetAccessor(a2, v5, v6, v7, v8, v9, v10, v11);
    C3DSourceAccessorSetCount(Accessor, *(a1 + 40));
    result = C3DSourceAccessorGetLength(Accessor, v13);
    *(*(*(a1 + 32) + 8) + 24) += result;
  }

  return result;
}

void __C3DRendererContextMapVolatileMesh_block_invoke_2(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (C3DMeshSourceIsVolatile(a2))
  {
    Accessor = C3DMeshSourceGetAccessor(a2, v8, v9, v10, v11, v12, v13, v14);
    Length = C3DSourceAccessorGetLength(Accessor, v16);
    C3DMeshSourceSetVolatileData(a2, a1[6] + *(*(a1[5] + 8) + 24));
    C3DSourceAccessorSetOffset(Accessor, *(*(a1[5] + 8) + 24) + a1[7]);
    *(*(a1[5] + 8) + 24) += Length;
    AttributeIndexFromSemanticAndUVSet = _GetAttributeIndexFromSemanticAndUVSet(a3, a4);
    v23 = a1[8];
    v24 = a1[9];

    C3DRendererContextSetupResidentMeshSourceAtLocation(v23, a2, v24, AttributeIndexFromSemanticAndUVSet, v19, v20, v21, v22);
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void __C3DRendererContextMapVolatileMesh_block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((C3DMeshSourceIsVolatile(a2) & 1) == 0)
  {
    MeshSourceResident = C3DResourceManagerMakeMeshSourceResident(*(a1 + 32), a2, *(a1 + 40));
    BufferID = C3DBufferObjectGetBufferID(MeshSourceResident, v9);
    glBindBuffer(0x8892u, BufferID);
    v11 = *(a1 + 40);
    if (v11)
    {
      ++*(v11 + 208);
    }

    AttributeIndexFromSemanticAndUVSet = _GetAttributeIndexFromSemanticAndUVSet(a3, a4);

    C3DRendererContextSetupResidentMeshSourceAtLocation(v11, a2, MeshSourceResident, AttributeIndexFromSemanticAndUVSet, v13, v14, v15, v16);
  }
}

void C3DRendererContextUnmapVolatileMesh(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __C3DRendererContextUnmapVolatileMesh_block_invoke;
  v2[3] = &__block_descriptor_tmp_39_0;
  v2[4] = a1;
  C3DMeshApplySources(a2, 1, v2);
  glBindBuffer(0x8892u, 0);
}

void __C3DRendererContextUnmapVolatileMesh_block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsVolatile(a2))
  {
    Accessor = C3DMeshSourceGetAccessor(a2, v4, v5, v6, v7, v8, v9, v10);
    VolatileValuePtrAtIndex = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
    v13 = *(a1 + 32);
    v14 = *(v13 + 1992);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = __C3DRendererContextUnmapVolatileMesh_block_invoke_2;
    v15[3] = &__block_descriptor_tmp_38;
    v15[4] = VolatileValuePtrAtIndex;
    v15[5] = v13;
    C3DArrayApply(v14, v15);
    C3DMeshSourceSetVolatileData(a2, 0);
  }
}

uint64_t __C3DRendererContextUnmapVolatileMesh_block_invoke_2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 32);
  v4 = a3[3];
  if (v3 >= v4 && v3 < v4 + a3[1])
  {
    v6 = result;
    BufferID = C3DBufferObjectGetBufferID(*a3, a2);
    glBindBuffer(0x8892u, BufferID);
    result = (*(*(v6 + 40) + 1976))(34962);
    a3[3] = 0;
  }

  return result;
}

uint64_t C3DRendererContextMapVolatileMeshElement(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  IsVolatile = C3DMeshElementIsVolatile(a2, a2);
  if (!IsVolatile)
  {
    v12 = scn_default_log(IsVolatile, v9);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    C3DRendererContextMapVolatileMesh_cold_1(v12, v14, v15, v16, v17, v18, v19, v20);
    return 0;
  }

  Type = C3DMeshElementGetType(a2, v9);
  if (Type <= 1u)
  {
    v21 = a3 + 2;
    if (Type != 1)
    {
      v21 = a3;
    }

    if (Type)
    {
      a3 = v21;
    }

    else
    {
      a3 *= 3;
    }

    if (!a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    switch(Type)
    {
      case 2u:
        a3 *= 2;
        if (a3)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 4u:
        v22 = scn_default_log(Type, v11);
        Type = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
        if (Type)
        {
          C3DRendererContextMapVolatileMeshElement_cold_2(v22, v11, v23, v24, v25, v26, v27, v28);
        }

        goto LABEL_22;
      case 5u:
        a3 += 2;
        break;
    }

    if (!a3)
    {
LABEL_22:
      v29 = scn_default_log(Type, v11);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        C3DRendererContextMapVolatileMeshElement_cold_3(v29, v11, v30, v31, v32, v33, v34, v35);
      }

      a3 = 0;
    }
  }

LABEL_25:
  v36 = a3 * C3DMeshElementGetBytesPerIndex(a2, v11);
  if (!v36)
  {
    return 0;
  }

  v50 = 0;
  result = __ReserveAndBindVolatileVBO(a1, v36, &v50, a4, 1);
  if (result)
  {
    v37 = result;
    result = (*(a1 + 1960))(34963, v50, v36, 38, a1);
    if (result)
    {
      v38 = result;
      *(C3DArrayGetValuePtrAtIndex(*(a1 + 2016), *(a1 + 2028)) + 24) = result;
      C3DMeshElementSetVolatileDataPtr(a2, v38);
      if (!*(a1 + 2056))
      {
        Mutable = CFDictionaryCreateMutable(0, 3, 0, 0);
        *(a1 + 2056) = Mutable;
        if (!Mutable)
        {
          v41 = scn_default_log(0, v39);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            C3DRendererContextMapVolatileMeshElement_cold_4(v41, v39, v42, v43, v44, v45, v46, v47);
          }
        }
      }

      BufferID = C3DBufferObjectGetBufferID(v37, v39);
      CFDictionarySetValue(*(a1 + 2056), a2, BufferID);
      *(a1 + 1120) = 1;
      v49 = *(a1 + 2032);
      if (!v49)
      {
        v49 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        *(a1 + 2032) = v49;
      }

      CFArrayAppendValue(v49, a2);
      return 1;
    }
  }

  return result;
}

void C3DRendererContextUnmapVolatileMeshElement(uint64_t a1, uint64_t a2)
{
  IsVolatile = C3DMeshElementIsVolatile(a2, a2);
  if (!IsVolatile)
  {
    v6 = scn_default_log(IsVolatile, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextUnmapVolatileMeshElement_cold_1(v6, v5, v7, v8, v9, v10, v11, v12);
    }
  }

  VolatileDataPtr = C3DMeshElementGetVolatileDataPtr(a2, v5);
  v14 = *(a1 + 2016);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = __C3DRendererContextUnmapVolatileMeshElement_block_invoke;
  v15[3] = &__block_descriptor_tmp_42_0;
  v15[4] = VolatileDataPtr;
  v15[5] = a1;
  C3DArrayApply(v14, v15);
  C3DMeshElementSetVolatileDataPtr(a2, 0);
  glBindBuffer(0x8893u, 0);
}

uint64_t __C3DRendererContextUnmapVolatileMeshElement_block_invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 32);
  v4 = a3[3];
  if (v3 >= v4 && v3 < v4 + a3[1])
  {
    v6 = result;
    BufferID = C3DBufferObjectGetBufferID(*a3, a2);
    glBindBuffer(0x8893u, BufferID);
    result = (*(*(v6 + 40) + 1976))(34963);
    a3[3] = 0;
  }

  return result;
}

void C3DRendererContextResetVolatileObjects(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 1992;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = gl_ArrayBufferType[v2];
    v7 = v3 + 24 * v2;
    v8 = *(v7 + 16);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          if (v5)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 16), i);
            CFDictionaryRemoveValue(*(a1 + 120), ValueAtIndex);
          }
        }
      }

      CFArrayRemoveAllValues(*(v7 + 16));
    }

    v13 = *v7;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __C3DRendererContextResetVolatileObjects_block_invoke;
    v18[3] = &__block_descriptor_tmp_43_0;
    v19 = v6;
    v18[4] = a1;
    C3DArrayApply(v13, v18);
    v15 = C3DArrayGetCount(*v7, v14);
    v4 = 0;
    v16 = (*(v7 + 12) + 1) % v15;
    *(v7 + 8) = v16;
    *(v7 + 12) = v16;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v17 = *(a1 + 2056);
  if (v17)
  {
    CFDictionaryRemoveAllValues(v17);
  }

  *(a1 + 2048) = 0;
}

unint64_t __C3DRendererContextResetVolatileObjects_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  if (*a3 && (!*(a3 + 24) || (BufferID = C3DBufferObjectGetBufferID(result, a2), glBindBuffer(*(a1 + 40), BufferID), (*(*(a1 + 32) + 1976))(*(a1 + 40)), (result = *a3) != 0)) && (v7 = *(a3 + 8), result = C3DBufferObjectGetSize(result, a2), v7 < result))
  {
    ++*(a3 + 16);
  }

  else
  {
    *(a3 + 16) = 0;
  }

  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  return result;
}

const __CFDictionary *C3DRendererContextGetCompilationErrors(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    result = CFDictionaryGetCount(result);
    if (result)
    {
      return *(a1 + 96);
    }
  }

  return result;
}

void C3DRendererContextBumpTimeStamp(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  ++*(a1 + 56);
}

uint64_t kSCNMaterialPropertyTextureProviderSourceCallbackCreateTextureProxy(__C3DEngineContext *a1, __C3DTextureSampler *a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6[0] = xmmword_282DC3BA0;
  v6[1] = *off_282DC3BB0;
  v4 = C3DTextureProxyCreate();
  C3DTextureProxySetCallbacks(v4, v6);
  C3DTextureProxySetSource(v4, a3);
  return v4;
}

uint64_t __renderToTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke;
  v10[3] = &unk_2782FD0B8;
  v10[4] = a4;
  v8[4] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79;
  v9[3] = &unk_2782FD0E0;
  v9[4] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_82;
  v8[3] = &unk_2782FD108;
  if (objc_opt_respondsToSelector())
  {
    return [a1 renderToTexture:a2 computeCommandHandler:v10 blitCommandHandler:v9 completionHandler:v8 helper:a3];
  }

  else
  {
    return [a1 renderToTexture:a2 computeCommandHandler:v10 blitCommandHandler:v9 helper:a3];
  }
}

uint64_t ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [(SCNMTLRenderContext *)*(result + 32) resourceComputeEncoder];
    v5 = v3;
    if (!*(v3 + 1656))
    {
      v6 = scn_default_log(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    bzero(v5, 0x678uLL);
    return (*(a2 + 16))(a2, v5[207]);
  }

  return result;
}

uint64_t ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = [(SCNMTLRenderContext *)*(result + 32) resourceBlitEncoder];
    v5 = v3;
    if (!*v3)
    {
      v6 = scn_default_log(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    return (*(a2 + 16))(a2, *v5);
  }

  return result;
}

void *___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_82(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = [(SCNMTLRenderContext *)result[4] resourceComputeEncoder];
    v5 = v3;
    if (!*(v3 + 1656))
    {
      v6 = scn_default_log(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    return [*(v5 + 1664) addCompletedHandler:a2];
  }

  return result;
}

void C3DRendererContextSetGLContext(__n64 *result, void *a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetGLContext_cold_1(v4);
    }
  }

  v5 = result[20].n64_u64[0];
  if (v5 != a2)
  {
    if (v5)
    {
      C3DResourceManagerRegistryReleaseContext(result, v5);
      v6 = result[20].n64_u64[0];
      if (v6)
      {
        C3DEAGLWrapperContextRelease(v6);
      }
    }

    if (a2)
    {
      C3DEAGLWrapperContextRetain(a2);
    }

    result[20].n64_u64[0] = a2;
    __InitStateVarsIfNeeded(result, 0);
    v7 = result[20].n64_u64[0];
    if (v7)
    {
      C3DResourceManagerRegistryRetainContext(v7);
    }
  }
}

uint64_t C3DRendererContextGetGLContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextSetGLContext_cold_1(v3);
    }
  }

  return *(a1 + 160);
}

void _C3DParticleManagerCFFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[14];
  if (v3)
  {
    CFRelease(v3);
    a1[14] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
    a1[8] = 0;
  }

  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
    a1[6] = 0;
  }

  v9 = a1[10];
  if (v9)
  {
    CFRelease(v9);
    a1[10] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  v11 = a1[12];
  if (v11)
  {
    CFRelease(v11);
    a1[12] = 0;
  }

  v12 = a1[13];
  if (v12)
  {
    CFRelease(v12);
    a1[13] = 0;
  }
}

CFStringRef _C3DParticleManagerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleManagerRef>");
}

CFStringRef _C3DParticleManagerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleManagerRef>");
}

uint64_t __C3DParticleManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DParticleManagerGetTypeID_typeID = result;
  return result;
}

void *C3DParticleManagerCreate(uint64_t a1)
{
  if (C3DParticleManagerGetTypeID_onceToken != -1)
  {
    C3DParticleManagerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParticleManagerGetTypeID_typeID, 104);
  Instance[2] = a1;
  v3 = *MEMORY[0x277CBECE8];
  Instance[3] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  Instance[14] = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  return Instance;
}

void C3DParticleManagerRegisterSystem(uint64_t a1, uint64_t a2)
{
  ParticleSystems = C3DNodeGetParticleSystems(a2, a2);
  if (ParticleSystems)
  {
    v5 = ParticleSystems;
    Count = CFArrayGetCount(ParticleSystems);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        C3DParticleManagerAddSystem(a1, a2, ValueAtIndex, 0);
      }
    }
  }
}

double C3DParticleManagerAddSystem(uint64_t a1, uint64_t a2, const void *a3, __int128 *a4)
{
  if (C3DParticleSystemGetIsLocal(a3, a2))
  {
    goto LABEL_8;
  }

  Count = CFArrayGetCount(*(a1 + 24));
  if (Count < 1)
  {
    goto LABEL_8;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v10);
    if (C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a3)
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_8;
    }
  }

  if (!ValueAtIndex)
  {
LABEL_8:
    ValueAtIndex = C3DParticleSystemInstanceCreate(a2, a3, a1);
    CFArrayAppendValue(*(a1 + 24), ValueAtIndex);
    CFRelease(ValueAtIndex);
  }

  *&result = C3DParticleSystemInstanceAddEmitter(ValueAtIndex, a4, a2).n128_u64[0];
  return result;
}

void C3DParticleManagerUnregisterSystem(uint64_t a1, uint64_t a2)
{
  if (C3DNodeGetParticleSystems(a2, a2))
  {

    C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(a1, a2);
  }
}

void C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v6);
      Library = C3DSceneSourceGetLibrary(ValueAtIndex);
      System = C3DParticleSystemInstanceGetSystem(ValueAtIndex);
      if (C3DParticleSystemGetIsLocal(System, v10))
      {
        v11 = Library == a2;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v6);
        --v5;
      }

      else
      {
        if (Library == a2)
        {
          C3DParticleSystemInstanceSetNode(ValueAtIndex, 0);
        }

        C3DParticleSystemInstanceRemoveEmittersWithNode(ValueAtIndex, a2);
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

void C3DParticleManagerRemoveSystem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v8);
      if (C3DSceneSourceGetLibrary(ValueAtIndex) == a2 && C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a3)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v8);
        --v7;
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < v7);
  }
}

void C3DParticleManagerRemoveAllInstanceOfSystem(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v6);
      if (C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a2)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v6);
        --v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

void C3DParticleManagerResetAllInstanceOfSystem(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (C3DParticleSystemInstanceGetSystem(ValueAtIndex) == a2)
      {
        C3DParticleSystemInstanceReset(ValueAtIndex);
      }
    }
  }
}

__CFArray *C3DParticleManagerGetParticleSystemsForNode(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (C3DSceneSourceGetLibrary(ValueAtIndex) == a2)
      {
        System = C3DParticleSystemInstanceGetSystem(ValueAtIndex);
        CFArrayAppendValue(Mutable, System);
      }
    }
  }

  return Mutable;
}

void __C3DParticleManagerRemoveActiveSystemInstance(uint64_t a1, const void *a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (CFArrayGetValueAtIndex(*(a1 + 24), v6) != a2)
    {
      if (v5 == ++v6)
      {
        return;
      }
    }

    v7 = *(a1 + 24);

    CFArrayRemoveValueAtIndex(v7, v6);
  }
}

void C3DParticleManagerUpdate(uint64_t a1, uint64_t a2, double a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count)
  {
    v7 = Count;
    MEMORY[0x28223BE20](Count);
    v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v8 >= 0x200)
    {
      v10 = 512;
    }

    else
    {
      v10 = v8;
    }

    bzero(v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v27.location = 0;
    v27.length = v7;
    CFArrayGetValues(*(a1 + 24), v27, v9);
    if (v7 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v14 = *v9;
        C3DParticleSystemInstanceSync(*v9, a2);
        C3DParticleSystemInstanceUpdate(v14, a3, v15);
        if (C3DSceneSourceGetStatus(v14) == 2)
        {
          System = C3DParticleSystemInstanceGetSystem(v14);
          Loops = C3DParticleSystemGetLoops(System, v18);
          if ((Loops & 1) == 0)
          {
            Loops = C3DIsRunningInXcode(Loops, v20);
            if ((Loops & 1) == 0)
            {
              Library = C3DSceneSourceGetLibrary(v14);
              v22 = C3DParticleSystemInstanceGetSystem(v14);
              Loops = SCNNodeRemoveDeadParticleInstance(Library, v22);
            }
          }

          if (C3DIsRunningInXcode(Loops, v20))
          {
            SoftParticlesEnabled = C3DParticleSystemGetLoops(System, v23);
            if (SoftParticlesEnabled)
            {
              SoftParticlesEnabled = C3DSceneSourceGetLibrary(v14);
              if (SoftParticlesEnabled)
              {
                v24 = SoftParticlesEnabled;
                if (C3DNodeGetParticleSystems(SoftParticlesEnabled, v12))
                {
                  C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(a1, v24);
                }

                C3DParticleManagerRegisterSystem(a1, v24);
                SoftParticlesEnabled = C3DParticleSystemInstanceSetNode(v14, v24);
              }
            }
          }

          else
          {
            __C3DParticleManagerRemoveActiveSystemInstance(a1, v14);
          }
        }

        else
        {
          SoftParticlesEnabled = C3DParticleSystemGetSoftParticlesEnabled(v14[6], v16);
          v13 |= SoftParticlesEnabled;
        }

        ++v9;
        --v7;
      }

      while (v7);
    }

    if (*(a1 + 32) != (v13 & 1))
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance(SoftParticlesEnabled, v12);
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", *(a1 + 16), 0, 1u);
      *(a1 + 32) = v13 & 1;
    }
  }
}

void C3DParticleManagerCull(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  FrameStamp = C3DSceneGetFrameStamp(*(a1 + 16), a2);
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v12 = Count;
    v13 = 0;
    v14 = (a2 + 96 * a4);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v13);
      if (C3DParticleSystemInstanceGetParticlesCount(ValueAtIndex) && (*(a2 + 4689) != 1 || C3DParticleSystemGetBlendMode(*(ValueAtIndex + 6), v16) == 5))
      {
        v25 = 0u;
        v26 = 0u;
        WorldBoundingBox = C3DParticleSystemInstanceGetWorldBoundingBox(ValueAtIndex, v16);
        v25 = WorldBoundingBox;
        v26 = v18;
        if ((*(a2 + 4692) & 1) != 0 || (v19 = v14[4], v24[2] = v14[3], v24[3] = v19, v20 = v14[6], v24[4] = v14[5], v24[5] = v20, v21 = v14[2], v24[0] = v14[1], v24[1] = v21, scn_frustum_classify_aabb(v24, WorldBoundingBox, v18) != 1))
        {
          C3DParticleSystemInstancePushRendererElements(ValueAtIndex, a2, a3, FrameStamp, &v25, a4, a5, a6);
        }
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t C3DParticleManagerGetSharedQuadsMeshElement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  PrimitiveCount = *(a1 + 40);
  if (!PrimitiveCount || (PrimitiveCount = C3DMeshElementGetPrimitiveCount(PrimitiveCount), PrimitiveCount < 2 * v2))
  {
    v5 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | HIWORD(v6);
    if ((v7 + 1) > 0x100)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 256;
    }

    v9 = 2 * v8;
    v10 = 4 * v8;
    v11 = C3DMeshElementCreate(PrimitiveCount, a2);
    if ((4 * v8) > 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v10 <= 0x10000)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = v10 >= 0x101;
    if (v10 < 0x101)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12;
    }

    if (!v14)
    {
      v13 = 0;
    }

    v16 = ((6 * v8) << v13);
    v17 = C3DMallocWithName(v16);
    if (v15 == 1)
    {
      v23 = 0;
      v24 = v17;
      do
      {
        *v24 = v23;
        v24[1] = v23 | 1;
        v24[2] = v23 | 2;
        v24[3] = v23;
        v24[4] = v23 | 2;
        v24[5] = v23 | 3;
        v24 += 6;
        v23 += 4;
        --v8;
      }

      while (v8);
    }

    else if (v15 == 2)
    {
      v21 = 0;
      v22 = v17;
      do
      {
        *v22 = v21;
        *(v22 + 1) = v21 | 1;
        *(v22 + 2) = v21 | 2;
        *(v22 + 3) = v21;
        *(v22 + 4) = v21 | 2;
        *(v22 + 5) = v21 | 3;
        v22 += 12;
        v21 += 4;
        --v8;
      }

      while (v8);
    }

    else
    {
      v18 = 0;
      v19 = v17;
      do
      {
        v19->i32[0] = v18;
        v19->i32[1] = v18 + 1;
        v20 = vorr_s8(vdup_n_s32(v18), 0x300000002);
        v19[1].i32[0] = v20.i32[0];
        v19[1].i32[1] = v18;
        v19[2] = v20;
        v18 += 4;
        v19 += 3;
        --v8;
      }

      while (v8);
    }

    v25 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v17, v16, *MEMORY[0x277CBECE8]);
    C3DMeshElementSetPrimitives(v11, v9, v25, v15);
    CFRelease(v25);
    v26 = *(a1 + 40);
    if (v26 != v11)
    {
      if (v26)
      {
        CFRelease(v26);
        *(a1 + 40) = 0;
      }

      if (v11)
      {
        v27 = CFRetain(v11);
      }

      else
      {
        v27 = 0;
      }

      *(a1 + 40) = v27;
    }

    CFRelease(v11);
  }

  return *(a1 + 40);
}

CFTypeRef C3DParticleManagerGetSharedPyramidQuadsMeshElement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  PrimitiveCount = *(a1 + 56);
  if (PrimitiveCount)
  {
    PrimitiveCount = C3DMeshElementGetPrimitiveCount(PrimitiveCount);
    if (PrimitiveCount >= 4 * v2)
    {
      return *(a1 + 56);
    }
  }

  v5 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 0x100)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 256;
  }

  v9 = 4 * v8;
  v10 = 5 * v8;
  v11 = C3DMeshElementCreate(PrimitiveCount, a2);
  if ((5 * v8) >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v10 < 0x10000)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = v10 >= 0x100;
  if (v10 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  if (!v14)
  {
    v13 = 0;
  }

  v16 = ((12 * v8) << v13);
  v17 = C3DMallocWithName(v16);
  if (v15 == 1)
  {
    v24 = 0;
    v25 = v17;
    do
    {
      *v25 = v24;
      v25[1] = v24 + 1;
      v25[2] = v24 + 4;
      v25[3] = v24 + 1;
      v25[4] = v24 + 2;
      v25[5] = v24 + 4;
      v25[6] = v24 + 2;
      v25[7] = v24 + 3;
      v25[8] = v24 + 4;
      v25[9] = v24 + 3;
      v25[10] = v24;
      v25[11] = v24 + 4;
      v25 += 12;
      v24 += 5;
      --v8;
    }

    while (v8);
  }

  else if (v15 == 2)
  {
    v22 = 0;
    v23 = v17;
    do
    {
      *v23 = v22;
      *(v23 + 1) = v22 + 1;
      *(v23 + 2) = v22 + 4;
      *(v23 + 3) = v22 + 1;
      *(v23 + 4) = v22 + 2;
      *(v23 + 5) = v22 + 4;
      *(v23 + 6) = v22 + 2;
      *(v23 + 7) = v22 + 3;
      *(v23 + 8) = v22 + 4;
      *(v23 + 9) = v22 + 3;
      *(v23 + 10) = v22;
      *(v23 + 11) = v22 + 4;
      v23 += 24;
      v22 += 5;
      --v8;
    }

    while (v8);
  }

  else
  {
    v18 = 0;
    v19 = v17;
    do
    {
      *v19 = v18;
      *(v19 + 1) = v18 + 1;
      v20 = v18 + 4;
      *(v19 + 2) = v18 + 4;
      *(v19 + 3) = v18 + 1;
      *(v19 + 4) = v18 + 2;
      *(v19 + 5) = v18 + 4;
      *(v19 + 6) = v18 + 2;
      *(v19 + 7) = v18 + 3;
      *(v19 + 9) = v18 + 3;
      *(v19 + 10) = v18;
      v18 += 5;
      *(v19 + 8) = v20;
      *(v19 + 11) = v20;
      v19 += 48;
      --v8;
    }

    while (v8);
  }

  v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v17, v16, *MEMORY[0x277CBECE8]);
  C3DMeshElementSetPrimitives(v11, v9, v26, v15);
  CFRelease(v26);
  result = *(a1 + 56);
  if (result != v11)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (v11)
    {
      result = CFRetain(v11);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

uint64_t C3DParticleManagerGetSharedQuadMeshSource(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a1 + 80;
    if (!*(a1 + 80))
    {
      v7 = xmmword_21C2814C0;
      v8 = unk_21C2814D0;
      v9 = 0xBF800000BF800000;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 40);
      v4 = v3;
      v5 = 5;
LABEL_6:
      *v2 = C3DMeshSourceCreate(v3, 3, v5, 2, 1);
      CFRelease(v4);
    }
  }

  else
  {
    v2 = a1 + 64;
    if (!*(a1 + 64))
    {
      v7 = xmmword_21C2814E8;
      v8 = unk_21C2814F8;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 32);
      v4 = v3;
      v5 = 4;
      goto LABEL_6;
    }
  }

  return *v2;
}

uint64_t C3DParticleManagerGetSharedPyramidMeshElement(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  if (!v1)
  {
    v7 = 17039364;
    *bytes = 0x300030200020100;
    v3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
    v1 = C3DMeshElementCreate(v3, v4);
    C3DMeshElementInit(v1, 0, 4, v3, 1);
    CFRelease(v3);
    *(a1 + 88) = v1;
  }

  return v1;
}

uint64_t C3DParticleManagerGetSharedPyramidStereoMeshElement(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 104);
  if (!v1)
  {
    v6 = xmmword_21C281514;
    v7 = 0x609050908050807;
    v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v6, 24);
    v1 = C3DMeshElementCreate(v3, v4);
    C3DMeshElementInit(v1, 0, 4, v3, 1);
    CFRelease(v3);
    *(a1 + 104) = v1;
  }

  return v1;
}

uint64_t C3DParticleManagerGetSharedQuadsStereoMeshElement(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  if (!v1)
  {
    v7 = 67438340;
    *bytes = 0x706000103000302;
    v3 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
    v1 = C3DMeshElementCreate(v3, v4);
    C3DMeshElementInit(v1, 0, 3, v3, 1);
    CFRelease(v3);
    *(a1 + 48) = v1;
  }

  return v1;
}

uint64_t C3DParticleManagerGetSharedQuadStereoMeshSource(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a1 + 96;
    if (!*(a1 + 96))
    {
      v9 = xmmword_21C281558;
      v10 = unk_21C281568;
      v11 = xmmword_21C281578;
      v7 = xmmword_21C281538;
      v8 = unk_21C281548;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 80);
      v4 = v3;
      v5 = 10;
LABEL_6:
      *v2 = C3DMeshSourceCreate(v3, 3, v5, 2, 1);
      CFRelease(v4);
    }
  }

  else
  {
    v2 = a1 + 72;
    if (!*(a1 + 72))
    {
      v7 = xmmword_21C281588;
      v8 = unk_21C281598;
      v9 = xmmword_21C2815A8;
      v10 = unk_21C2815B8;
      v3 = CFDataCreate(*MEMORY[0x277CBECE8], &v7, 64);
      v4 = v3;
      v5 = 8;
      goto LABEL_6;
    }
  }

  return *v2;
}

const void *C3DParticleManagerComputeTechniqueForSystem(uint64_t a1, __n128 *a2, char a3, uint64_t a4, int a5, int a6)
{
  v122[0] = a3;
  RenderContext = C3DEngineContextGetRenderContext(a4, a2);
  RenderingMode = C3DParticleSystemGetRenderingMode(a2, v12);
  v15 = RenderingMode;
  v16 = 0;
  if (RenderingMode <= 1)
  {
    if (!RenderingMode)
    {
      v17 = @"C3D-ParticleSystem";
      goto LABEL_12;
    }

    if (RenderingMode == 1)
    {
      v17 = @"C3D-ParticleSystem_PointSprite";
      goto LABEL_12;
    }
  }

  else
  {
    if ((RenderingMode - 2) < 2)
    {
      v17 = @"C3D-ParticleSystem_Trail";
      goto LABEL_12;
    }

    if (RenderingMode == 4)
    {
      v18 = scn_default_log(RenderingMode, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        C3DParticleManagerComputeTechniqueForSystem_cold_1(v18, v14, v19, v20, v21, v22, v23, v24);
      }

      v17 = &stru_282DCC058;
LABEL_12:
      BlackPassEnabled = C3DParticleSystemGetBlackPassEnabled(a2, v14);
      LightingEnabled = C3DParticleSystemGetLightingEnabled(a2, v26);
      if (C3DParticleSystemGetParticleColorController(a2, v27))
      {
        v29 = 1;
      }

      else
      {
        v29 = C3DParticleSystemGetParticleOpacityController(a2, v28) != 0;
      }

      v120 = v29;
      v32 = C3DParticleSystemGetStretchFactor(a2, v28) != 0.0 && v15 == 0;
      v119 = v32;
      HasTextureAnimation = C3DParticleSystemHasTextureAnimation(a2, v30);
      SoftParticlesEnabled = C3DParticleSystemGetSoftParticlesEnabled(a2, v33);
      BlendMode = C3DParticleSystemGetBlendMode(a2, v35);
      OrientationMode = C3DParticleSystemGetOrientationMode(a2, v36);
      v115 = a5 == 2;
      v114 = a5 == 1;
      v113 = a6 == 2;
      if (([(SCNMTLRenderContext *)RenderContext enableARMode]& 1) != 0)
      {
        v37 = 1;
      }

      else
      {
        v37 = [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing];
      }

      v112 = v37;
      EyeCount = C3DEngineContextGetEyeCount(a4);
      v40 = vmvnq_s8(vceqzq_f32(C3DParticleSystemGetOrientationDirection(a2, v38)));
      v40.i32[3] = v40.i32[2];
      if ((vmaxvq_u32(v40) & 0x80000000) != 0)
      {
        OrientationMode = 4;
      }

      ImageSequenceAnimationMode = C3DParticleSystemGetImageSequenceAnimationMode(a2, v39);
      HasCubeMapTexture = C3DParticleSystemHasCubeMapTexture(a2, v41);
      IsLocal = C3DParticleSystemGetIsLocal(a2, v42);
      v108 = IsLocal;
      v44 = *MEMORY[0x277CBECE8];
      if (SoftParticlesEnabled)
      {
        v45 = 68;
      }

      else
      {
        v45 = 45;
      }

      if (IsLocal)
      {
        v46 = 76;
      }

      else
      {
        v46 = 71;
      }

      if (HasTextureAnimation)
      {
        v47 = ImageSequenceAnimationMode;
      }

      else
      {
        v47 = 0;
      }

      v103 = v45;
      v102 = v47;
      v48 = 65;
      if (!HasTextureAnimation)
      {
        v48 = 45;
      }

      v49 = 66;
      if (!BlackPassEnabled)
      {
        v49 = 45;
      }

      v50 = 70;
      if (!v122[0])
      {
        v50 = 45;
      }

      v51 = 75;
      if (!HasCubeMapTexture)
      {
        v51 = 45;
      }

      v52 = 83;
      if (!v119)
      {
        v52 = 45;
      }

      if (LightingEnabled)
      {
        v53 = 76;
      }

      else
      {
        v53 = 45;
      }

      v54 = 67;
      if (!v120)
      {
        v54 = 45;
      }

      v55 = 82;
      if (!v112)
      {
        v55 = 45;
      }

      v56 = 77;
      if (!v113)
      {
        v56 = 45;
      }

      v57 = 95;
      if (v114)
      {
        v57 = 89;
      }

      v58 = 86;
      if (!v115)
      {
        v58 = 45;
      }

      v59 = CFStringCreateWithFormat(v44, 0, @"%@%1d%1d%c%c%c%c%c%c%c%c%c%c%c%1dO%1d%c%c", v17, BlendMode, EyeCount, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v102, OrientationMode, v103, v46);
      v60 = CFDictionaryGetValue(*(a1 + 112), v59);
      v61 = SoftParticlesEnabled;
      v16 = v60;
      if (v60)
      {
        goto LABEL_156;
      }

      v105 = v61;
      if (RenderContext)
      {
        v62 = objc_alloc_init(MEMORY[0x277CD6D70]);
        [v62 setConstantValue:&LightingEnabled type:53 withName:@"enableLighting"];
        [v62 setConstantValue:&v120 type:53 withName:@"enableColorRamp"];
        [v62 setConstantValue:&HasCubeMapTexture type:53 withName:@"enableCubeMap"];
        [v62 setConstantValue:&v119 type:53 withName:@"enableStretch"];
        [v62 setConstantValue:&HasTextureAnimation type:53 withName:@"enableAnimation"];
        [v62 setConstantValue:v122 type:53 withName:@"enableFog"];
        [v62 setConstantValue:&v115 type:53 withName:@"enableMultipleViewport"];
        [v62 setConstantValue:&v114 type:53 withName:@"enableLayeredRendering"];
        [v62 setConstantValue:&v113 type:53 withName:@"useVertexAmplification"];
        [v62 setConstantValue:&EyeCount type:33 withName:@"eyeCount"];
        [v62 setConstantValue:&v112 type:53 withName:@"ARMode"];
        [v62 setConstantValue:&v108 type:53 withName:@"isLocal"];
        [v62 setConstantValue:&OrientationMode type:33 withName:@"orientation"];
        [v62 setConstantValue:&ImageSequenceAnimationMode type:33 withName:@"animationMode"];
        [v62 setConstantValue:&BlendMode type:33 withName:@"blendMode"];
        if ((a5 - 1) >= 2)
        {
          v63 = @"uberparticle_vert";
        }

        else
        {
          v63 = @"uberparticle_stereo_vert";
        }

        if (HasCubeMapTexture)
        {
          v64 = @"uberparticleCube_frag";
        }

        else
        {
          v64 = @"uberparticle_frag";
        }

        v65 = C3DFXMetalProgramCreateFromLibraryWithConstants(v63, v64, 0, v62, 0, 0);
      }

      else
      {
        v67 = [(__CFString *)v17 stringByAppendingString:@".vsh"];
        v68 = [(__CFString *)v17 stringByAppendingString:@".fsh"];
        v69 = C3DGetTextResourceWithNameAllowingHotReload(v67);
        v70 = C3DGetTextResourceWithNameAllowingHotReload(v68);
        if (!v69 || !v70)
        {
          v76 = scn_default_log(v70, v71);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            C3DParticleManagerComputeTechniqueForSystem_cold_2(v17, v76);
          }

          v16 = 0;
          goto LABEL_156;
        }

        value = v70;
        v72 = MEMORY[0x277CBF128];
        Mutable = CFArrayCreateMutable(v44, 0, MEMORY[0x277CBF128]);
        v74 = CFArrayCreateMutable(v44, 0, v72);
        CFArrayAppendValue(Mutable, @"precision highp float;\n");
        CFArrayAppendValue(v74, @"precision mediump float;\n");
        if (LightingEnabled == 1)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_LIGHTING");
        }

        if (v120)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_COLOR_RAMP");
        }

        if (HasCubeMapTexture == 1)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_CUBE_MAP");
          CFArrayAppendValue(v74, @"#define ENABLE_CUBE_MAP");
        }

        if (v119)
        {
          v75 = @"#define ENABLE_STRETCH";
        }

        else if (OrientationMode - 1 > 2)
        {
          v75 = @"#define ENABLE_BILLBOARD_SCREEN";
        }

        else
        {
          v75 = off_2782FD150[OrientationMode - 1];
        }

        CFArrayAppendValue(Mutable, v75);
        if (v122[0] == 1)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_FOG");
          CFArrayAppendValue(v74, @"#define ENABLE_FOG");
        }

        if (HasTextureAnimation)
        {
          v77 = CFStringCreateWithFormat(v44, 0, @"#define ENABLE_ANIMATION %d", ImageSequenceAnimationMode);
          CFArrayAppendValue(Mutable, v77);
          CFArrayAppendValue(v74, v77);
          CFRelease(v77);
        }

        if (v105)
        {
          CFArrayAppendValue(Mutable, @"#define ENABLE_SOFT");
          CFArrayAppendValue(v74, @"#define ENABLE_SOFT");
        }

        CFArrayAppendValue(Mutable, v69);
        v78 = CFStringCreateByCombiningStrings(v44, Mutable, @"\n");
        CFRelease(Mutable);
        CFArrayAppendValue(v74, value);
        v79 = CFStringCreateByCombiningStrings(v44, v74, @"\n");
        CFRelease(v74);
        v65 = C3DFXGLSLProgramCreateWithSources(v78, v79);
        CFRelease(v78);
        CFRelease(v79);
      }

      if (BlackPassEnabled)
      {
        v80 = 2;
      }

      else
      {
        v80 = 1;
      }

      v16 = C3DFXTechniqueCreateWithCapacity(v80, v66);
      CFDictionarySetValue(*(a1 + 112), v59, v16);
      CFRelease(v16);
      C3DFXProgramSetOpaque(v65, 0);
      C3DFXProgramSetClientProgram(v65, 0);
      memset(v107, 0, 28);
      C3DRasterizerStatesDescGetDefault(v107);
      BYTE9(v107[0]) = C3DParticleSystemGetWritesToDepthBuffer(a2, v81);
      LODWORD(v107[0]) = 2;
      v106[0] = v107[0];
      *(v106 + 12) = *(v107 + 12);
      v82 = C3DRasterizerStatesCreate(v106);
      v84 = v82;
      v85 = 0;
      if (BlackPassEnabled)
      {
        v85 = C3DFXPassCreate();
        C3DFXPassSetClearBehavior(v85, 0, 0, 0);
        C3DFXPassSetName(v85, @"BlackPass");
        C3DFXPassSetInstallViewport(v85, 0);
        C3DFXPassSetDrawInstruction(v85, 1);
        v86 = C3DFXPassSetProgram(v85, v65);
        v88 = C3DBlendStatesDefaultOverBlack(v86, v87);
        C3DFXPassSetBlendStates(v85, v88);
        C3DFXPassSetRasterizerStates(v85, v84);
        C3DFXTechniqueAppendPass(v16, v85);
        CFRelease(v85);
      }

      v89 = 0;
      if (BlendMode > 2)
      {
        switch(BlendMode)
        {
          case 3:
            v90 = C3DBlendStatesDefaultScreen(v82, v83);
            break;
          case 4:
            v90 = C3DBlendStatesDefaultOver(v82, v83);
            break;
          case 5:
            v90 = C3DBlendStatesDefaultReplace(v82, v83);
            break;
          default:
            goto LABEL_109;
        }
      }

      else if (BlendMode)
      {
        if (BlendMode == 1)
        {
          v90 = C3DBlendStatesDefaultSubtract(v82, v83);
        }

        else
        {
          if (BlendMode != 2)
          {
            goto LABEL_109;
          }

          v90 = C3DBlendStatesDefaultMultiplicative(v82, v83);
        }
      }

      else
      {
        v90 = C3DBlendStatesDefaultAdditive(v82, v83);
      }

      v89 = v90;
LABEL_109:
      v91 = C3DFXPassCreate();
      C3DFXPassSetClearBehavior(v91, 0, 0, 0);
      C3DFXPassSetName(v91, v59);
      C3DFXPassSetInstallViewport(v91, 0);
      C3DFXPassSetDrawInstruction(v91, 1);
      C3DFXPassSetRasterizerStates(v91, v84);
      C3DFXPassSetBlendStates(v91, v89);
      C3DFXPassSetProgram(v91, v65);
      C3DRasterizerStatesRelease(v84);
      CFRelease(v65);
      C3DFXTechniqueAppendPass(v16, v91);
      CFRelease(v91);
      if (RenderContext)
      {
        if ((HasCubeMapTexture & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        C3DFXTechniqueDeclareSymbol(v16, @"viewTransform", 11, 1u);
        C3DFXPassBindInputWithSymbol(v91, @"viewTransform", @"viewTransform");
        if (v85)
        {
          C3DFXPassBindInputWithSymbol(v85, @"viewTransform", @"viewTransform");
        }

        if ((HasCubeMapTexture & 1) == 0)
        {
LABEL_119:
          if (LightingEnabled == 1)
          {
            C3DFXTechniqueDeclareSymbol(v16, @"u_lightPosition0", 9, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_lightPosition0", @"u_lightPosition0");
            if (v85)
            {
              C3DFXPassBindInputWithSymbol(v85, @"u_lightPosition0", @"u_lightPosition0");
              C3DFXTechniqueDeclareSymbol(v16, @"u_lightColor0", 13, 1u);
              C3DFXPassBindInputWithSymbol(v91, @"u_lightColor0", @"u_lightColor0");
              v92 = v85;
            }

            else
            {
              C3DFXTechniqueDeclareSymbol(v16, @"u_lightColor0", 13, 1u);
              v92 = v91;
            }

            C3DFXPassBindInputWithSymbol(v92, @"u_lightColor0", @"u_lightColor0");
          }

          if (v120)
          {
            C3DFXTechniqueDeclareSymbol(v16, @"u_colorRamp", 5, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_colorRamp", @"u_colorRamp");
            if (v85)
            {
              C3DFXPassBindInputWithSymbol(v85, @"u_colorRamp", @"u_colorRamp");
            }
          }

          if (v119)
          {
            C3DFXTechniqueDeclareSymbol(v16, @"u_stretchFactor", 1, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_stretchFactor", @"u_stretchFactor");
            if (v85)
            {
              C3DFXPassBindInputWithSymbol(v85, @"u_stretchFactor", @"u_stretchFactor");
            }
          }

          if (HasTextureAnimation)
          {
            C3DFXTechniqueDeclareSymbol(v16, @"u_frameSize", 10, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_frameSize", @"u_frameSize");
            if (v85)
            {
              C3DFXPassBindInputWithSymbol(v85, @"u_frameSize", @"u_frameSize");
            }
          }

          v93 = v105;
          if (RenderContext)
          {
            v93 = 0;
          }

          if (v93 == 1)
          {
            C3DFXTechniqueDeclareSymbol(v16, @"u_softParameters", 10, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_softParameters", @"u_softParameters");
            if (v85)
            {
              C3DFXPassBindInputWithSymbol(v85, @"u_softParameters", @"u_softParameters");
              C3DFXPassBindInputWithSemantic(v91, @"u_invProj", 16);
              C3DFXPassBindInputWithSemantic(v85, @"u_invProj", 16);
              C3DFXPassBindInputWithSemantic(v91, @"u_depthSampler0", 28);
              v94 = v85;
            }

            else
            {
              C3DFXPassBindInputWithSemantic(v91, @"u_invProj", 16);
              v94 = v91;
            }

            C3DFXPassBindInputWithSemantic(v94, @"u_depthSampler0", 28);
          }

          if (v122[0] == 1)
          {
            C3DFXTechniqueDeclareSymbol(v16, @"u_fogParameters", 9, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_fogParameters", @"u_fogParameters");
            if (!v85)
            {
              C3DFXTechniqueDeclareSymbol(v16, @"u_fogColor", 13, 1u);
              C3DFXPassBindInputWithSymbol(v91, @"u_fogColor", @"u_fogColor");
              if (RenderContext)
              {
LABEL_149:
                C3DFXTechniqueDeclareSymbol(v16, @"u_textureSampler0", 5, 1u);
                C3DFXPassBindInputWithSymbol(v91, @"u_textureSampler0", @"u_textureSampler0");
                if (v85)
                {
                  C3DFXPassBindInputWithSymbol(v85, @"u_textureSampler0", @"u_textureSampler0");
                }

                v97 = C3DFXSamplerCreate(v96);
                C3DFXTechniqueSetValueForSymbol(v16, @"u_textureSampler0", v97);
                if (HasTextureAnimation)
                {
                  v100 = C3DTextureSamplerTrilinearRepeatNoAnisotropy(v98, v99);
                }

                else
                {
                  v100 = C3DTextureSamplerBilinearMipMapClampNoAnisotropy(v98, v99);
                }

                C3DFXSamplerSetTextureSampler(v97, v100);
                CFRelease(v97);
                C3DFXPassSetWillExecuteCallback(v91, _willExecuteParticleSystemPass);
                C3DFloorSetReflectionCategoryBitMask(v91, _executeParticleSystemPass);
                if (v85)
                {
                  C3DFXPassSetWillExecuteCallback(v85, _willExecuteParticleSystemPass);
                  C3DFloorSetReflectionCategoryBitMask(v85, _executeParticleSystemPass);
                }

LABEL_156:
                CFRelease(v59);
                return v16;
              }

              v95 = v91;
LABEL_148:
              C3DFXPassBindInputWithSemantic(v95, @"u_projectionTransform", 10);
              goto LABEL_149;
            }

            C3DFXPassBindInputWithSymbol(v85, @"u_fogParameters", @"u_fogParameters");
            C3DFXTechniqueDeclareSymbol(v16, @"u_fogColor", 13, 1u);
            C3DFXPassBindInputWithSymbol(v91, @"u_fogColor", @"u_fogColor");
            C3DFXPassBindInputWithSymbol(v85, @"u_fogColor", @"u_fogColor");
          }

          if (RenderContext)
          {
            goto LABEL_149;
          }

          C3DFXPassBindInputWithSemantic(v91, @"u_projectionTransform", 10);
          if (!v85)
          {
            goto LABEL_149;
          }

          v95 = v85;
          goto LABEL_148;
        }

        C3DFXTechniqueDeclareSymbol(v16, @"u_viewToCubeWorld", 11, 1u);
        C3DFXPassBindInputWithSymbol(v91, @"u_viewToCubeWorld", @"u_viewToCubeWorld");
        if (v85)
        {
          C3DFXPassBindInputWithSymbol(v85, @"u_viewToCubeWorld", @"u_viewToCubeWorld");
        }
      }

      C3DFXTechniqueDeclareSymbol(v16, @"u_fresnelExponent", 1, 1u);
      C3DFXPassBindInputWithSymbol(v91, @"u_fresnelExponent", @"u_fresnelExponent");
      if (v85)
      {
        C3DFXPassBindInputWithSymbol(v85, @"u_fresnelExponent", @"u_fresnelExponent");
      }

      goto LABEL_119;
    }
  }

  return v16;
}

CFTypeRef _willExecuteParticleSystemPass(void *a1, uint64_t a2)
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  v4 = *(*(v3 + 48) + 48);
  Scene = C3DEngineContextGetScene(a1[3], a2);
  v7 = Scene;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[4];
  if (!v10)
  {
    v11 = scn_default_log(Scene, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _willExecuteParticleSystemPass_cold_1(v11);
    }
  }

  v12 = v10[62];
  v101 = v10[61];
  v102 = v12;
  v13 = v10[64];
  v103 = v10[63];
  v104 = v13;
  if (C3DEngineContextGetRenderContext(a1[3], v6))
  {
    if ((C3DParticleSystemHasCubeMapTexture(v4, v14) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v75.f32[0] = C3DParticleSystemGetFresnelExponent(v4, v15) * 0.5;
    C3DFXTechniqueSetValueForSymbol(v8, @"u_fresnelExponent", &v75);
    goto LABEL_15;
  }

  v75 = v101;
  v76 = v102;
  v77 = v103;
  v78 = v104;
  IsLocal = C3DParticleSystemGetIsLocal(v4, v14);
  if (v9)
  {
    v18 = IsLocal;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(v9, v17);
    C3DMatrix4x4Mult(WorldMatrix, &v75, &v75);
  }

  C3DFXTechniqueSetValueForSymbol(v8, @"viewTransform", &v75);
  if (C3DParticleSystemHasCubeMapTexture(v4, v20))
  {
    v75 = v101;
    v76 = v102;
    v77 = v103;
    v78 = v104;
    C3DSceneComputeViewToCubemapMatrix(v7, &v75);
    C3DFXTechniqueSetValueForSymbol(v8, @"u_viewToCubeWorld", &v75);
    goto LABEL_14;
  }

LABEL_15:
  if (C3DParticleSystemGetLightingEnabled(v4, v15))
  {
    LightingSystem = C3DSceneGetLightingSystem(v7, v21);
    v92 = 0;
    v93 = &v92;
    v94 = 0x3010000000;
    v95 = &unk_21C362C36;
    v96 = xmmword_21C2814B0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x3020000000;
    v100 = xmmword_21C2814A0;
    if (C3DEngineContextIsClusteredShadingEnabled(a1[3]))
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        CategoryBitMask = C3DNodeGetCategoryBitMask(v24, v23);
      }

      else
      {
        CategoryBitMask = -1;
      }

      v36 = a1[3];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = ___willExecuteParticleSystemPass_block_invoke;
      v84[3] = &unk_2782FD130;
      v85 = v101;
      v86 = v102;
      v87 = v103;
      v88 = v104;
      v89 = &v97;
      v90 = &v92;
      v91 = CategoryBitMask;
      C3DLightingSystemEnumerateGlobalLights(LightingSystem, v36, v84);
      C3DFXTechniqueSetValueForSymbol(v8, @"u_lightPosition0", &v98[2]);
      C3DFXTechniqueSetValueForSymbol(v8, @"u_lightColor0", v93 + 4);
    }

    else
    {
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      C3DLightingSystemGetLightingSetDesc(LightingSystem, v3 + 56, &v75);
      v27 = v75.i64[1];
      if (v75.i64[1])
      {
        if (C3DLightGetType(v75.i64[1], v26) == 1)
        {
          v34 = v98;
          v28 = vdupq_n_s32(0x47C35000u);
          v35 = vmulq_f32(*(*(&v79 + 1) + 32), v28);
        }

        else
        {
          v35 = *(*(&v79 + 1) + 16);
          v34 = v98;
        }

        v34[2] = v35;
        C3DLightGetColorModulatedByIntensity(v27, v35, v28, v29, v30, v31, v32, v33);
        v37 = v93;
        v93[4] = v38;
        v37[5] = v39;
      }

      C3DFXTechniqueSetValueForSymbol(v8, @"u_lightPosition0", &v98[2]);
      C3DFXTechniqueSetValueForSymbol(v8, @"u_lightColor0", v93 + 4);
    }

    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v92, 8);
  }

  if (C3DParticleSystemHasFogSupport(v4))
  {
    PointOfViewScale = C3DEngineContextGetPointOfViewScale(a1[3], v40);
    *v43.f32 = C3DSceneComputeFogParameters(v7, v42, PointOfViewScale);
    v73 = v43.f32[0];
    v75 = v43;
    FogColor = C3DSceneGetFogColor(v7, v44);
    v75.f32[0] = -v73;
    C3DFXTechniqueSetValueForSymbol(v8, @"u_fogParameters", &v75);
    C3DFXTechniqueSetValueForSymbol(v8, @"u_fogColor", FogColor);
  }

  if (C3DParticleSystemGetSoftParticlesEnabled(v4, v40))
  {
    Viewport = C3DEngineContextGetViewport(a1[3]);
    __asm { FMOV            V1.2S, #1.0 }

    Viewport.n128_u64[0] = vdiv_f32(_D1, *&vextq_s8(Viewport, Viewport, 8uLL));
    v53.i64[0] = 0x400000003F800000;
    v53.i64[1] = Viewport.n128_u64[0];
    v75 = v53;
    C3DFXTechniqueSetValueForSymbol(v8, @"u_softParameters", &v75);
  }

  if (C3DParticleSystemGetParticleColorController(v4, v46) || C3DParticleSystemGetParticleOpacityController(v4, v54))
  {
    ColorRamp = C3DParticleSystemGetColorRamp(v4, v54);
    C3DFXTechniqueSetValueForSymbol(v8, @"u_colorRamp", ColorRamp);
  }

  RenderingMode = C3DParticleSystemGetRenderingMode(v4, v54);
  if (C3DParticleSystemGetStretchFactor(v4, v57) != 0.0 && !RenderingMode)
  {
    v75.i32[0] = C3DParticleSystemGetStretchFactor(v4, v58);
    C3DFXTechniqueSetValueForSymbol(v8, @"u_stretchFactor", &v75);
  }

  if (C3DParticleSystemHasTextureAnimation(v4, v58))
  {
    ImageSequenceRowCount = C3DParticleSystemGetImageSequenceRowCount(v4, v59);
    ImageSequenceColumnCount = C3DParticleSystemGetImageSequenceColumnCount(v4, v61);
    *&v63 = 1.0 / ImageSequenceColumnCount;
    *&v64 = 1.0 / ImageSequenceRowCount;
    v72 = v63;
    v74 = v64;
    v65.i64[0] = __PAIR64__(v64, v63);
    v65.f32[2] = ImageSequenceColumnCount;
    v71 = (ImageSequenceColumnCount * ImageSequenceRowCount);
    v65.f32[3] = v71;
    v75 = v65;
    if (C3DWasLinkedBeforeMajorOSYear2016(ImageSequenceColumnCount, v66))
    {
      v67.i64[0] = __PAIR64__(v72, v74);
      v67.f32[2] = ImageSequenceRowCount;
      v67.f32[3] = v71;
      v75 = v67;
    }

    C3DFXTechniqueSetValueForSymbol(v8, @"u_frameSize", &v75);
  }

  ParticleTexture = C3DParticleSystemGetParticleTexture(v4, v59);
  if (!ParticleTexture)
  {
    ParticleTexture = C3DImageGetDefault();
  }

  ValueForSymbol = C3DFXTechniqueGetValueForSymbol(v8, @"u_textureSampler0", 0);
  return C3DFXSamplerSetImage(ValueForSymbol, ParticleTexture);
}

void sub_21BFB37A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

double _executeParticleSystemPass(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 48);
  v3 = CFGetTypeID(v2);
  TypeID = C3DParticleSystemInstanceGetTypeID(v3, v4);
  if (v3 != TypeID)
  {
    v7 = scn_default_log(TypeID, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _executeParticleSystemPass_cold_1(v7);
    }
  }

  *&result = C3DParticleSystemInstanceDraw(v2, *(a1 + 24), *(a1 + 64), *a1, *(a1 + 80), *(a1 + 81)).n128_u64[0];
  return result;
}

void C3DParticleManagerEnumerateInstancesWithLightEmission(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = ValueAtIndex[6];
        if (v10)
        {
          if (C3DParticleSystemGetLightEmissionRadiusFactor(v10, v8) > 0.0)
          {
            (*(a2 + 16))(a2, v9);
          }
        }
      }
    }
  }
}

void ___willExecuteParticleSystemPass_block_invoke(float32x4_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2)
  {
    v7 = a2;
    while (1)
    {
      v8 = *a4;
      if ((result[7].i64[0] & C3DLightGetCategoryBitMask(*a4, a2)) != 0)
      {
        break;
      }

      ++a3;
      ++a4;
      if (!--v7)
      {
        return;
      }
    }

    v30 = result[3];
    v32 = result[2];
    v28 = result[5];
    v29 = result[4];
    WorldMatrix = C3DNodeGetWorldMatrix(*a3, a2);
    v11 = 0;
    v12 = WorldMatrix[1];
    v13 = WorldMatrix[2];
    v14 = WorldMatrix[3];
    v34[0] = *WorldMatrix;
    v34[1] = v12;
    v34[2] = v13;
    v34[3] = v14;
    memset(v35, 0, sizeof(v35));
    v36 = 0u;
    v37 = 0u;
    do
    {
      v35[v11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v34[v11])), v30, *&v34[v11], 1), v29, v34[v11], 2), v28, v34[v11], 3);
      ++v11;
    }

    while (v11 != 4);
    v31 = v37;
    v33 = v36;
    if (C3DLightGetType(v8, v10) == 1)
    {
      v17 = v33;
      v21 = vmulq_f32(v17, v17);
      *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
      *v21.f32 = vrsqrte_f32(v22);
      *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
      v16 = vmul_f32(*v21.f32, *v21.f32);
      *(*(result[6].i64[0] + 8) + 32) = vmulq_n_f32(v33, vmul_f32(*v21.f32, vrsqrts_f32(v22, v16)).f32[0]);
      v23 = *(result[6].i64[0] + 8);
      v15 = vdupq_n_s32(0x47C35000u);
      v24 = vmulq_f32(v23[2], v15);
    }

    else
    {
      v23 = *(result[6].i64[0] + 8);
      v24 = v31;
    }

    v23[2] = v24;
    C3DLightGetColorModulatedByIntensity(v8, v24, v15, *&v16, *v17.i64, v18, v19, v20);
    v25 = *(result[6].i64[1] + 8);
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
  }
}

uint64_t C3DMeshSourceCreatedDeindexedCopy(const __C3DMeshSource *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v24 = 0u;
  v25 = 0u;
  C3DMeshSourceGetContent(a1, a2, &v24);
  v11 = BYTE6(v25);
  v12 = v9;
  v13 = BYTE6(v25) * v9;
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  v15 = v14;
  if (v9)
  {
    v16 = v9;
    v17 = v14;
    do
    {
      v18 = *a3++;
      memcpy(v17, (v24 + v18 * v11), v11);
      v17 += v11;
      --v16;
    }

    while (v16);
  }

  v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, v13, *MEMORY[0x277CBECF0]);
  Semantic = C3DMeshSourceGetSemantic(a1, v20);
  v22 = C3DMeshSourceCreateWithData(Semantic, v19, BYTE7(v25), BYTE8(v25), v12, v11, 0);
  CFRelease(v19);
  return v22;
}

uint64_t SCNMTLComputeCommandEncoder::setBuffers(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = result + 248 + 8 * a4;
    v7 = result + 8 * a4;
    while (1)
    {
      v8 = *(a2 + 8 * v5);
      v9 = *(a3 + 8 * v5);
      v10 = v5 + a4;
      if (*(v7 + 8 * v5) != v8)
      {
        break;
      }

      v11 = v6;
      if (*(v7 + 8 * v5 + 248) != v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v5;
      v6 += 8;
      if (a5 == v5)
      {
        return result;
      }
    }

    *(v7 + 8 * v5) = v8;
    v11 = (result + 248 + 8 * v10);
LABEL_6:
    *v11 = v9;
    *(result + 1704 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (a4 + v5);
    goto LABEL_7;
  }

  return result;
}

uint64_t C3DFXTechniqueCreateJittering()
{
  v0 = C3DDictionaryNamed(@"C3DFXJitteringPass.plist");
  v1 = C3DFXTechniqueCreateWithDescription(v0, 0);
  PassNamed = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterCopyFirstFrame");
  C3DFXPassSetInitializeCallback(PassNamed, _initializeCopy);
  v3 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterToEven");
  C3DFXPassSetWillExecuteCallback(v3, _willExecuteJittering);
  C3DFXPassSetInitializeCallback(v3, _initialize);
  v4 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterToOdd");
  C3DFXPassSetWillExecuteCallback(v4, _willExecuteJittering);
  C3DFXPassSetInitializeCallback(v4, _initialize);
  v5 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_JitterResolve");
  C3DFXPassSetWillExecuteCallback(v5, _willExecuteJitteringResolve);
  C3DFXPassSetInitializeCallback(v5, _initializeResolve);
  return v1;
}

void _initializeCopy(uint64_t *a1, int a2)
{
  if (a2)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-Copy");
  }

  else
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"Copy_vert", @"Copy_frag");
  }

  v4 = BuiltInProgramWithName;
  C3DFXPassSetProgram(*a1, BuiltInProgramWithName);
  C3DFXProgramSetClientProgram(v4, *(*a1 + 80));
  if (v4)
  {

    CFRelease(v4);
  }
}

float _willExecuteJittering(uint64_t a1)
{
  JitteringStep = C3DEngineContextGetJitteringStep(*(a1 + 24));
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-jitter-factor", &JitteringStep);
  return result;
}

void _initialize(uint64_t *a1, int a2)
{
  if (a2)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-IncrementalAverage");
  }

  else
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"IncrementalAverage_vert", @"IncrementalAverage_frag");
  }

  v4 = BuiltInProgramWithName;
  C3DFXPassSetProgram(*a1, BuiltInProgramWithName);
  C3DFXProgramSetClientProgram(v4, *(*a1 + 80));
  if (v4)
  {

    CFRelease(v4);
  }
}

void _initializeResolve(uint64_t *a1, int a2)
{
  if (a2)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-Copy");
  }

  else
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"Copy_vert", @"Copy_frag");
  }

  v4 = BuiltInProgramWithName;
  C3DFXPassSetProgram(*a1, BuiltInProgramWithName);
  C3DFXProgramSetClientProgram(v4, *(*a1 + 80));
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t C3DBufferObjectGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DBufferObjectGetTypeID_onceToken != -1)
  {
    C3DBufferObjectGetTypeID_cold_1();
  }

  return C3DBufferObjectGetTypeID_typeID;
}

CFStringRef _C3DBufferObjectCFCopyDebugDescription(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  ID = C3DVRAMResourceGetID(a1, v3);
  v5 = a1[14];
  v6 = a1[16];
  v7 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<C3DBufferObject vbo:%ld addr:%p lockCount:%d target:%d retainCount:%d>", ID, a1, v5, v6, v7);
}

uint64_t __C3DBufferObjectGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DBufferObjectGetTypeID_typeID = result;
  return result;
}

uint64_t C3DBufferObjectCreate(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if (C3DBufferObjectGetTypeID_onceToken != -1)
  {
    C3DBufferObjectGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DBufferObjectGetTypeID_typeID, 64);
  *(Instance + 68) = a3;
  *(Instance + 40) = a4;
  C3DVRAMResourceSetID(Instance, v7);
  *(Instance + 64) = v6;
  return Instance;
}

uint64_t C3DBufferObjectGetBufferID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DVRAMResourceGetID(a1, a2);
}

uint64_t C3DBufferObjectGetTarget(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DBufferObjectGetSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextDeleteBufferObject_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 68);
}

uint64_t (*C3DConvertGetConverter(int a1, int a2))(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a1 <= 23)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        if (a2 == 40)
        {
          v3 = C3DConvert_short2n_to_float2;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 36;
        v5 = C3DConvert_ushort2n_to_float2;
      }

      else
      {
        if (a1 != 9)
        {
          return 0;
        }

        if (a2 == 24)
        {
          v3 = C3DConvert_unorm10a2_to_float3;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 23;
        v5 = C3DConvert_snorm10a2_to_float3;
      }

      goto LABEL_35;
    }

    if (a1 == 10)
    {
      if (a2 == 28)
      {
        v3 = C3DConvert_char4n_to_float4;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 27;
      v5 = C3DConvert_uchar4n_to_float4;
      goto LABEL_35;
    }

    if (a1 != 23)
    {
      return 0;
    }

    v2 = C3DConvert_float3_to_snorm10a2;
LABEL_39:
    if (a2 == 9)
    {
      return v2;
    }

    return 0;
  }

  if (a1 <= 27)
  {
    if (a1 != 24)
    {
      if (a1 != 27)
      {
        return 0;
      }

      if (a2 == 10)
      {
        v3 = C3DConvert_float4_to_uchar4n;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 9;
      v5 = C3DConvert_float3_to_uchar4n;
      goto LABEL_35;
    }

    v2 = C3DConvert_float3_to_unorm10a2;
    goto LABEL_39;
  }

  if (a1 != 28)
  {
    if (a1 == 36)
    {
      v2 = C3DConvert_float2_to_ushort2n;
LABEL_42:
      if (a2 != 8)
      {
        return 0;
      }

      return v2;
    }

    if (a1 == 40)
    {
      v2 = C3DConvert_float2_to_short2n;
      goto LABEL_42;
    }

    return 0;
  }

  if (a2 == 10)
  {
    v3 = C3DConvert_float4_to_char4n;
  }

  else
  {
    v3 = 0;
  }

  v4 = a2 == 9;
  v5 = C3DConvert_float3_to_char4n;
LABEL_35:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t C3DConvert_float3_to_snorm10a2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V2.4S, #1.0
    }

    do
    {
      v14 = a3 + v5;
      v15.i64[0] = *v14;
      v15.i32[2] = *(v14 + 8);
      v15.i32[3] = 1.0;
      v16 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, _Q1), _Q2), xmmword_21C2815D0)), xmmword_21C2815E0);
      LODWORD(v14) = v16.i32[0] | (v16.i32[1] << 10);
      *v16.i8 = vshl_u32(*&vextq_s8(v16, v16, 8uLL), 0x1E00000014);
      *(result + v6) = v14 | v16.i32[0] | v16.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float3_to_uchar4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10 = a3 + v5;
      v11.i64[0] = *v10;
      v11.i64[1] = *(v10 + 8);
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v12, v8, v11)), v9);
      LODWORD(v10) = v13.i32[0] | (v13.i32[1] << 8);
      *v13.i8 = vshl_u32(*&vextq_s8(v13, v13, 8uLL), 0x1800000010);
      *(result + v6) = v10 | v13.i32[0] | v13.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float4_to_uchar4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v10, v8, *(a3 + v5))), v9);
      v12 = v11.i32[0] | (v11.i32[1] << 8);
      *v11.i8 = vshl_u32(*&vextq_s8(v11, v11, 8uLL), 0x1800000010);
      *(result + v6) = v12 | v11.i32[0] | v11.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float3_to_char4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = a3 + v5;
      v16.i64[0] = *v15;
      v16.i64[1] = *(v15 + 8);
      v17 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(v16)), v13, v16)), v14);
      LODWORD(v15) = v17.i32[0] | (v17.i32[1] << 8);
      *v17.i8 = vshl_u32(*&vextq_s8(v17, v17, 8uLL), 0x1800000010);
      *(result + v6) = v15 | v17.i32[0] | v17.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float4_to_char4n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(*(a3 + v5))), v13, *(a3 + v5))), v14);
      v16 = v15.i32[0] | (v15.i32[1] << 8);
      *v15.i8 = vshl_u32(*&vextq_s8(v15, v15, 8uLL), 0x1800000010);
      *(result + v6) = v16 | v15.i32[0] | v15.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float3_to_unorm10a2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    do
    {
      v8 = a3 + v5;
      v9.i64[0] = *v8;
      v9.i32[2] = *(v8 + 8);
      v9.i32[3] = 1.0;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vcvtq_s32_f32(vmlaq_f32(v10, xmmword_21C2815F0, v9));
      v10.i32[0] = vmovn_s32(v11).u32[0];
      *v11.i8 = vshl_u32(vand_s8(*&vextq_s8(v11, v11, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      *(result + v6) = v10.u16[0] | (v10.u16[1] << 10) | v11.i32[0] | v11.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float2_to_ushort2n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_float2_to_short2n(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_ushort2n_to_float2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_short2n_to_float2(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t C3DConvert_snorm10a2_to_float3(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3B004020u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_21C281600), xmmword_21C2815E0)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}