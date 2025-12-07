@interface SCNCommonProfileProgramGeneratorGL
- (SCNCommonProfileProgramGeneratorGL)init;
- (SCNCommonProfileProgramGeneratorGL)initWithProfile:(int)profile;
- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr;
@end

@implementation SCNCommonProfileProgramGeneratorGL

- (SCNCommonProfileProgramGeneratorGL)initWithProfile:(int)profile
{
  v5.receiver = self;
  v5.super_class = SCNCommonProfileProgramGeneratorGL;
  result = [(SCNCommonProfileProgramGenerator *)&v5 init];
  if (result)
  {
    result->_profile = profile;
  }

  return result;
}

- (SCNCommonProfileProgramGeneratorGL)init
{
  v3.receiver = self;
  v3.super_class = SCNCommonProfileProgramGeneratorGL;
  return [(SCNCommonProfileProgramGenerator *)&v3 init];
}

- (__C3DFXProgram)_newProgramWithHashCode:(__C3DProgramHashCode *)code engineContext:(__C3DEngineContext *)context introspectionDataPtr:(void *)ptr
{
  *(&v188[2] + 4) = *MEMORY[0x277D85DE8];
  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 100, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CommonProfileHashCode = C3DProgramHashCodeGetCommonProfileHashCode(code);
  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(code);
  HasTexture = C3DProgramHashCodeGetEffectPropertyHasTexture(code, 7u);
  v145 = C3DProgramHashCodeGetEffectPropertyHasTexture(code, 4u);
  IsOpaque = C3DProgramHashCodeIsOpaque(code);
  v9 = C3DProgramHashCodeGetEffectPropertyHasTexture(code, 5u);
  v149 = v9;
  v11 = CommonProfileHashCode & 0xF;
  if (v11 == 5)
  {
    v12 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v11 = 2;
  }

  v160 = v11;
  EffectPropertyHashCode = C3DProgramHashCodeGetEffectPropertyHashCode(code, 2u);
  IsOne = C3DProgramHashCodeGlobalAlphaIsOne(code);
  HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(code);
  memset(v186, 0, sizeof(v186));
  v14 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 0, 1, v186, 32);
  memset(v185, 0, sizeof(v185));
  v162 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 1, 1, v185, 32);
  memset(v184, 0, sizeof(v184));
  v154 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 2, 1, v184, 32);
  v181 = 0;
  v15 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(code, 3, 1, &v181, 1);
  v17 = v15;
  if (v15 >= 2)
  {
    v18 = scn_default_log(v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v17 = 1;
  }

  v139 = v14;
  __AppendModifierDefines(Mutable, v186, v14);
  __AppendModifierDefines(Mutable, v185, v162);
  __AppendModifierDefines(Mutable, v184, v154);
  __AppendModifierDefines(Mutable, &v181, v17);
  ModifierFlag = __GetModifierFlag(v184, v154);
  v136 = __GetModifierFlag(v185, v162);
  LightsCount = C3DProgramHashCodeGetLightsCount(code);
  theDict = Mutable;
  if ((v160 & 0xFFFFFFFB) != 0)
  {
    LightingEnabled = C3DProgramHashCodeGetLightingEnabled(code);
  }

  else
  {
    LightingEnabled = 0;
  }

  IsEnabled = 0;
  v156 = CommonProfileHashCode;
  v163 = LightingEnabled;
  if (LightingEnabled && (v160 & 0xE) == 2)
  {
    IsEnabled = C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 3u);
  }

  v22 = IsEnabled | CheckDefineUsageInModifiers(v185, v162, @"USE_SPECULAR");
  v23 = v22 | CheckDefineUsageInModifiers(&v181, v17, @"USE_SPECULAR");
  v24 = theDict;
  v25 = CommonProfileHashCode;
  appendedString = v23;
  if (v23)
  {
    if ((CommonProfileHashCode >> 4) & 1 | HasTexture & 1)
    {
      CFDictionarySetValue(theDict, @"USE_VIEW", @"2");
      CFDictionarySetValue(theDict, @"USE_SHININESS", @"2");
    }

    else
    {
      CFDictionaryAddValue(theDict, @"USE_VIEW", @"1");
      CFDictionaryAddValue(theDict, @"USE_SHININESS", @"1");
    }
  }

  AmbientLightingEnabled = C3DProgramHashCodeGetAmbientLightingEnabled(code);
  v172 = CFStringCreateMutable(alloc, 0);
  theString = CFStringCreateMutable(alloc, 0);
  v155 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v141 = IsOne;
  v142 = CommonProfileHashCode;
  v143 = (CommonProfileHashCode >> 4) & 1 | HasTexture;
  if (!v163)
  {
    goto LABEL_91;
  }

  if (v181)
  {
    Declaration = C3DShaderModifierGetDeclaration(v181, v26);
    if (Declaration)
    {
      CFStringAppend(theString, Declaration);
    }
  }

  v28 = C3DGetTextResourceWithNameAllowingHotReload(@"SCNShaderLightDecl.glsl");
  CFStringAppend(theString, v28);
  if (!LightsCount)
  {
LABEL_91:
    v31 = 0;
    cf = 0;
    v157 = 0;
    v54 = v163;
    goto LABEL_98;
  }

  v29 = 0;
  v30 = 0;
  cf = 0;
  v164 = 0;
  v31 = 0;
  v32 = v172;
  do
  {
    v33 = v181;
    LightHashCode = C3DProgramHashCodeGetLightHashCode(code, v29);
    v35 = LightHashCode;
    v36 = LightHashCode & 7;
    if ((LightHashCode & 7) == 0)
    {
      goto LABEL_87;
    }

    v37 = CFStringCreateWithFormat(alloc, 0, @"u_light%hu", v29);
    CFStringAppend(v32, @"{\n");
    CFStringAppend(v32, @"    SCNShaderLight _light;\n");
    if ((v35 & 0x1000) != 0)
    {
      CFStringAppend(v32, @"    _light.intensity = vec4(1.);\n");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 %@_color;\n", v37);
      CFStringAppendFormat(v32, 0, @"    _light.intensity = %@_color;\n", v37);
    }

    v38 = (v35 >> 3) & 7;
    if (v36 > 2)
    {
      if (v36 == 3 || v36 == 5)
      {
        CFStringAppendFormat(theString, 0, @"uniform vec4 %@_position;\n", v37);
        CFStringAppendFormat(theString, 0, @"uniform vec4 %@_direction;\n", v37);
        v39 = v172;
        if (v38)
        {
          CFStringAppendFormat(v172, 0, @"    vec3 _D = %@_position.xyz - _surface.position;\n", v37);
          CFStringAppendFormat(v172, 0, @"    _light.dist = length(_D);\n");
          CFStringAppendFormat(v172, 0, @"    _light.direction = _D / _light.dist;\n", v131);
        }

        else
        {
          CFStringAppendFormat(v172, 0, @"    _light.direction = normalize(%@_position.xyz - _surface.position);\n", v37);
        }

        CFStringAppendFormat(v172, 0, @"    _light.dir = %@_direction.xyz;\n", v37);
        v31 = 1;
      }

      else
      {
LABEL_38:
        v39 = v172;
        CFStringAppend(v172, @"//Unsupported\n");
      }

LABEL_42:
      CFStringAppendFormat(v39, 0, @"    _light._att = 1.;\n");
      if (!v38)
      {
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    if (v36 == 1)
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 %@_direction;\n", v37);
      v39 = v172;
      CFStringAppendFormat(v172, 0, @"    _light.direction = %@_direction.xyz;\n", v37);
      goto LABEL_42;
    }

    if (v36 != 2)
    {
      goto LABEL_38;
    }

    CFStringAppendFormat(theString, 0, @"uniform vec4 %@_position;\n", v37);
    if (!v38)
    {
      CFStringAppendFormat(v172, 0, @"    _light.direction = normalize(%@_position.xyz - _surface.position);\n", v37);
      CFStringAppendFormat(v172, 0, @"    _light._att = 1.;\n");
      v31 = 1;
      goto LABEL_52;
    }

    CFStringAppendFormat(v172, 0, @"    vec3 _D = %@_position.xyz - _surface.position;\n", v37);
    CFStringAppendFormat(v172, 0, @"    _light.dist = length(_D);\n");
    CFStringAppendFormat(v172, 0, @"    _light.direction = _D / _light.dist;\n");
    CFStringAppendFormat(v172, 0, @"    _light._att = 1.;\n");
    v31 = 1;
LABEL_43:
    CFStringAppendFormat(theString, 0, @"uniform vec4 %@_attenuation;\n", v37);
    CFStringAppendFormat(v172, 0, @"    vec3 _att = %@_attenuation.xyz;\n", v37);
    if (((v35 >> 3) & 7) <= 2)
    {
      v41 = v172;
      if (v38 == 1)
      {
        v42 = @"    _light._att *= step(_light.dist, _att.x);\n";
      }

      else
      {
        v42 = @"    _light._att *= clamp(_light.dist * _att.x + _att.y, 0.0, 1.0);\n";
      }

      goto LABEL_51;
    }

    if (v38 == 3)
    {
      v41 = v172;
      v42 = @"    float _dstatt = clamp(_light.dist * _att.x + _att.y, 0.0, 1.0);\n    _light._att *= (_dstatt  * _dstatt);\n";
      goto LABEL_51;
    }

    if (v38 == 4)
    {
      v41 = v172;
      v42 = @"    _light._att *= pow(clamp(_light.dist * _att.x + _att.y, 0.0, 1.0), _att.z);\n";
LABEL_51:
      CFStringAppend(v41, v42);
    }

LABEL_52:
    v43 = (v35 >> 6) & 7;
    v32 = v172;
    if (v43)
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 %@_spotAttenuation;\n", v37);
      CFStringAppendFormat(v172, 0, @"    vec3 _spot = %@_spotAttenuation.xyz;\n", v37);
      if (v43 <= 4)
      {
        CFStringAppend(v172, off_278300318[v43 - 1]);
      }
    }

    if ((v35 & 0x400) != 0)
    {
      CFStringAppendFormat(theString, 0, @"uniform sampler2DShadow %@_shadow;\n", v37);
      CFStringAppendFormat(theString, 0, @"uniform mat4 %@_shadowMatrix;\n", v37);
      v44 = (v35 >> 16) & 0x1F;
      if (v44 < 2)
      {
        CFStringAppendFormat(v172, 0, @"    float _shadowingTerm = __shadow2DProj(%@_shadow, (%@_shadowMatrix * vec4(_surface.position, 1.)));\n", v37, v37, v133, v134, v135);
      }

      else
      {
        if (v30 <= v44)
        {
          v30 = (v35 >> 16) & 0x1F;
        }

        CFStringAppendFormat(theString, 0, @"uniform float %@_shadowRadius;\n", v37);
        CFStringAppendFormat(v172, 0, @"    float _shadowingTerm = 0.0;\n    vec4 _lightScreen = (%@_shadowMatrix * vec4(_surface.position, 1.));\n    float _filteringSizeFactor = %@_shadowRadius * _lightScreen.w;\n    for (int i=0; i < %d; i++){\n        _shadowingTerm += __shadow2DProj(%@_shadow, _lightScreen + (u_shadowKernel[i] * _filteringSizeFactor));\n    }\n    _shadowingTerm /= float(%d);\n", v37, v37, (v35 >> 16) & 0x1F, v37, (v35 >> 16) & 0x1F);
      }

      if ((v35 & 0x800) != 0)
      {
        CFStringAppendFormat(theString, 0, @"uniform vec4 %@_shadowColor;\n", v37);
        CFStringAppendFormat(v172, 0, @"    _light._att *= (1. - _shadowingTerm * %@_shadowColor.a);\n", v37);
      }

      else
      {
        CFStringAppendFormat(v172, 0, @"    _light._att *= (1. - _shadowingTerm);\n", v132);
      }

      v31 = 1;
      v164 = 1;
LABEL_69:
      if (v33)
      {
        goto LABEL_70;
      }

      if ((v35 & 0x1000) != 0)
      {
        goto LABEL_85;
      }

      goto LABEL_76;
    }

    if ((v35 & 0x205) != 0x201)
    {
      goto LABEL_69;
    }

    CFStringAppendFormat(theString, 0, @"uniform sampler2D %@_gobo;\n", v37);
    CFStringAppendFormat(theString, 0, @"uniform mat4 %@_goboMatrix;\n", v37);
    CFStringAppendFormat(theString, 0, @"uniform float %@_goboIntensity;\n", v37);
    if ((v35 & 0x1000) != 0)
    {
      CFStringAppendFormat(v172, 0, @"    _light.intensity *= mix(vec4(1.), texture2DProj(%@_gobo, (%@_goboMatrix * vec4(_surface.position, 1.))), %@_goboIntensity);\n", v37, v37, v37);
      v31 = 1;
      if (!v33)
      {
LABEL_85:
        CFStringAppend(v172, @"    _lightingContribution.modulate *= _light._att * _light.intensity.rgb;\n");
        cf = 1;
        goto LABEL_86;
      }

LABEL_70:
      Code = C3DShaderModifierGetCode(v33, v40);
      if (!Code)
      {
        v47 = scn_default_log(0, v45);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:buf engineContext:v188 introspectionDataPtr:v47];
        }
      }

      v32 = v172;
      v48 = v172;
      v49 = Code;
      goto LABEL_74;
    }

    CFStringAppendFormat(v172, 0, @"    _light.intensity *= %@_goboIntensity * texture2DProj(%@_gobo, (%@_goboMatrix * vec4(_surface.position, 1.)));\n", v37, v37, v37);
    v31 = 1;
    if (v33)
    {
      goto LABEL_70;
    }

