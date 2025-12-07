@interface SCNCommonProfileProgramGeneratorMetal
- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr;
- (__C3DFXProgram)_newProgramWithHashCodeWithFunctionConstants:(__C3DProgramHashCode *)constants engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr;
- (id)initAllowingHotReload:(BOOL)reload;
- (id)splitInputOutputStructsIfNeededForSourceCode:(id)code generatedFromReplacementStrings:(id)strings perPixelLighting:(BOOL)lighting clipDistanceCount:(unint64_t)count hasBezierCurveDeformer:(BOOL)deformer;
- (void)_loadSourceCode;
- (void)collectShaderForProgram:(__C3DFXMetalProgram *)program hashCode:(id)code newVertexFunctionName:(id)name newFragmentFunctionName:(id)functionName sourceCodeBlock:(id)block additionalFileBlock:(id)fileBlock;
- (void)dealloc;
- (void)emptyShaderCache;
@end

@implementation SCNCommonProfileProgramGeneratorMetal

- (void)_loadSourceCode
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_originalSourceCode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)emptyShaderCache
{
  [(SCNCommonProfileProgramGeneratorMetal *)self _loadSourceCode];
  v3.receiver = self;
  v3.super_class = SCNCommonProfileProgramGeneratorMetal;
  [(SCNCommonProfileProgramGenerator *)&v3 emptyShaderCache];
}