LABEL_76:
    v50 = C3DProgramHashCodeGetCommonProfileHashCode(code);
    v52 = v50 & 0xF;
    if (v52 == 5)
    {
      v53 = scn_default_log(v50, v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:v183 engineContext:v53 introspectionDataPtr:?];
      }

      v52 = 2;
    }

    CFStringAppend(v172, @"    _light.intensity.rgb *= _light._att * max(0.0, dot(_surface.normal, _light.direction));\n    _lightingContribution.diffuse += _light.intensity.rgb;\n");
    if (!appendedString)
    {
      goto LABEL_86;
    }

    if (v52 == 3)
    {
      v48 = v172;
      v49 = @"    vec3 _halfVector = normalize(_light.direction + _surface.view);\n    _lightingContribution.specular += pow(max(0.0, dot(_surface.normal, _halfVector)), _surface.shininess) * _light.intensity.rgb;\n";
    }

    else
    {
      if (v52 != 2)
      {
        goto LABEL_86;
      }

      v48 = v172;
      v49 = @"    vec3 _R = reflect(-_light.direction, _surface.normal);\n    _lightingContribution.specular += pow(max(0.0, dot(_R, _surface.view)), _surface.shininess) * _light.intensity.rgb;\n";
    }

LABEL_74:
    CFStringAppend(v48, v49);