- (id)initAllowingHotReload:(BOOL)reload
{
  v8.receiver = self;
  v8.super_class = SCNCommonProfileProgramGeneratorMetal;
  v4 = [(SCNCommonProfileProgramGenerator *)&v8 init];
  v6 = v4;
  if (v4)
  {
    v4->_allowHotReload = reload;
    v4->_useFunctionConstants = C3DStandardShadersUseFunctionConstants(v4, v5);
    [(SCNCommonProfileProgramGeneratorMetal *)v6 _loadSourceCode];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNCommonProfileProgramGeneratorMetal;
  [(SCNCommonProfileProgramGenerator *)&v3 dealloc];
}

- (__C3DFXProgram)_newProgramWithHashCodeWithFunctionConstants:(__C3DProgramHashCode *)constants engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  constantsCopy = constants;
  ShaderModifiers = C3DProgramHashCodeGetShaderModifiers(constants, 0);
  v8 = 0;
  if (ShaderModifiers | C3DProgramHashCodeGetShaderModifiers(constants, 1))
  {
    *&v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    *(&v33 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *&v34 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *(&v42 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *&v43 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    *(&v43 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    __InjectAllModifiersIfNeeded(&constantsCopy);
    v9 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_metal");
    v10 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_util.h");
    v11 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_standard_lighting.h");
    v12 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_standard_constants.h");
    v13 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-PBR.metal");
    v14 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-Lighting.metal");
    v47[0] = v9;
    v47[1] = v10;
    v47[2] = v11;
    v47[3] = v12;
    v47[4] = v13;
    v47[5] = v14;
    v15 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {
      v15 = &stru_282DCC058;
    }

    v16 = *(&v33 + 1);
    v17 = *(&v34 + 1);
    if (!*(&v33 + 1))
    {
      v16 = &stru_282DCC058;
    }

    v47[6] = v15;
    v47[7] = v16;
    v18 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {
      v18 = &stru_282DCC058;
    }

    if (!*(&v34 + 1))
    {
      v17 = &stru_282DCC058;
    }

    v47[8] = v18;
    v47[9] = v17;
    if (v43)
    {
      v19 = v43;
    }

    else
    {
      v19 = &stru_282DCC058;
    }

    v47[10] = v19;
    v48 = vbslq_s8(vceqzq_s64(v35), vdupq_n_s64(&stru_282DCC058), v35);
    v20 = -[NSString scn_stringByReplacingCharactersInRanges:withStrings:](self->_originalSourceCode, "scn_stringByReplacingCharactersInRanges:withStrings:", self->_injectionPointRanges, [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:13]);
    if ([*(&v42 + 1) length])
    {
      [v32 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_VERTEX_EXTRA_ARGUMENTS"];
    }

    if ([v43 length])
    {
      [v32 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
    }

    if ([*(&v33 + 1) length])
    {
      [v32 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SHADER_MODIFIERS"];
    }

    if (*(&v32 + 1))
    {
      [*(&v32 + 1) addObject:@"USE_VERTEX_EXTRA_ARGUMENTS"];
      [*(&v32 + 1) addObject:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
      [*(&v32 + 1) addObject:@"USE_SHADER_MODIFIERS"];
    }

    [v32 setObject:&unk_282E0F8B8 forKeyedSubscript:@"METAL"];
    v21 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    [v21 appendString:@"////////////////////////////////////////////////\n"];
    [v21 appendFormat:@"// CommonProfile Shader v%d\n", 2];
    v8 = [v21 stringByAppendingString:v20];
  }

  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(constants);
  v24 = NodeHashCode;
  if ((NodeHashCode & 0x20) != 0)
  {
    v25 = scn_default_log(NodeHashCode, v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCodeWithFunctionConstants:engineContext:introspectionDataPtr:];
    }
  }

  ConstantsValues = C3DProgramHashCodeGetConstantsValues(constants);
  v27 = &kStandardPostTessellationVertexEntryPoint;
  if ((v24 & 4) == 0)
  {
    v27 = kStandardVertexEntryPoint;
  }

  v28 = C3DFXMetalProgramCreateFromSourceWithConstants(*v27, @"standard_frag", 0, v8, v32, *(&v32 + 1), ConstantsValues, 0);
  HashCode = C3DProgramHashCodeGetHashCode(constants);
  C3DFXMetalProgramUpdateHashWithCommonProfileHashCode(v28, HashCode);
  return v28;
}

- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr
{
  codeCopy = code;
  *(&v227[2] + 4) = *MEMORY[0x277D85DE8];
  if (self->_useFunctionConstants)
  {

    return [(SCNCommonProfileProgramGeneratorMetal *)self _newProgramWithHashCodeWithFunctionConstants:code engineContext:context introspectionDataPtr:ptr];
  }

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v202 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v195 = 0u;
  codeCopy2 = code;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{0, context, ptr}];
  v194 = v9;
  v11 = 0;
  if (C3DShouldCollectGeneratedShaders(v9, v10))
  {
    v11 = [MEMORY[0x277CBEB58] setWithCapacity:0];
    *&v195 = v11;
  }

  *&v199 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v196 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v196 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v199 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v200 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v200 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v201 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v201 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v202 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v203 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v204 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v204 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v205 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *(&v205 + 1) = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  *&v206 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  Conditioners = C3DProgramHashCodeGetConditioners(codeCopy);
  IsOpaque = C3DProgramHashCodeIsOpaque(codeCopy);
  HasTexture = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 7u);
  v13 = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 4u);
  v14 = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 5u);
  IsOne = C3DProgramHashCodeGlobalAlphaIsOne(codeCopy);
  HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(codeCopy);
  LightingEnabled = C3DProgramHashCodeGetLightingEnabled(codeCopy);
  CommonProfileHashCode = C3DProgramHashCodeGetCommonProfileHashCode(codeCopy);
  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(codeCopy);
  v189 = NodeHashCode;
  v169 = v14;
  v166 = v13;
  v17 = (NodeHashCode & 4) != 0 && C3DEngineContextHasFeatures(context, 16);
  EffectPropertyHashCode = C3DProgramHashCodeGetEffectPropertyHashCode(codeCopy, 2u);
  v167 = HasTexture;
  BYTE11(v206) = HasTexture & 1 | ((CommonProfileHashCode & 0x10) != 0);
  RenderMode = C3DProgramHashCodeGetRenderMode(codeCopy);
  EyeCount = C3DProgramHashCodeGetEyeCount(codeCopy);
  if (!RenderMode)
  {
    goto LABEL_23;
  }

  v21 = EyeCount;
  if (![v9 objectForKeyedSubscript:@"USE_POSITION"])
  {
    [v9 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_POSITION"];
  }

  [v9 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", v21), @"USE_MULTIPLE_RENDERING"}];
  EyeCount = C3DProgramHashCodeGetMultiVertexOutputStreamGenerator(codeCopy);
  if (EyeCount == 2)
  {
    v22 = @"USE_VERTEX_AMPLIFICATION";
    goto LABEL_17;
  }

  if (EyeCount == 1)
  {
    v22 = @"USE_INSTANCING";
LABEL_17:
    EyeCount = [v9 setObject:&stru_282DCC058 forKeyedSubscript:v22];
  }

  if (RenderMode == 1)
  {
    v23 = @"USE_LAYERED_RENDERING";
  }

  else
  {
    if (RenderMode != 2)
    {
      goto LABEL_23;
    }

    v23 = @"USE_MULTIPLE_VIEWPORTS_RENDERING";
  }

  EyeCount = [v9 setObject:&stru_282DCC058 forKeyedSubscript:v23];
LABEL_23:
  v173 = v17;
  if (v11)
  {
    [v11 addObject:@"USE_MULTIPLE_RENDERING"];
    [v11 addObject:@"USE_VERTEX_AMPLIFICATION"];
    [v11 addObject:@"USE_INSTANCING"];
    [v11 addObject:@"USE_LAYERED_RENDERING"];
    EyeCount = [v11 addObject:@"USE_MULTIPLE_VIEWPORTS_RENDERING"];
  }

  v24 = SCNMetalLanguageVersion(EyeCount, v20);
  Status = C3DSceneSourceGetStatus(codeCopy);
  if (v24 <= Status)
  {
    v26 = Status;
  }

  else
  {
    v26 = v24;
  }

  if ((RenderMode == 2 || RenderMode == 1) && v26 <= 0x20001)
  {
    v26 = 131073;
  }

  VertexAmplificationEnabled = C3DEngineContextGetVertexAmplificationEnabled(context);
  v28 = 131074;
  if (v26 > 0x20002)
  {
    v28 = v26;
  }

  if (!VertexAmplificationEnabled)
  {
    v28 = v26;
  }

  v181 = v28;
  v29 = __InjectAllModifiersIfNeeded(&codeCopy2);
  if ([v194 objectForKeyedSubscript:@"USE_MODIFIER_FRAMEBUFFER_COLOR0"])
  {
    HasFeatures = C3DEngineContextHasFeatures(context, 2048);
    if (HasFeatures)
    {
      [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"C3D_SUPPORTS_PROGRAMMABLE_BLENDING"];
    }

    else
    {
      v32 = scn_default_log(HasFeatures, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCode:engineContext:introspectionDataPtr:];
      }
    }
  }

  if (v195)
  {
    [v195 addObject:@"USE_MODIFIER_FRAMEBUFFER_COLOR0"];
    [v195 addObject:@"C3D_SUPPORTS_PROGRAMMABLE_BLENDING"];
  }

  v33 = CommonProfileHashCode & 0xF;
  if ([v194 objectForKeyedSubscript:@"USE_CLIP_DISTANCE3"])
  {
    [v194 setObject:@"4" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v34 = 4;
LABEL_51:
    v179 = v34;
    goto LABEL_52;
  }

  if ([v194 objectForKeyedSubscript:@"USE_CLIP_DISTANCE2"])
  {
    [v194 setObject:@"3" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v34 = 3;
    goto LABEL_51;
  }

  if ([v194 objectForKeyedSubscript:@"USE_CLIP_DISTANCE1"])
  {
    [v194 setObject:@"2" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v34 = 2;
    goto LABEL_51;
  }

  if ([v194 objectForKeyedSubscript:@"USE_CLIP_DISTANCE0"])
  {
    [v194 setObject:@"1" forKeyedSubscript:@"USE_CLIP_DISTANCE_COUNT"];
    v34 = 1;
    goto LABEL_51;
  }

  v179 = 0;
LABEL_52:
  if (v33 == 5)
  {
    BYTE11(v206) = 1;
  }

  IsEnabled = 0;
  if ((CommonProfileHashCode & 0xB) != 0)
  {
    v36 = LightingEnabled;
  }

  else
  {
    v36 = 0;
  }

  if (v33 == 5)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
  }

  v165 = v29;
  if ((CommonProfileHashCode & 0xE) == 2 && v37)
  {
    IsEnabled = C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 3u);
  }

  if ([v194 objectForKeyedSubscript:@"USE_SPECULAR"])
  {
    v38 = 1;
  }

  else
  {
    v38 = IsEnabled;
  }

  v174 = v38;
  if (v38)
  {
    if (BYTE11(v206))
    {
      v39 = &unk_282E0F8D0;
    }

    else
    {
      v39 = &unk_282E0F8B8;
    }

    [v194 setObject:v39 forKeyedSubscript:@"USE_VIEW"];
    if (BYTE11(v206))
    {
      v40 = &unk_282E0F8D0;
    }

    else
    {
      v40 = &unk_282E0F8B8;
    }

    [v194 setObject:v40 forKeyedSubscript:@"USE_SHININESS"];
  }

  BYTE10(v206) = 0;
  WORD4(v206) = 0;
  HIDWORD(v206) = 0;
  BYTE8(v208) = 1;
  AmbientLightingEnabled = C3DProgramHashCodeGetAmbientLightingEnabled(codeCopy);
  contextCopy = context;
  v183 = codeCopy;
  selfCopy = self;
  v177 = CommonProfileHashCode & 0xF;
  v178 = v37;
  v42 = CommonProfileHashCode;
  v43 = Conditioners;
  if (!v37)
  {
    goto LABEL_192;
  }

  if (*(&v203 + 1))
  {
    Declaration = C3DShaderModifierGetDeclaration(*(&v203 + 1), v41);
    if (Declaration)
    {
      [v203 appendString:Declaration];
    }
  }

  if (v33 == 5)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PBR"];
    v45 = v194;
    v46 = &unk_282E0F8D0;
    v47 = @"USE_VIEW";
LABEL_82:
    [v45 setObject:v46 forKeyedSubscript:v47];
    goto LABEL_83;
  }

  if (v33 == 6)
  {
    v45 = v194;
    v46 = &stru_282DCC058;
    v47 = @"USE_SHADOWONLY";
    goto LABEL_82;
  }

LABEL_83:
  LightsMask = C3DProgramHashCodeGetLightsMask(codeCopy);
  LightsCount = C3DProgramHashCodeGetLightsCount(codeCopy);
  if (LightsCount)
  {
    v50 = 0;
    v51 = LightsCount;
    v185 = LightsMask;
    v184 = LightsCount;
    do
    {
      if (((LightsMask >> v50) & 1) == 0)
      {
        goto LABEL_180;
      }

      LightHashCode = C3DProgramHashCodeGetLightHashCode(codeCopy2, v50);
      v53 = LightHashCode;
      v54 = "true";
      if ((LightHashCode & 0x2000000) == 0)
      {
        v54 = "false";
      }

      v55 = ((LightHashCode >> 21) & 6) != 0 ? v54 : "false";
      v56 = LightHashCode & 7;
      if (!v56)
      {
        goto LABEL_180;
      }

      v57 = (LightHashCode >> 21) & 7;
      v58 = LightHashCode & 0x400;
      if (v58)
      {
        if (BYTE11(v206) == 1)
        {
          if (v56 == 2)
          {
            [*(&v205 + 1) appendFormat:@", depthcube<float> u_shadowTexture%d\n", v50];
          }

          else if (v57 < 2)
          {
            [*(&v205 + 1) appendFormat:@", depth2d<float> u_shadowTexture%d\n", v50];
          }

          else
          {
            [*(&v205 + 1) appendFormat:@", depth2d_array<float> u_shadowTexture%d\n", v50];
          }
        }

        else
        {
          [v205 appendFormat:@", depth2d<float> u_shadowTexture%d\n", v50];
          v57 = 1;
        }
      }

      v59 = v53 & 0x205;
      C3DProgramHashCodeGetCommonProfileHashCode(codeCopy2);
      if (v59 == 513)
      {
        if (BYTE11(v206))
        {
          v60 = 184;
        }

        else
        {
          v60 = 176;
        }

        [(__C3DProgramHashCode *)*(&codeCopy2 + v60) appendFormat:@", texture2d<half> u_goboTexture%d\n", v50];
        [(__C3DProgramHashCode *)*(&codeCopy2 + v60) appendFormat:@", sampler u_goboTexture%dSampler\n", v50];
      }

      v61 = v53 >> 13;
      if (v56 == 5)
      {
        v62 = @", texture2d<half> u_iesTexture%d\n";
      }

      else
      {
        if (v56 != 6)
        {
          goto LABEL_111;
        }

        v62 = @", device packed_float2* u_areaPolygonPositions%d\n";
        if (v61 != 4)
        {
          goto LABEL_111;
        }
      }

      [*(&v205 + 1) appendFormat:v62, v50];
LABEL_111:
      v63 = (v53 >> 16) & 0x1F;
      v64 = (v53 & 0x407) != 1 || v59 == 513;
      v65 = v64;
      BYTE8(v206) |= v65;
      BYTE9(v206) |= v58 >> 10;
      v66 = HIDWORD(v206);
      if (HIDWORD(v206) <= v63)
      {
        v66 = (v53 >> 16) & 0x1F;
      }

      HIDWORD(v206) = v66;
      if (C3DProgramHashCodeGetRenderMode(codeCopy2))
      {
        MultiVertexOutputStreamGenerator = C3DProgramHashCodeGetMultiVertexOutputStreamGenerator(codeCopy2);
        if (MultiVertexOutputStreamGenerator == 1)
        {
          if (BYTE11(v206) == 1)
          {
            v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"USE_MULTIPLE_RENDERING * %d + in.sliceIndex", v50];
          }

          else
          {
            v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"USE_MULTIPLE_RENDERING * %d + out.sliceIndex", v50];
          }
        }

        else if (MultiVertexOutputStreamGenerator == 2)
        {
          v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"USE_MULTIPLE_RENDERING * %d + amplificationID", v50];
        }

        else
        {
          v71 = scn_default_log(MultiVertexOutputStreamGenerator, v68);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCode:v210 engineContext:v71 introspectionDataPtr:?];
          }

          v69 = 0;
        }
      }

      else
      {
        v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v50];
      }

      v72 = v53 & 0x1000;
      if ((v53 & 7) <= 2)
      {
        if (v56 == 1)
        {
          if (v59 == 513)
          {
            BYTE10(v206) |= v72 >> 12;
            v64 = v72 == 0;
            v73 = "true";
            if (v64)
            {
              v73 = "false";
            }

            v159 = v50;
            v160 = v73;
            v158 = v50;
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_goboTexture%d, u_goboTexture%dSampler, %s);\n", v69];
          }

          else if (v58)
          {
            if (v57 < 2)
            {
              if (v63 < 2)
              {
                v158 = v50;
                [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d);\n", v69];
              }

              else
              {
                v158 = v50;
                v159 = (v53 >> 16) & 0x1F;
                if ((v53 & 0x4000000) != 0)
                {
                  [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d, %d);\n", v69];
                }

                else
                {
                  [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d);\n", v69];
                }
              }
            }

            else
            {
              v76 = "true";
              if ((v53 & 0x1000000) == 0)
              {
                v76 = "false";
              }

              v163 = (v53 >> 16) & 0x1F;
              v164 = v55;
              v159 = v57;
              v160 = v76;
              v158 = v50;
              [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@], u_shadowTexture%d, %d, %s, u_shadowKernel, %d, %s);\n", v69];
            }
          }

          else
          {
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_directional(scn_lights[%@]);\n", v69];
          }
        }

        else
        {
          if (v56 != 2)
          {
LABEL_152:
            v74 = scn_default_log(v69, v70);
            LightsMask = v185;
            v51 = v184;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              [SCNCommonProfileProgramGeneratorMetal _newProgramWithHashCode:v226 engineContext:v227 introspectionDataPtr:v74];
            }

            goto LABEL_180;
          }

          if (v58 && BYTE8(v208) == 1)
          {
            v158 = v50;
            v159 = (v53 >> 16) & 0x1F;
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_omni(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d);\n", v69];
          }

          else
          {
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_omni(scn_lights[%@]);\n", v69];
          }
        }

        goto LABEL_179;
      }

      if (v56 == 3)
      {
        if ((v53 & 0x1605) == 0x601)
        {
          v160 = v50;
          v163 = v50;
          v158 = v50;
          v159 = (v53 >> 16) & 0x1F;
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d, u_goboTexture%d, u_goboTexture%dSampler);\n", v69];
        }

        else if (v59 == 513)
        {
          BYTE10(v206) |= v72 >> 12;
          v64 = v72 == 0;
          v75 = "true";
          if (v64)
          {
            v75 = "false";
          }

          v159 = v50;
          v160 = v75;
          v158 = v50;
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@], u_goboTexture%d, u_goboTexture%dSampler, %s);\n", v69];
        }

        else if (v58)
        {
          v158 = v50;
          v159 = (v53 >> 16) & 0x1F;
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@], u_shadowTexture%d, u_shadowKernel, %d);\n", v69];
        }

        else
        {
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_spot(scn_lights[%@]);\n", v69];
        }

        goto LABEL_179;
      }

      if (v56 == 5)
      {
        if (v58)
        {
          v159 = v50;
          v160 = (v53 >> 16) & 0x1F;
          v158 = v50;
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_ies(scn_lights[%@], u_iesTexture%d, u_shadowTexture%d, u_shadowKernel, %d);\n", v69];
        }

        else
        {
          v158 = v50;
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_ies(scn_lights[%@], u_iesTexture%d);\n", v69];
        }

LABEL_179:
        LightsMask = v185;
        v51 = v184;
        goto LABEL_180;
      }

      if (v56 != 6)
      {
        goto LABEL_152;
      }

      if ((v53 >> 13) <= 1u)
      {
        LightsMask = v185;
        v51 = v184;
        if (v53 >> 13)
        {
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_area_rectangle(scn_lights[%@], u_areaLightBakedDataTexture);\n", v69, v158];
        }

        else
        {
          [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_area_line(scn_lights[%@], u_areaLightBakedDataTexture);\n", v69, v158];
        }
      }

      else
      {
        LightsMask = v185;
        v51 = v184;
        switch(v61)
        {
          case 2:
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_area_ellipse(scn_lights[%@], u_areaLightBakedDataTexture);\n", v69, v158];
            break;
          case 3:
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_area_ellipsoid(scn_lights[%@], u_areaLightBakedDataTexture);\n", v69, v158];
            break;
          case 4:
            [*(&v202 + 1) appendFormat:@"\t_lightingContribution.add_area_polygon(scn_lights[%@], u_areaLightBakedDataTexture, u_areaPolygonPositions%d);\n", v69, v50];
            break;
        }
      }

LABEL_180:
      ++v50;
    }

    while (v51 != v50);
  }

  [v194 setObject:@"uchar" forKeyedSubscript:@"C3DLightIndexType"];
  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"C3D_USE_TEXTURE_FOR_LIGHT_INDICES"];
  codeCopy = v183;
  v33 = CommonProfileHashCode & 0xF;
  v37 = v178;
  v42 = CommonProfileHashCode;
  v43 = Conditioners;
  if (C3DProgramHashCodeGetReflectionProbesEnabled(v183))
  {
    if (C3DEngineContextHasFeatures(contextCopy, 256))
    {
      [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"C3D_SUPPORT_CUBE_ARRAY"];
    }

    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"C3D_USE_REFLECTION_PROBES"];
  }

  if (*(&v203 + 1))
  {
    v77 = v194;
    Description = @"SCNLightingModelCustom";
  }

  else
  {
    Description = C3DLightingModelGetDescription(v177);
    v77 = v194;
  }

  [v77 setObject:Description forKeyedSubscript:@"LIGHTING_MODEL"];
  if (((C3DProgramHashCodeGetLocalLightingEnabled(v183) & 1) != 0 || C3DProgramHashCodeGetReflectionProbesEnabled(v183)) && C3DEngineContextIsClusteredShadingEnabled(contextCopy))
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_CLUSTERED_LIGHTING"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

LABEL_192:
  if (v195)
  {
    [v195 addObject:@"USE_PBR"];
    [v195 addObject:@"USE_SHADOWONLY"];
    [v195 addObject:@"C3D_USE_TEXTURE_FOR_LIGHT_INDICES"];
    [v195 addObject:@"C3D_SUPPORT_CUBE_ARRAY"];
    [v195 addObject:@"C3D_USE_REFLECTION_PROBES"];
    [v195 addObject:@"LIGHTING_MODEL"];
    [v195 addObject:@"USE_CLUSTERED_LIGHTING"];
  }

  if (v33 == 4 && (v42 & 0x280) != 0)
  {
    BYTE11(v206) = 1;
  }

  if (C3DProgramHashCodeHasFog(codeCopy))
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FOG"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  if ((v37 & ((v43 & 0x10) >> 4)) == 1)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SSAO"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 0x13u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 0x14u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 4u))
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRESNEL"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_VIEW"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
  }

  if ((v37 & ((v42 & 0x40) != 0)) == 1)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"AVOID_OVERLIGHTING"];
  }

  if (AmbientLightingEnabled)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_AMBIENT_LIGHTING"];
  }

  if (v195)
  {
    [v195 addObject:@"USE_FOG"];
    [v195 addObject:@"USE_SSAO"];
    [v195 addObject:@"USE_FRESNEL"];
    [v195 addObject:@"AVOID_OVERLIGHTING"];
    [v195 addObject:@"USE_AMBIENT_LIGHTING"];
  }

  if (v37)
  {
    ProbesLightingOrder = C3DProgramHashCodeGetProbesLightingOrder(codeCopy);
    if (ProbesLightingOrder)
    {
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:ProbesLightingOrder];
      [v194 setObject:v80 forKeyedSubscript:@"USE_PROBES_LIGHTING"];
    }

    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_LIGHTING"];
    if (BYTE11(v206) == 1)
    {
      [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PER_PIXEL_LIGHTING"];
      [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
      if (v174 || (BYTE8(v206) & 1) != 0)
      {
        [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
      }

      if (BYTE10(v206) == 1)
      {
        v81 = v194;
        v82 = &unk_282E0F8D0;
        v83 = @"USE_MODULATE";
LABEL_226:
        [v81 setObject:v82 forKeyedSubscript:v83];
      }
    }

    else
    {
      [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PER_VERTEX_LIGHTING"];
      if (![v194 objectForKeyedSubscript:@"USE_NORMAL"])
      {
        [v194 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_NORMAL"];
      }

      if (![v194 objectForKeyedSubscript:@"USE_VIEW"])
      {
        [v194 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_VIEW"];
      }

      if (![v194 objectForKeyedSubscript:@"USE_POSITION"])
      {
        v81 = v194;
        v82 = &unk_282E0F8B8;
        v83 = @"USE_POSITION";
        goto LABEL_226;
      }
    }
  }

  if (v195)
  {
    [v195 addObject:@"USE_PROBES_LIGHTING"];
    [v195 addObject:@"USE_LIGHTING"];
    [v195 addObject:@"USE_PER_PIXEL_LIGHTING"];
    [v195 addObject:@"USE_PER_VERTEX_LIGHTING"];
  }

  if (C3DProgramHashCodeHasNormals(codeCopy))
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"HAS_NORMAL"];
  }

  if ((v189 & 2) != 0)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"HAS_VERTEX_COLOR"];
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_VERTEX_COLOR"];
  }

  if (C3DProgramHashCodeUseDynamicBatching(codeCopy))
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_INSTANCING"];
  }

  if (C3DProgramHashCodeUsePointRendering(codeCopy))
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_POINT_RENDERING"];
    if (v43)
    {
      goto LABEL_237;
    }
  }

  else if (v43)
  {
LABEL_237:
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"DISABLE_LINEAR_RENDERING"];
    if ((v43 & 0x40) != 0)
    {
      goto LABEL_238;
    }