LABEL_86:
    CFStringAppend(v32, @"}\n");
    CFRelease(v37);
LABEL_87:
    v29 = (v29 + 1);
  }

  while (LightsCount != v29);
  IsOne = v141;
  LOWORD(CommonProfileHashCode) = v142;
  v54 = v163;
  if (v164)
  {
    CFStringAppend(theString, @"float __shadow2DProj(sampler2DShadow tex, vec4 coord) {return shadow2DProjEXT( tex, coord);}\n");
    if (v30 >= 2)
    {
      CFStringAppendFormat(theString, 0, @"uniform vec4 u_shadowKernel[%d];\n", v30);
    }

    v157 = 1;
  }

  else
  {
    v157 = 0;
  }

  v24 = theDict;
  v25 = v156;
LABEL_98:
  v56 = (v25 & 0x280) != 0 && v160 == 4;
  if (C3DProgramHashCodeHasFog(code))
  {
    CFDictionaryAddValue(v24, @"USE_FOG", &stru_282DCC058);
    CFDictionaryAddValue(v24, @"USE_POSITION", @"2");
  }

  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 0x13u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 0x14u) && C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 4u))
  {
    CFDictionaryAddValue(v24, @"USE_FRESNEL", &stru_282DCC058);
    CFDictionaryAddValue(v24, @"USE_VIEW", @"2");
    CFDictionaryAddValue(v24, @"USE_NORMAL", @"2");
    CFDictionaryAddValue(v24, @"USE_POSITION", @"2");
  }

  if ((v54 & ((v25 & 0x40) != 0)) == 1)
  {
    CFDictionaryAddValue(v24, @"AVOID_OVERLIGHTING", &stru_282DCC058);
  }

  v161 = v56 | v143;
  if (AmbientLightingEnabled)
  {
    CFDictionaryAddValue(v24, @"USE_AMBIENT_LIGHTING", &stru_282DCC058);
  }

  if (v54)
  {
    CFDictionaryAddValue(v24, @"USE_LIGHTING", &stru_282DCC058);
    if (v161)
    {
      CFDictionaryAddValue(v24, @"USE_PER_PIXEL_LIGHTING", &stru_282DCC058);
      CFDictionarySetValue(v24, @"USE_NORMAL", @"2");
      if (((appendedString == 0) & (v31 ^ 1)) == 0)
      {
        CFDictionarySetValue(v24, @"USE_POSITION", @"2");
      }

      if (cf)
      {
        v57 = @"USE_MODULATE";
        v58 = @"2";
        goto LABEL_124;
      }
    }

    else
    {
      CFDictionaryAddValue(v24, @"USE_NORMAL", @"1");
      CFDictionaryAddValue(v24, @"USE_PER_VERTEX_LIGHTING", &stru_282DCC058);
      if (!CFDictionaryGetValue(v24, @"USE_VIEW"))
      {
        CFDictionarySetValue(v24, @"USE_VIEW", @"1");
      }

      if (!CFDictionaryGetValue(v24, @"USE_POSITION"))
      {
        v57 = @"USE_POSITION";
        v58 = @"1";
LABEL_124:
        CFDictionarySetValue(v24, v57, v58);
      }
    }
  }

  if ((NodeHashCode & 2) != 0)
  {
    CFDictionaryAddValue(v24, @"USE_VERTEX_COLOR", &stru_282DCC058);
  }

  codeCopy = code;
  v180 = 0;
  v173 = v24;
  v175 = CFStringCreateMutable(alloc, 0);
  v176 = CFStringCreateMutable(alloc, 0);
  v177 = CFStringCreateMutable(alloc, 0);
  v178 = CFStringCreateMutable(alloc, 0);
  v59 = C3DGetTextResourceWithNameAllowingHotReload(@"SCNShaderSurfaceDecl.glsl");
  MutableCopy = CFStringCreateMutableCopy(alloc, 0, v59);
  if (C3DProgramHashCodeGetEffectPropertyHasTexture(code, 8u))
  {
    __AddTextureProperty(&v173, 8, 1, AmbientLightingEnabled);
    CFDictionaryAddValue(v24, @"USE_AMBIENT_AS_AMBIENTOCCLUSION", &stru_282DCC058);
  }

  else
  {
    __AddTextureProperty(&v173, 1, 1, ((CommonProfileHashCode & 0x8000u) == 0) & AmbientLightingEnabled);
  }

  __AddTextureProperty(&v173, 2, 2, 1);
  __AddTextureProperty(&v173, 3, 3, (appendedString | v145) & 1);
  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 9u))
  {
    __AddTextureProperty(&v173, 9, 0, 1);
    CFDictionaryAddValue(v24, @"USE_EMISSION_AS_SELFILLUMINATION", &stru_282DCC058);
  }

  else
  {
    __AddTextureProperty(&v173, 0, 0, 1);
  }

  __AddTextureProperty(&v173, 6, 6, 1);
  __AddTextureProperty(&v173, 7, 7, 1);
  if (v180 == 1)
  {
    CFDictionarySetValue(v24, @"USE_TANGENT", @"2");
    CFDictionarySetValue(v24, @"USE_BITANGENT", @"2");
  }

  v60 = v149 & (IsOpaque ^ 1);
  __AddTextureProperty(&v173, 4, 4, 1);
  if (v180 == 1)
  {
    CFDictionarySetValue(v24, @"USE_VIEW", @"2");
    CFDictionarySetValue(v24, @"USE_NORMAL", @"2");
    CFDictionarySetValue(v24, @"USE_POSITION", @"2");
  }

  if (C3DProgramHashCodeGetEffectPropertyIsEnabled(code, 2u))
  {
    v61 = C3DProgramHashCodeGetEffectPropertyHashCode(code, 2u);
    if (v61)
    {
      v62 = (v61 >> 5) & 1;
      v148 = (v61 >> 5) & 1;
    }

    else
    {
      LODWORD(v62) = 0;
      LOBYTE(v148) = (v61 & 8) == 0;
    }
  }

  else
  {
    LODWORD(v62) = 0;
    LOBYTE(v148) = 0;
  }

  v150 = CommonProfileHashCode & 0x7800;
  v165 = v60;
  if ((v150 == 2048) & IsOne | v60 & 1)
  {
    v63 = !(((CommonProfileHashCode & 0x7800) == 2048) & IsOne);
  }

  else
  {
    v63 = v62 | HasConstantAlpha ^ 1;
  }

  __AddTextureProperty(&v173, 5, 5, v63 & 1);
  CustomSlotCount = C3DProgramHashCodeGetCustomSlotCount(code);
  if (CustomSlotCount >= 1)
  {
    v65 = CustomSlotCount;
    v66 = 0;
    v67 = MutableCopy;
    v68 = v178;
    do
    {
      CustomSlotSortedName = C3DProgramHashCodeGetCustomSlotSortedName(code, v66);
      CustomSlotUVSet = C3DProgramHashCodeGetCustomSlotUVSet(code, v66);
      if (CustomSlotUVSet != -1)
      {
        v71 = CustomSlotUVSet;
        CFStringAppendFormat(v67, 0, @"    vec2 %@Texcoord;\n", CustomSlotSortedName);
        CFStringAppendFormat(v68, 0, @"    _surface.%@Texcoord = v_texcoord%d;\n", CustomSlotSortedName, v71);
      }

      ++v66;
    }

    while (v65 != v66);
  }

  v72 = theDict;
  v146 = v165 | v62;
  if ((v165 | v62))
  {
    CFDictionarySetValue(theDict, @"USE_DISCARD", @"2");
  }

  appendedStringa = MutableCopy;
  CFStringAppend(MutableCopy, @"\n} _surface;\n");
  UVSetsCount = C3DProgramHashCodeGetUVSetsCount(code);
  v74 = UVSetsCount;
  v75 = v172;
  v166 = UVSetsCount;
  if (UVSetsCount)
  {
    if (UVSetsCount < 1)
    {
      v77 = 0;
    }

    else
    {
      v76 = 0;
      v77 = 0;
      v78 = v175;
      v79 = v176;
      v80 = v177;
      do
      {
        UVSetInfo = C3DProgramHashCodeGetUVSetInfo(code, v76);
        CFStringAppendFormat(v78, 0, @"varying vec2 v_texcoord%d;\n", v76);
        if (HIBYTE(UVSetInfo) == 255)
        {
          v83 = UVSetInfo;
          CFStringAppendFormat(v80, 0, @"v_texcoord%d = _geometry.texcoords[%d];\n", v76, UVSetInfo, v133);
        }

        else
        {
          if (UVSetInfo >> 8 > 20)
          {
            v82 = C3DProgramHashCodeGetCustomSlotSortedName(code, (HIBYTE(UVSetInfo) - 27));
          }

          else
          {
            v82 = __stringForProperty();
          }

          v84 = v82;
          CFStringAppendFormat(v79, 0, @"uniform mat4 u_%@TextureMatrix;\n", v82);
          v83 = UVSetInfo;
          CFStringAppendFormat(v80, 0, @"v_texcoord%d = (u_%@TextureMatrix * vec4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v76, v84, UVSetInfo);
        }

        v85 = CFStringCreateWithFormat(alloc, 0, @"NEED_IN_TEXCOORD%d", v83);
        v72 = theDict;
        CFDictionaryAddValue(theDict, v85, &stru_282DCC058);
        CFRelease(v85);
        if (v77 <= (v83 + 1))
        {
          v77 = (v83 + 1);
        }

        ++v76;
        v74 = v166;
      }

      while (v166 != v76);
    }

    CFDictionaryAddValue(v72, @"USE_TEXCOORD", &stru_282DCC058);
    v75 = v172;
  }

  else
  {
    v77 = 0;
  }

  Value = CFDictionaryGetValue(v72, @"USE_VIEW");
  if (Value && CFStringCompare(Value, @"2", 0) == kCFCompareEqualTo)
  {
    CFDictionarySetValue(v72, @"USE_POSITION", @"2");
  }

  v87 = CFStringCreateMutable(alloc, 0);
  v88 = v87;
  if (v157)
  {
    CFStringAppend(v87, @"#extension GL_EXT_shadow_samplers : require\n\n");
  }

  v89 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-UberShader.vsh");
  if (v89)
  {
    cfa = CFStringCreateMutableCopy(alloc, 0, v89);
    v91 = CFStringCreateMutable(alloc, 0);
    v92 = C3DGetTextResourceWithNameAllowingHotReload(@"SCNShaderGeometryDecl.glsl");
    CFStringAppend(v91, v92);
    CFStringAppend(v91, appendedStringa);
    if ((v161 & 1) == 0)
    {
      CFStringAppend(v91, @"struct SCNShaderLightingContribution {vec3 ambient; vec3 diffuse; vec3 specular; vec3 modulate;} _lightingContribution;\n");
    }

    v93 = CFDictionaryCreateMutableCopy(alloc, 0, v72);
    v94 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (CFDictionaryContainsKey(v72, @"USE_POSITION") || CFDictionaryContainsKey(v72, @"USE_VIEW") || ((v163 ^ 1 | v161) & 1) == 0)
    {
      CFDictionarySetValue(v94, @"u_modelViewTransform", @"mat4");
      CFDictionarySetValue(v94, @"u_projectionTransform", @"mat4");
      CFDictionarySetValue(v93, @"SEPARATE_PROJECTION", @"1");
      if (!CFDictionaryGetValue(v72, @"USE_POSITION"))
      {
        v95 = @"USE_POSITION";
        v96 = @"1";
        v97 = v72;
        goto LABEL_184;
      }
    }

    else
    {
      v95 = @"u_modelViewProjectionTransform";
      v96 = @"mat4";
      v97 = v94;
LABEL_184:
      CFDictionarySetValue(v97, v95, v96);
    }

    if (CFDictionaryContainsKey(v72, @"USE_NORMAL") || CFDictionaryContainsKey(v72, @"USE_TANGENT") || CFDictionaryContainsKey(v72, @"USE_PER_VERTEX_LIGHTING"))
    {
      CFDictionarySetValue(v94, @"u_normalTransform", @"mat4");
    }

    v99 = NodeHashCode >> 28;
    if (v166)
    {
      CFStringAppend(v91, v176);
      CFStringAppend(v91, v175);
      v100 = v177;
      v191.length = CFStringGetLength(cfa);
      v191.location = 0;
      CFStringFindAndReplace(cfa, @"__DoTexcoord__", v100, v191, 0);
    }

    CFStringAppendFormat(v91, 0, @"#define kSCNTexcoordCount %ld\n", v77);
    if (v99)
    {
      CFDictionaryAddValue(v93, @"USE_SKINNING", &stru_282DCC058);
      v101 = CFStringCreateWithFormat(alloc, 0, @"%ld", v99);
      CFDictionaryAddValue(v93, @"MAX_BONE_INFLUENCES", v101);
      CFRelease(v101);
    }

    if (v139)
    {
      CFDictionaryAddValue(v93, @"USE_GEOMETRY_MODIFIER", &stru_282DCC058);
      __ReplaceCodeWithModifiers(v186, v139, cfa, v91, v93, v94, @"__DoGeometryModifier__");
    }

    if (!(v161 & 1 | ((v163 & 1) == 0)))
    {
      CFStringAppend(v91, theString);
      CFDictionaryApplyFunction(v155, __appendDictionary_0, v94);
      v192.length = CFStringGetLength(cfa);
      v192.location = 0;
      CFStringFindAndReplace(cfa, @"__DoLighting__", v75, v192, 0);
    }

    CFDictionaryApplyFunction(v94, __AppendUniformsDeclaration, v88);
    CFStringAppend(v91, cfa);
    Count = CFDictionaryGetCount(v93);
    v103 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v104 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v93, v103, v104);
    if (Count >= 1)
    {
      v105 = v103;
      v106 = v104;
      do
      {
        v108 = *v105++;
        v107 = v108;
        v109 = *v106++;
        CFStringAppendFormat(v88, 0, @"#define %@ %@\n", v107, v109);
        --Count;
      }

      while (Count);
    }

    free(v103);
    free(v104);
    CFStringAppend(v88, v91);
    CFRelease(v93);
    CFRelease(v94);
    CFRelease(v91);
    CFRelease(cfa);
    v74 = v166;
    v72 = theDict;
    v75 = v172;
  }

  else
  {
    v98 = scn_default_log(0, v90);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }
  }

  v110 = CFStringCreateMutable(alloc, 0);
  v111 = v110;
  if (v157)
  {
    CFStringAppend(v110, @"#extension GL_EXT_shadow_samplers : require\n\n");
  }

  CFStringAppend(v111, @"#extension GL_OES_standard_derivatives : enable\n\n");
  v112 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-UberShader.fsh");
  if (v112)
  {
    v114 = CFStringCreateMutableCopy(alloc, 0, v112);
    v115 = CFStringCreateMutable(alloc, 0);
    CFStringAppend(v115, appendedStringa);
    CFStringAppend(v115, @"struct SCNShaderLightingContribution {vec3 ambient; vec3 diffuse; vec3 specular; vec3 modulate;} _lightingContribution;\n");
    v116 = CFDictionaryCreateMutableCopy(alloc, 0, v72);
    v117 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v162)
    {
      CFDictionaryAddValue(v116, @"USE_SURFACE_MODIFIER", &stru_282DCC058);
      __ReplaceCodeWithModifiers(v185, v162, v114, v115, v116, v117, @"__DoSurfaceModifier__");
    }

    if (v154)
    {
      CFDictionaryAddValue(v116, @"USE_FRAGMENT_MODIFIER", &stru_282DCC058);
      __ReplaceCodeWithModifiers(v184, v154, v114, v115, v116, v117, @"__DoFragmentModifier__");
    }

    if (v142 < 0)
    {
      CFDictionaryAddValue(v116, @"LOCK_AMBIENT_WITH_DIFFUSE", &stru_282DCC058);
      if ((v156 & 0x20) != 0)
      {
LABEL_210:
        CFDictionaryAddValue(v116, @"USE_DOUBLE_SIDED", &stru_282DCC058);
      }
    }

    else if ((v156 & 0x20) != 0)
    {
      goto LABEL_210;
    }

    if ((v141 & 1) == 0)
    {
      if ((v146 | (((v136 | ModifierFlag) & 2) >> 1)) == 1)
      {
        CFDictionaryAddValue(v116, @"USE_TRANSPARENCY", &stru_282DCC058);
      }

      if (v150 == 2048)
      {
        CFDictionaryAddValue(v116, @"USE_NODE_OPACITY", &stru_282DCC058);
      }
    }

    v118 = v148;
    if ((EffectPropertyHashCode & 0x400) != 0)
    {
      v118 = 0;
    }

    if ((v118 & 1) == 0)
    {
      CFDictionaryAddValue(v116, @"DIFFUSE_PREMULTIPLIED", &stru_282DCC058);
    }

    if (v150 == 2048)
    {
      CFDictionaryAddValue(v116, @"USE_TRANSPARENCY_RGBZERO", &stru_282DCC058);
    }

    if (v74)
    {
      CFStringAppend(v115, v175);
      v119 = v178;
      v189 = CFStringFind(v114, @"__DoTexcoord__", 0);
      CFStringReplace(v114, v189, v119);
    }

    if ((v163 & v161) == 1)
    {
      CFStringAppend(v115, theString);
      CFDictionaryApplyFunction(v155, __appendDictionary_0, v117);
      v190 = CFStringFind(v114, @"__DoLighting__", 0);
      CFStringReplace(v114, v190, v75);
    }

    CFStringAppend(v111, @"precision highp float;\n");
    v167 = v117;
    CFDictionaryApplyFunction(v117, __AppendUniformsDeclaration, v111);
    alloca = v114;
    CFStringAppend(v115, v114);
    v120 = CFDictionaryGetCount(v116);
    v121 = malloc_type_malloc(8 * v120, 0x80040B8603338uLL);
    v122 = malloc_type_malloc(8 * v120, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v116, v121, v122);
    if (v120 >= 1)
    {
      v123 = v121;
      v124 = v122;
      do
      {
        v126 = *v123++;
        v125 = v126;
        v127 = *v124++;
        CFStringAppendFormat(v111, 0, @"#define %@ %@\n", v125, v127);
        --v120;
      }

      while (v120);
    }

    free(v121);
    free(v122);
    CFStringAppend(v111, v115);
    CFRelease(v116);
    CFRelease(v167);
    CFRelease(v115);
    CFRelease(alloca);
    v72 = theDict;
    v75 = v172;
  }

  else
  {
    v128 = scn_default_log(0, v113);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }
  }

  CFRelease(v175);
  CFRelease(v176);
  CFRelease(v177);
  CFRelease(v178);
  CFRelease(appendedStringa);
  v129 = C3DFXGLSLProgramCreateWithSources(v88, v111);
  C3DFXProgramSetProfile(v129, 0);
  C3DCommonProfileShaderAssignAttributesAndUniformsIndexes(v129);
  CFRelease(v88);
  CFRelease(v111);
  CFRelease(v155);
  CFRelease(v75);
  CFRelease(theString);
  CFRelease(v72);
  return v129;
}

- (void)_newProgramWithHashCode:(uint8_t *)buf engineContext:(void *)a2 introspectionDataPtr:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "modCode";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

- (void)_newProgramWithHashCode:(uint8_t *)buf engineContext:(_BYTE *)a2 introspectionDataPtr:(os_log_t)log .cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Physically based lighting model is not supported by the OpenGL renderer, using Phong instead (2)", buf, 2u);
}

@end