LABEL_242:
    if ((v43 & 8) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_243;
  }

  if ((v43 & 0x40) == 0)
  {
    goto LABEL_242;
  }

LABEL_238:
  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"DISABLE_SPECULAR"];
  if ((v43 & 8) != 0)
  {
LABEL_243:
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_MOTIONBLUR"];
  }

LABEL_244:
  if (v195)
  {
    [v195 addObject:@"HAS_NORMAL"];
    [v195 addObject:@"HAS_VERTEX_COLOR"];
    [v195 addObject:@"USE_VERTEX_COLOR"];
    [v195 addObject:@"USE_INSTANCING"];
    [v195 addObject:@"USE_POINT_RENDERING"];
    [v195 addObject:@"DISABLE_LINEAR_RENDERING"];
    [v195 addObject:@"DISABLE_SPECULAR"];
    [v195 addObject:@"USE_MOTIONBLUR"];
  }

  if ((v43 & 0x80) != 0)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_COLOR1_OUTPUT"];
    if ((v43 & 2) == 0)
    {
LABEL_248:
      if ((v43 & 4) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_258;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_248;
  }

  [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_NORMALS_OUTPUT"];
  if ((v43 & 4) == 0)
  {
LABEL_249:
    if ((v43 & 0x100) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_259;
  }

LABEL_258:
  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_REFLECTANCE_ROUGHNESS_OUTPUT"];
  if ((v43 & 0x100) == 0)
  {
LABEL_250:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

LABEL_259:
  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_RADIANCE_OUTPUT"];
  if ((v43 & 0x20) != 0)
  {
LABEL_251:
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_OUTLINE"];
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_MODELTRANSFORM"];
  }

LABEL_252:
  if (v195)
  {
    [v195 addObject:@"USE_COLOR1_OUTPUT"];
    [v195 addObject:@"USE_NORMALS_OUTPUT"];
    [v195 addObject:@"USE_REFLECTANCE_ROUGHNESS_OUTPUT"];
    [v195 addObject:@"USE_RADIANCE_OUTPUT"];
    [v195 addObject:@"USE_OUTLINE"];
  }

  if (C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 8u))
  {
    __AddProperty(&codeCopy2, 8u, 1, 1);
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_AMBIENT_AS_AMBIENTOCCLUSION"];
  }

  else
  {
    __AddProperty(&codeCopy2, 1u, 1, (v42 >= 0) & AmbientLightingEnabled);
  }

  __AddProperty(&codeCopy2, 2u, 2, 1);
  __AddProperty(&codeCopy2, 3u, 3, (v174 | v166) & 1);
  __AddProperty(&codeCopy2, 9u, 9, 1);
  __AddProperty(&codeCopy2, 0, 0, 1);
  __AddProperty(&codeCopy2, 6u, 6, 1);
  __AddProperty(&codeCopy2, 7u, 7, v167);
  if (BYTE8(v195) == 1)
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_TANGENT"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_BITANGENT"];
  }

  __AddProperty(&codeCopy2, 0xAu, 10, v33 == 5);
  __AddProperty(&codeCopy2, 0xBu, 11, v33 == 5);
  if (v33 == 5)
  {
    v84 = C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 0xCu);
  }

  else
  {
    v84 = 0;
  }

  __AddProperty(&codeCopy2, 0xCu, 12, v84);
  __AddProperty(&codeCopy2, 0xDu, 13, v84);
  __AddProperty(&codeCopy2, 0xEu, 14, v84);
  if (BYTE8(v195) == 1)
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_TANGENT"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_BITANGENT"];
  }

  v85 = v169 & (IsOpaque ^ 1);
  __AddProperty(&codeCopy2, 4u, 4, 1);
  if (BYTE8(v195) == 1)
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_VIEW"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  v86 = (CommonProfileHashCode >> 11) & 0xF;
  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(codeCopy, 2u))
  {
    v87 = C3DProgramHashCodeGetEffectPropertyHashCode(codeCopy, 2u);
    if (v87)
    {
      v88 = (v87 >> 5) & 1;
      v89 = v88;
    }

    else
    {
      LODWORD(v88) = 0;
      v89 = (v87 & 8) == 0;
    }
  }

  else
  {
    LODWORD(v88) = 0;
    v89 = 0;
  }

  if ((v86 == 1) & IsOne | v85 & 1)
  {
    v90 = !((v86 == 1) & IsOne);
  }

  else
  {
    v90 = v88 | HasConstantAlpha ^ 1;
  }

  v91 = __AddProperty(&codeCopy2, 5u, 5, v90 & 1);
  if (v86 == 1)
  {
    v91 = [v194 objectForKeyedSubscript:@"USE_TRANSPARENT"];
    if (v91)
    {
      v91 = [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TRANSPARENCY_RGBZERO"];
    }
  }

  if (v33 == 5)
  {
    v93 = C3DPBROpacityIsEnabled(v91, v92);
    if (v86 != 1 && v93)
    {
      v93 = [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PBR_TRANSPARENCY"];
    }

    if (C3DWasLinkedBeforeMajorOSYear2023(v93, v94))
    {
      [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_PBR_LAMBERTIAN_REFLECTION"];
    }
  }

  if ((v42 & 0x8000) == 0)
  {
    if ((v42 & 0x20) != 0)
    {
      goto LABEL_293;
    }

LABEL_292:
    if (v86 != 3)
    {
      goto LABEL_294;
    }

    goto LABEL_293;
  }

  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"LOCK_AMBIENT_WITH_DIFFUSE"];
  if ((v42 & 0x20) == 0)
  {
    goto LABEL_292;
  }

LABEL_293:
  [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_DOUBLE_SIDED"];
LABEL_294:
  if ((IsOne & 1) == 0)
  {
    if (((v85 | v88) & 1) != 0 || (v165 & 2) != 0)
    {
      [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TRANSPARENCY"];
    }

    if ((HasConstantAlpha & 1) == 0)
    {
      [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_NODE_OPACITY"];
    }
  }

  if ((EffectPropertyHashCode & 0x400) != 0 || !v89)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"DIFFUSE_PREMULTIPLIED"];
  }

  if (v195)
  {
    [v195 addObject:@"USE_TRANSPARENCY_RGBZERO"];
    [v195 addObject:@"LOCK_AMBIENT_WITH_DIFFUSE"];
    [v195 addObject:@"USE_DOUBLE_SIDED"];
    [v195 addObject:@"USE_TRANSPARENCY"];
    [v195 addObject:@"USE_PBR_TRANSPARENCY"];
    [v195 addObject:@"USE_PBR_LAMBERTIAN_REFLECTION"];
    [v195 addObject:@"USE_NODE_OPACITY"];
    [v195 addObject:@"DIFFUSE_PREMULTIPLIED"];
  }

  CustomSlotCount = C3DProgramHashCodeGetCustomSlotCount(codeCopy);
  if (CustomSlotCount >= 1)
  {
    v97 = CustomSlotCount;
    for (i = 0; i != v97; ++i)
    {
      CustomSlotSortedName = C3DProgramHashCodeGetCustomSlotSortedName(codeCopy, i);
      CustomSlotUVSet = C3DProgramHashCodeGetCustomSlotUVSet(codeCopy, i);
      if (CustomSlotUVSet != -1)
      {
        v101 = CustomSlotUVSet;
        [v199 appendFormat:@"    float2 %@Texcoord;\n", CustomSlotSortedName];
        [*(&v201 + 1) appendFormat:@"    _surface.%@Texcoord = in.texcoord%d;\n", CustomSlotSortedName, v101];
      }
    }
  }

  if ((v85 | v88) == 1)
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_DISCARD"];
  }

  v102 = selfCopy;
  if (v195)
  {
    [v195 addObject:@"USE_DISCARD"];
  }

  UVSetsCount = C3DProgramHashCodeGetUVSetsCount(codeCopy2);
  if (UVSetsCount)
  {
    if (UVSetsCount >= 8)
    {
      v104 = 8;
    }

    else
    {
      v104 = UVSetsCount;
    }

    if (UVSetsCount < 1)
    {
      v106 = 0;
    }

    else
    {
      v105 = 0;
      v106 = 0;
      do
      {
        UVSetInfo = C3DProgramHashCodeGetUVSetInfo(codeCopy2, v105);
        [*(&v199 + 1) appendString:g_varyingTexCoordDecl[v105]];
        if (HIBYTE(UVSetInfo) == 255)
        {
          v108 = UVSetInfo;
          [*(&v200 + 1) appendFormat:@"out.texcoord%d = _geometry.texcoords[%d].xy;\n", v105, UVSetInfo, v159, v160, v163, v164];
        }

        else
        {
          v109 = v202;
          LODWORD(v202) = v202 + 1;
          v108 = UVSetInfo;
          [*(&v200 + 1) appendFormat:@"out.texcoord%d = (scn_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v105, v109, UVSetInfo, v160, v163, v164];
        }

        [v194 setObject:&stru_282DCC058 forKeyedSubscript:g_NeedTexCoordDefines[v108]];
        if (v106 <= (v108 + 1))
        {
          v106 = (v108 + 1);
        }

        ++v105;
      }

      while (v104 != v105);
    }

    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TEXCOORD"];
    codeCopy = v183;
    v102 = selfCopy;
  }

  else
  {
    v106 = 0;
  }

  if (v202)
  {
    v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v194 setObject:v110 forKeyedSubscript:@"TEXTURE_TRANSFORM_COUNT"];
  }

  v111 = [MEMORY[0x277CCABB0] numberWithLong:v106];
  [v194 setObject:v111 forKeyedSubscript:@"kSCNTexcoordCount"];
  if (v195)
  {
    [v195 addObject:@"USE_TEXCOORD"];
    [v195 addObject:@"TEXTURE_TRANSFORM_COUNT"];
    for (j = 0; j != 8; ++j)
    {
      [v195 addObject:g_NeedTexCoordDefines[j]];
    }
  }

  v113 = C3DProgramHashCodeGetEffectPropertyHasTexture(codeCopy, 0xFu);
  __AddProperty(&codeCopy2, 0xFu, 15, v113);
  if (v113)
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_NORMAL"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_TANGENT"];
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_BITANGENT"];
  }

  if ([objc_msgSend(v194 objectForKeyedSubscript:{@"USE_VIEW", "intValue"}] == 2)
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  if ([v194 objectForKeyedSubscript:@"USE_NORMAL"] && !objc_msgSend(v194, "objectForKeyedSubscript:", @"HAS_NORMAL"))
  {
    [v194 setObject:&unk_282E0F8D0 forKeyedSubscript:@"USE_POSITION"];
  }

  v114 = @"USE_MODELVIEWTRANSFORM";
  if (![v194 objectForKeyedSubscript:@"USE_POSITION"] && !objc_msgSend(v194, "objectForKeyedSubscript:", @"USE_INSTANCING"))
  {
    v114 = @"USE_MODELVIEWPROJECTIONTRANSFORM";
  }

  [v194 setObject:&stru_282DCC058 forKeyedSubscript:v114];
  if ([v194 objectForKeyedSubscript:@"USE_NORMAL"] || objc_msgSend(v194, "objectForKeyedSubscript:", @"USE_TANGENT") || objc_msgSend(v194, "objectForKeyedSubscript:", @"USE_BITANGENT"))
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_MODELVIEWTRANSFORM"];
  }

  if ((v189 & 0x8000000) != 0)
  {
    [v206 appendString:{@"interpolant<float2, interpolation::perspective> bezierCurveUV;\n"}];
    [*(&v205 + 1) appendString:{@", device void const *scn_bezier_curve_data\n"}];
    [*(&v205 + 1) appendString:{@", device packed_float3 const *scn_bezier_curve_controlPoints\n"}];
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"NEED_IN_TEXCOORD0"];
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"IS_BEZIER_CURVE"];
    v115 = v181;
    if (v181 <= 0x20003)
    {
      v115 = 131075;
    }

    LODWORD(v181) = v115;
    v188 = 1;
  }

  else
  {
    v188 = 0;
  }

  if (v195)
  {
    [v195 addObject:@"IS_BEZIER_CURVE"];
  }

  if ([v196 length])
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SHADER_MODIFIERS"];
  }

  if ([v199 length])
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SURFACE_EXTRA_DECL"];
  }

  if ([v206 length])
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_EXTRA_VARYINGS"];
  }

  if (v195)
  {
    [v195 addObject:@"USE_SHADER_MODIFIERS"];
    [v195 addObject:@"USE_SURFACE_EXTRA_DECL"];
    [v195 addObject:@"USE_EXTRA_VARYINGS"];
  }

  v186 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_metal");
  v116 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_util.h");
  if (v177 == 5 || v102->_useFunctionConstants)
  {
    v117 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-PBR.metal");
  }

  else
  {
    v117 = &stru_282DCC058;
  }

  __configureOpenSubdivSupport(&codeCopy2, v173, codeCopy);
  if ([v194 objectForKeyedSubscript:@"HAS_NORMAL"] || objc_msgSend(v194, "objectForKeyedSubscript:", @"USE_OPENSUBDIV"))
  {
    [v194 setObject:@"1" forKeyedSubscript:@"HAS_OR_GENERATES_NORMAL"];
  }

  v119 = &stru_282DCC058;
  if (v173)
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_TESSELLATION"];
    v119 = C3DGetTextResourceWithNameAllowingHotReload(@"scn_tessellation.h");
    v120 = (v189 >> 3) & 3;
    if (v120 == 1)
    {
      v121 = @"TESSELLATION_SMOOTHING_MODE_PN_TRIANGLE";
    }

    else
    {
      if (v120 != 2)
      {
        goto LABEL_379;
      }

      v121 = @"TESSELLATION_SMOOTHING_MODE_PHONG";
    }

    [v194 setObject:&stru_282DCC058 forKeyedSubscript:v121];
  }

LABEL_379:
  if (v195)
  {
    C3DSubdivisionOsdGPUGetAllPossibleMacros(v195, v118);
    [v195 addObject:@"HAS_OR_GENERATES_NORMAL"];
    [v195 addObject:@"USE_TESSELLATION"];
  }

  v122 = (v189 >> 27) & 1;
  v225[0] = v199;
  v225[1] = v204;
  if (*(&v198 + 1))
  {
    v123 = *(&v198 + 1);
  }

  else
  {
    v123 = &stru_282DCC058;
  }

  v225[2] = v123;
  v124 = -[NSString scn_stringByReplacingCharactersInRanges:withStrings:](v102->_originalLightingSourceCode, "scn_stringByReplacingCharactersInRanges:withStrings:", v102->_lightingInjectionPointRanges, [MEMORY[0x277CBEA60] arrayWithObjects:v225 count:3]);
  v211[0] = v186;
  v211[1] = v116;
  v211[2] = v117;
  v211[3] = v119;
  v211[4] = *(&v199 + 1);
  v211[5] = v206;
  v211[6] = v196;
  v211[7] = v124;
  v213 = v208;
  v214 = v205;
  if (v197)
  {
    v125 = v197;
  }

  else
  {
    v125 = &stru_282DCC058;
  }

  v215 = v201;
  v216 = v125;
  if (BYTE11(v206))
  {
    v126 = &stru_282DCC058;
  }

  else
  {
    v126 = *(&v202 + 1);
  }

  if (!v178)
  {
    v126 = &stru_282DCC058;
  }

  v217 = v126;
  v218 = *(&v200 + 1);
  v212 = v207;
  v219 = *(&v205 + 1);
  v220 = *(&v201 + 1);
  v127 = *(&v197 + 1);
  if (!*(&v197 + 1))
  {
    v127 = &stru_282DCC058;
  }

  v221 = v127;
  v222 = *(&v204 + 1);
  if ((v178 & BYTE11(v206)) != 0)
  {
    v128 = *(&v202 + 1);
  }

  else
  {
    v128 = &stru_282DCC058;
  }

  if (v198)
  {
    v129 = v198;
  }

  else
  {
    v129 = &stru_282DCC058;
  }

  v223 = v128;
  v224 = v129;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:22];
  v131 = [(NSString *)v102->_originalSourceCode scn_stringByReplacingCharactersInRanges:v102->_injectionPointRanges withStrings:v130];
  v190 = (v189 >> 27) & 1;
  v132 = [(SCNCommonProfileProgramGeneratorMetal *)v102 splitInputOutputStructsIfNeededForSourceCode:v131 generatedFromReplacementStrings:v130 perPixelLighting:BYTE11(v206) clipDistanceCount:v179 hasBezierCurveDeformer:v122];
  if (C3DShouldCollectGeneratedShaders(v132, v133))
  {
    v187 = v132;
    v134 = [v130 mutableCopy];
    v135 = [(NSArray *)v102->_injectionPointRanges count];
    v136 = contextCopy;
    if (v135)
    {
      v137 = v135;
      v138 = 0;
      while (1)
      {
        v139 = [-[NSArray objectAtIndexedSubscript:](selfCopy->_injectionPointRanges objectAtIndexedSubscript:{v138), "rangeValue"}];
        v140 = [(NSString *)selfCopy->_originalSourceCode substringWithRange:v139, v140];
        if (![(__CFString *)v140 hasPrefix:@"#import"])
        {
          break;
        }

        if (([(__CFString *)v140 containsString:@"C3D-Lighting.metal"]& 1) == 0)
        {
          v142 = [v130 objectAtIndexedSubscript:v138];
          v143 = MEMORY[0x277CCACA8];
          v161 = v140;
          goto LABEL_409;
        }

LABEL_414:
        if (v137 == ++v138)
        {
          goto LABEL_415;
        }
      }

      if ([v208 length] && -[__CFString containsString:](v140, "containsString:", @"__OpenSubdivDeclShared__"))
      {
        v142 = [v130 objectAtIndexedSubscript:v138];
        v143 = MEMORY[0x277CCACA8];
        v161 = @"#generate __OpenSubdivDeclShared__.metal";
LABEL_409:
        v144 = [v143 stringWithFormat:@"%@%@\n%@%@\n%@", @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v142, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v161, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n"];
      }

      else
      {
        if (![*(&v207 + 1) length] || !-[__CFString containsString:](v140, "containsString:", @"__OpenSubdivDeclPerPatchType__"))
        {
          goto LABEL_414;
        }

        v145 = [v130 objectAtIndexedSubscript:v138];
        v146 = MEMORY[0x277CCACA8];
        v162 = [MEMORY[0x277CCACA8] stringWithFormat:@"#generate __OpenSubdivDeclShared__patchType%d.metal", C3DProgramHashCodeOpenSubdivPatchType(v183)];
        v147 = v146;
        v136 = contextCopy;
        v144 = [v147 stringWithFormat:@"%@%@\n%@%@\n%@", @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v145, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v162, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n"];
      }

      [v134 setObject:v144 atIndexedSubscript:v138];
      goto LABEL_414;
    }

LABEL_415:
    v148 = [(NSString *)selfCopy->_originalSourceCode scn_stringByReplacingCharactersInRanges:selfCopy->_injectionPointRanges withStrings:v134];
    v149 = [(SCNCommonProfileProgramGeneratorMetal *)selfCopy splitInputOutputStructsIfNeededForSourceCode:v148 generatedFromReplacementStrings:v134 perPixelLighting:BYTE11(v206) clipDistanceCount:v179 hasBezierCurveDeformer:v190];

    codeCopy = v183;
    v132 = v187;
  }

  else
  {
    v149 = 0;
    v136 = contextCopy;
  }

  if ([v205 length])
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_VERTEX_EXTRA_ARGUMENTS"];
  }

  if ([*(&v205 + 1) length])
  {
    [v194 setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
  }

  [v194 setObject:&unk_282E0F8B8 forKeyedSubscript:@"METAL"];
  if ((C3DEngineContextGetCoordinatesSystemOptions(v136, v150) & 8) != 0)
  {
    [v194 setObject:&unk_282E0F8B8 forKeyedSubscript:@"USE_REVERSE_Z"];
  }

  RenderingOptionForKey = C3DEngineContextGetRenderingOptionForKey(v136, @"debugRendering");
  if (RenderingOptionForKey)
  {
    valuePtr = 0;
    CFNumberGetValue(RenderingOptionForKey, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      v152 = [MEMORY[0x277CCABB0] numberWithInt:?];
      [v194 setObject:v152 forKeyedSubscript:@"DEBUG_PIXEL"];
    }
  }

  if (v195)
  {
    [v195 addObject:@"USE_VERTEX_EXTRA_ARGUMENTS"];
    [v195 addObject:@"USE_FRAGMENT_EXTRA_ARGUMENTS"];
    [v195 addObject:@"USE_ARGUMENT_BUFFERS"];
    [v195 addObject:@"USE_REVERSE_Z"];
    [v195 addObject:@"DEBUG_PIXEL"];
  }

  v153 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v153 appendString:@"////////////////////////////////////////////////\n"];
  [v153 appendFormat:@"// CommonProfile Shader v%d\n", 2];
  v154 = [v153 stringByAppendingString:v132];
  if (C3DShouldCollectGeneratedShaders(v154, v155))
  {
    v149 = [v153 stringByAppendingString:v149];
  }

  v156 = C3DFXMetalProgramCreateFromSource(@"commonprofile_vert", @"commonprofile_frag", v188, v154, v149, v194, v195, v181, 0);
  HashCode = C3DProgramHashCodeGetHashCode(codeCopy);
  C3DFXMetalProgramUpdateHashWithCommonProfileHashCode(v156, HashCode);
  return v156;
}

- (id)splitInputOutputStructsIfNeededForSourceCode:(id)code generatedFromReplacementStrings:(id)strings perPixelLighting:(BOOL)lighting clipDistanceCount:(unint64_t)count hasBezierCurveDeformer:(BOOL)deformer
{
  deformerCopy = deformer;
  lightingCopy = lighting;
  v52[4] = *MEMORY[0x277D85DE8];
  if (count || deformer)
  {
    v11 = self->_commonProfileIORange.length + self->_commonProfileIORange.location;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3010000000;
    v47 = &unk_21C362C36;
    commonProfileIORange = self->_commonProfileIORange;
    injectionPointRanges = self->_injectionPointRanges;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __176__SCNCommonProfileProgramGeneratorMetal_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer___block_invoke;
    v43[3] = &unk_278300870;
    v43[4] = self;
    v43[5] = strings;
    v43[6] = &v44;
    v43[7] = v11;
    [(NSArray *)injectionPointRanges enumerateObjectsUsingBlock:v43];
    v13 = [code substringWithRange:{v45[4], v45[5]}];
    v14 = [v13 length] - 19;
    if (count)
    {
      v15 = [v13 stringByReplacingCharactersInRange:v14 withString:{19, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"    float clipDistance [[clip_distance]] [%d];\n} commonprofile_io_vert;\n\n", count)}];
    }

    else
    {
      v15 = [v13 stringByReplacingCharactersInRange:v14 withString:{19, @"} commonprofile_io_vert;"}];
    }

    v16 = v15;
    if (deformerCopy)
    {
      v16 = [v15 stringByReplacingOccurrencesOfString:@"interpolant<float2 withString:{interpolation::perspective> bezierCurveUV;\n", @"float2 bezierCurveUV;\n"}];
    }

    v17 = v45[5] + v45[4];
    v18 = [code rangeOfString:@"vertex commonprofile_io" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
    v20 = v19;
    v42 = [code rangeOfString:@"commonprofile_io out;" options:0 range:{v18 + v20, objc_msgSend(code, "length") - (v18 + v20)}];
    v22 = v21;
    if (lightingCopy)
    {
      v23 = v21;
      v24 = v16;
      v25 = [code rangeOfString:@"commonprofile_io out;" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v27 = v26;
      v52[0] = [MEMORY[0x277CCAE60] valueWithRange:{v45[4], 0}];
      v52[1] = [MEMORY[0x277CCAE60] valueWithRange:{v25, v27}];
      v52[2] = [MEMORY[0x277CCAE60] valueWithRange:{v18, v20}];
      v52[3] = [MEMORY[0x277CCAE60] valueWithRange:{v42, v23}];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
      v51[0] = v24;
      v51[1] = @"commonprofile_io_vert out;";
      v51[2] = @"vertex commonprofile_io_vert";
      v51[3] = @"commonprofile_io_vert out;";
      v29 = [code scn_stringByReplacingCharactersInRanges:v28 withStrings:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v51, 4)}];
    }

    else
    {
      v30 = [code rangeOfString:@"commonprofile_io out;" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v32 = v31;
      v41 = v16;
      v33 = [code rangeOfString:@"commonprofile_io in;" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v35 = v34;
      v36 = [code rangeOfString:@"commonprofile_io io" options:0 range:{v17, objc_msgSend(code, "length") - v17}];
      v38 = v37;
      v50[0] = [MEMORY[0x277CCAE60] valueWithRange:{v45[4], 0}];
      v50[1] = [MEMORY[0x277CCAE60] valueWithRange:{v30, v32}];
      v50[2] = [MEMORY[0x277CCAE60] valueWithRange:{v33, v35}];
      v50[3] = [MEMORY[0x277CCAE60] valueWithRange:{v36, v38}];
      v50[4] = [MEMORY[0x277CCAE60] valueWithRange:{v18, v20}];
      v50[5] = [MEMORY[0x277CCAE60] valueWithRange:{v42, v22}];
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:6];
      v49[0] = v41;
      v49[1] = @"commonprofile_io_vert out;";
      v49[2] = @"commonprofile_io_vert in;";
      v49[3] = @"commonprofile_io_vert io";
      v49[4] = @"vertex commonprofile_io_vert";
      v49[5] = @"commonprofile_io_vert out;";
      v29 = [code scn_stringByReplacingCharactersInRanges:v39 withStrings:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v49, 6)}];
    }

    code = v29;
    _Block_object_dispose(&v44, 8);
  }

  return code;
}

char *__176__SCNCommonProfileProgramGeneratorMetal_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 rangeValue];
  v7 = v6;
  if (result >= *(*(a1 + 32) + 56))
  {
    if (result >= *(a1 + 56))
    {
      return result;
    }

    v8 = 40;
  }

  else
  {
    v8 = 32;
  }

  result = [objc_msgSend(*(a1 + 40) objectAtIndexedSubscript:{a3), "length"}];
  *(*(*(a1 + 48) + 8) + v8) += &result[-v7];
  return result;
}

- (void)collectShaderForProgram:(__C3DFXMetalProgram *)program hashCode:(id)code newVertexFunctionName:(id)name newFragmentFunctionName:(id)functionName sourceCodeBlock:(id)block additionalFileBlock:(id)fileBlock
{
  v73 = *MEMORY[0x277D85DE8];
  PreprocessorsMacros = C3DFXMetalProgramGetPreprocessorsMacros(program, a2);
  cf = program;
  SourceCodeForShaderCollection = C3DFXMetalProgramGetSourceCodeForShaderCollection(program, v11);
  v13 = [SourceCodeForShaderCollection length];
  v14 = [SourceCodeForShaderCollection mutableCopy];
  [v14 replaceOccurrencesOfString:@"commonprofile_vert" withString:name options:0 range:{0, v13}];
  [v14 replaceOccurrencesOfString:@"commonprofile_frag" withString:functionName options:0 range:{0, v13}];
  v15 = [v14 length];
  v16 = [v14 rangeOfString:@"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{0, v15}];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v16;
    v60 = v14;
    do
    {
      v19 = v18 + v17;
      v20 = v14;
      v21 = [v14 rangeOfString:@"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{v18 + v17, v15 - (v18 + v17)}];
      v23 = v21 + v22;
      v24 = [v20 rangeOfString:@"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{v21 + v22, v15 - (v21 + v22)}];
      v26 = v25;
      v27 = [v20 substringWithRange:{v23, v24 - v23}];
      if ([v27 hasPrefix:@"#import"])
      {
        v28 = [v27 substringFromIndex:{objc_msgSend(v27, "rangeOfString:", @""}];
        v29 = [v28 substringToIndex:{objc_msgSend(v28, "rangeOfString:", @""}];
        isEqualToString = objc_msgSend_isEqualToString_([v29 pathExtension]);
        v31 = v29;
        if ((isEqualToString & 1) == 0)
        {
          v31 = [v29 stringByAppendingPathExtension:@"h"];
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"_import/%@", v31];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"#import %@", v32];
        v34 = C3DGetTextResourceWithNameAllowingHotReload(v29);
        (*(fileBlock + 2))(fileBlock, v34, v32);
        v14 = v60;
      }

      else
      {
        if (![v27 hasPrefix:@"#generate"])
        {
          [SCNCommonProfileProgramGeneratorMetal collectShaderForProgram:hashCode:newVertexFunctionName:newFragmentFunctionName:sourceCodeBlock:additionalFileBlock:];
        }

        v35 = [v27 substringFromIndex:{objc_msgSend(v27, "rangeOfString:", @""}];
        v36 = [v35 substringToIndex:{objc_msgSend(v35, "rangeOfString:", @""}];
        if ((objc_msgSend_isEqualToString_([v36 pathExtension]) & 1) == 0)
        {
          v36 = [v36 stringByAppendingPathExtension:@"h"];
        }

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"_import/%@", v36];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"#import %@", v37];
        v38 = v21 - v19;
        v14 = v60;
        (*(fileBlock + 2))(fileBlock, [v60 substringWithRange:{v19, v38}], v37);
      }

      [v14 replaceCharactersInRange:v24 withString:{v26, &stru_282DCC058}];
      [v14 replaceCharactersInRange:v23 withString:{v24 - v23, v33}];
      [v14 replaceCharactersInRange:v18 withString:{v23 - v18, &stru_282DCC058}];
      v15 = [v14 length];
      v18 = [v14 rangeOfString:@"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n" options:2 range:{0, v15}];
    }

    while (v18 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v39 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v40 = v14;
  [v14 insertString:@"\n" atIndex:0];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v41 = [objc_msgSend(objc_msgSend(PreprocessorsMacros "allKeys")];
  v42 = [v41 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v42)
  {
    v44 = v42;
    v45 = *v68;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v68 != v45)
        {
          objc_enumerationMutation(v41);
        }

        v47 = *(*(&v67 + 1) + 8 * i);
        v48 = [PreprocessorsMacros objectForKeyedSubscript:v47];
        [v40 insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"#define %@ %@\n", v47, v48), 0}];
        if ([v48 isEqual:&stru_282DCC058])
        {
          [v39 appendFormat:@" -D%@", v47, v56];
        }

        else
        {
          [v39 appendFormat:@" -D%@=%@", v47, v48];
        }
      }

      v44 = [v41 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v44);
  }

  PreprocessorAllPossibleMacros = C3DFXMetalProgramGetPreprocessorAllPossibleMacros(cf, v43);
  if ([PreprocessorAllPossibleMacros count])
  {
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v50 = [objc_msgSend(objc_msgSend(PreprocessorAllPossibleMacros "allObjects")];
    v51 = [v50 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v64;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v63 + 1) + 8 * j);
          if (![PreprocessorsMacros objectForKeyedSubscript:v55])
          {
            [v39 appendFormat:@" -U%@", v55];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v52);
    }
  }

  (*(fileBlock + 2))(fileBlock, v39, [MEMORY[0x277CCACA8] stringWithFormat:@"_unifdef/%@.h", code]);

  (*(block + 2))(block, v40);
}

- (void)_newProgramWithHashCode:(uint8_t *)buf engineContext:(_BYTE *)a2 introspectionDataPtr:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Multiple rendering is lacking a multiple output vertex streams generator", buf, 2u);
}

- (void)_newProgramWithHashCode:(uint8_t *)a1 engineContext:(void *)a2 introspectionDataPtr:(NSObject *)a3 .cold.3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Infinite lights can only be dir or unranged omni", a1);
}

@end