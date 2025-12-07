@interface VFXCommonProfileProgramGeneratorMetal
- (__CFXProgram)_newProgramWithHashCode:(__CFXProgramHashCode *)code engineContext:(__CFXEngineContext *)context introspectionDataPtr:(void *)ptr;
- (id)initAllowingHotReload:(BOOL)reload;
- (id)splitInputOutputStructsIfNeededForSourceCode:(id)code generatedFromReplacementStrings:(id)strings perPixelLighting:(BOOL)lighting clipDistanceCount:(unint64_t)count hasBezierCurveDeformer:(BOOL)deformer;
- (void)_loadSourceCode;
- (void)collectShaderForProgram:(__CFXProgram *)program hashCode:(id)code newVertexFunctionName:(id)name newFragmentFunctionName:(id)functionName sourceCodeBlock:(id)block additionalFileBlock:(id)fileBlock;
- (void)dealloc;
- (void)emptyShaderCache;
@end

@implementation VFXCommonProfileProgramGeneratorMetal

- (void)_loadSourceCode
{
  v193[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1AF28A7E4(@"CFX-Lighting.metal");
  self->_originalLightingSourceCode = v3;
  if (!v3)
  {
    v5 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4778(v5, v4, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = MEMORY[0x1E696B098];
  v13 = objc_msgSend_rangeOfString_(self->_originalLightingSourceCode, v4, @"__SurfaceExtraDecl__");
  v15 = objc_msgSend_valueWithRange_(v12, v14, v13, v14);
  v16 = MEMORY[0x1E696B098];
  v18 = objc_msgSend_rangeOfString_(self->_originalLightingSourceCode, v17, @"__LightModifierExtraDecl__");
  v20 = objc_msgSend_valueWithRange_(v16, v19, v18, v19);
  v21 = MEMORY[0x1E696B098];
  v23 = objc_msgSend_rangeOfString_(self->_originalLightingSourceCode, v22, @"__DoLightModifier__");
  v193[0] = v15;
  v193[1] = v20;
  v193[2] = objc_msgSend_valueWithRange_(v21, v24, v23, v24);
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v193, 3);
  self->_lightingInjectionPointRanges = v26;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v182, v192, 16);
  if (v28)
  {
    v31 = v28;
    v32 = *v183;
    do
    {
      v33 = 0;
      do
      {
        if (*v183 != v32)
        {
          objc_enumerationMutation(v26);
        }

        v34 = objc_msgSend_rangeValue(*(*(&v182 + 1) + 8 * v33), v29, v30);
        if (!v29)
        {
          v35 = sub_1AF0D5194(v34, 0);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE47F0(v190, &v191, v35);
          }
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v182, v192, 16);
    }

    while (v31);
  }

  v36 = sub_1AF28A7E4(@"CFX-CommonProfile.metal");
  self->_originalSourceCode = v36;
  v37 = MEMORY[0x1E696B098];
  v39 = objc_msgSend_rangeOfString_(v36, v38, @"#import vfx_metal");
  v177 = objc_msgSend_valueWithRange_(v37, v40, v39, v40);
  v41 = MEMORY[0x1E696B098];
  v43 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v42, @"#import vfx_util.h");
  v176 = objc_msgSend_valueWithRange_(v41, v44, v43, v44);
  v45 = MEMORY[0x1E696B098];
  v47 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v46, @"#import CFX-PBR.metal");
  v175 = objc_msgSend_valueWithRange_(v45, v48, v47, v48);
  v49 = MEMORY[0x1E696B098];
  v51 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v50, @"#import vfx_shadowmap_util.h");
  v174 = objc_msgSend_valueWithRange_(v49, v52, v51, v52);
  v53 = MEMORY[0x1E696B098];
  v55 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v54, @"#import vfx_tessellation.h");
  v173 = objc_msgSend_valueWithRange_(v53, v56, v55, v56);
  v57 = MEMORY[0x1E696B098];
  v59 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v58, @"__TexcoordDecl__");
  v172 = objc_msgSend_valueWithRange_(v57, v60, v59, v60);
  v61 = MEMORY[0x1E696B098];
  v63 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v62, @"__ExtraVaryingsDecl__");
  v171 = objc_msgSend_valueWithRange_(v61, v64, v63, v64);
  v65 = MEMORY[0x1E696B098];
  v67 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v66, @"__ShaderModifiersDecl__");
  v170 = objc_msgSend_valueWithRange_(v65, v68, v67, v68);
  v69 = MEMORY[0x1E696B098];
  v71 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v70, @"#import CFX-Lighting.metal");
  v169 = objc_msgSend_valueWithRange_(v69, v72, v71, v72);
  v73 = MEMORY[0x1E696B098];
  v75 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v74, @"__OpenSubdivDeclPerGeometry__");
  v168 = objc_msgSend_valueWithRange_(v73, v76, v75, v76);
  v77 = MEMORY[0x1E696B098];
  v79 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v78, @"__OpenSubdivDeclPerPatchType__");
  v167 = objc_msgSend_valueWithRange_(v77, v80, v79, v80);
  v81 = MEMORY[0x1E696B098];
  v83 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v82, @"__OpenSubdivDeclShared__");
  v166 = objc_msgSend_valueWithRange_(v81, v84, v83, v84);
  v85 = MEMORY[0x1E696B098];
  v87 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v86, @"__VertexExtraArguments__");
  v165 = objc_msgSend_valueWithRange_(v85, v88, v87, v88);
  v89 = MEMORY[0x1E696B098];
  v91 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v90, @"__VertexDoVertexOnlyTexcoord__");
  v164 = objc_msgSend_valueWithRange_(v89, v92, v91, v92);
  v93 = MEMORY[0x1E696B098];
  v95 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v94, @"__DoGeometryModifier__");
  v163 = objc_msgSend_valueWithRange_(v93, v96, v95, v96);
  v97 = MEMORY[0x1E696B098];
  v99 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v98, @"__VertexDoLighting__");
  v162 = objc_msgSend_valueWithRange_(v97, v100, v99, v100);
  v101 = MEMORY[0x1E696B098];
  v103 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v102, @"__VertexDoTexcoord__");
  v105 = objc_msgSend_valueWithRange_(v101, v104, v103, v104);
  v106 = MEMORY[0x1E696B098];
  v108 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v107, @"__FragmentExtraArguments__");
  v110 = objc_msgSend_valueWithRange_(v106, v109, v108, v109);
  v111 = MEMORY[0x1E696B098];
  v113 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v112, @"__FragmentDoTexcoord__");
  v115 = objc_msgSend_valueWithRange_(v111, v114, v113, v114);
  v116 = MEMORY[0x1E696B098];
  v118 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v117, @"__DoSurfaceModifier__");
  v120 = objc_msgSend_valueWithRange_(v116, v119, v118, v119);
  v121 = MEMORY[0x1E696B098];
  v123 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v122, @"__LightModifierCopyDecl__");
  v125 = objc_msgSend_valueWithRange_(v121, v124, v123, v124);
  v126 = MEMORY[0x1E696B098];
  v128 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v127, @"__FragmentDoLighting__");
  v130 = objc_msgSend_valueWithRange_(v126, v129, v128, v129);
  v131 = MEMORY[0x1E696B098];
  v133 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v132, @"__DoFragmentModifier__");
  v135 = objc_msgSend_valueWithRange_(v131, v134, v133, v134);
  v137 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v136, @"} commonprofile_io;");
  v139 = &v138[v137];
  v140 = objc_msgSend_rangeOfString_options_range_(self->_originalSourceCode, v138, @"typedef struct {", 4, 0, &v138[v137]);
  self->_commonProfileIORange.location = v140;
  self->_commonProfileIORange.length = &v139[-v140];
  v189[0] = v177;
  v189[1] = v176;
  v189[2] = v175;
  v189[3] = v174;
  v189[4] = v173;
  v189[5] = v172;
  v189[6] = v171;
  v189[7] = v170;
  v189[8] = v169;
  v189[9] = v168;
  v189[10] = v167;
  v189[11] = v166;
  v189[12] = v165;
  v189[13] = v164;
  v189[14] = v163;
  v189[15] = v162;
  v189[16] = v105;
  v189[17] = v110;
  v189[18] = v115;
  v189[19] = v120;
  v189[20] = v125;
  v189[21] = v130;
  v189[22] = v135;
  v142 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v141, v189, 23);
  self->_injectionPointRanges = v142;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v143, &v178, v188, 16);
  if (v144)
  {
    v147 = v144;
    v148 = *v179;
    do
    {
      v149 = 0;
      do
      {
        if (*v179 != v148)
        {
          objc_enumerationMutation(v142);
        }

        v150 = objc_msgSend_rangeValue(*(*(&v178 + 1) + 8 * v149), v145, v146);
        if (!v145)
        {
          v151 = sub_1AF0D5194(v150, 0);
          if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE47F0(v186, &v187, v151);
          }
        }

        ++v149;
      }

      while (v147 != v149);
      v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v145, &v178, v188, 16);
      v147 = v144;
    }

    while (v144);
  }

  if (!self->_originalSourceCode)
  {
    v152 = sub_1AF0D5194(v144, v145);
    if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4834(v152, v153, v154, v155, v156, v157, v158, v159);
    }
  }

  v160 = self->_lightingInjectionPointRanges;
  v161 = self->_injectionPointRanges;
}

- (void)emptyShaderCache
{
  objc_msgSend__loadSourceCode(self, v3, v4);
  v5.receiver = self;
  v5.super_class = VFXCommonProfileProgramGeneratorMetal;
  [(VFXCommonProfileProgramGenerator *)&v5 emptyShaderCache];
}

- (id)initAllowingHotReload:(BOOL)reload
{
  v9.receiver = self;
  v9.super_class = VFXCommonProfileProgramGeneratorMetal;
  v4 = [(VFXCommonProfileProgramGenerator *)&v9 init];
  v7 = v4;
  if (v4)
  {
    v4->_allowHotReload = reload;
    objc_msgSend__loadSourceCode(v4, v5, v6);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCommonProfileProgramGeneratorMetal;
  [(VFXCommonProfileProgramGenerator *)&v3 dealloc];
}

- (__CFXProgram)_newProgramWithHashCode:(__CFXProgramHashCode *)code engineContext:(__CFXEngineContext *)context introspectionDataPtr:(void *)ptr
{
  v446 = *MEMORY[0x1E69E9840];
  v409 = 0;
  memset(v408, 0, sizeof(v408));
  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  v402 = 0u;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
  v398 = 0u;
  v399 = 0u;
  v397 = 0u;
  codeCopy = code;
  v7 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 0, context, ptr);
  v396 = v7;
  v9 = sub_1AF12E2AC(context, v8);
  v11 = 0;
  v382 = sub_1AF333168(v9, v10);
  if (v382)
  {
    v11 = objc_msgSend_setWithCapacity_(MEMORY[0x1E695DFA8], v12, 0);
    *&v397 = v11;
  }

  *(&v400 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v12, 0);
  v15 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v13, 0);
  *&v398 = v15;
  for (i = 40; i != 72; i += 8)
  {
    *(&codeCopy + i) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v14, 0);
  }

  if (sub_1AF13E438(code))
  {
    v18 = sub_1AF12DDCC(context, v17);
    if (v18)
    {
      v18 = sub_1AF1CF878(v18, v19);
    }

    v21 = objc_msgSend_headerInludeString(v18, v19, v20);
    if (objc_msgSend_length(v21, v22, v23))
    {
      objc_msgSend_appendString_(v15, v17, v21);
    }
  }

  *&v401 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v17, 0);
  *(&v401 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v24, 0);
  *&v402 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v25, 0);
  *(&v402 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v26, 0);
  *&v403 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v27, 0);
  *&v404 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v28, 0);
  *(&v404 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v29, 0);
  *(&v405 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v30, 0);
  *&v406 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v31, 0);
  *(&v406 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v32, 0);
  *&v407 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v33, 0);
  *(&v407 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v34, 0);
  v385 = sub_1AF13E558(code);
  v35 = sub_1AF13E464(code, 6u);
  v373 = sub_1AF13E464(code, 3u);
  v375 = sub_1AF13E4EC(code);
  v376 = sub_1AF13E504(code);
  v36 = sub_1AF13E4A8(code);
  v37 = sub_1AF13E430(code);
  v38 = v37;
  v39 = v37;
  v40 = sub_1AF13E414(code);
  v379 = v40;
  v380 = (v40 & 4) != 0 && sub_1AF1305F8(context, 16);
  v372 = sub_1AF13E458(code, 1u);
  v390 = v39;
  v374 = v35;
  BYTE3(v408[0]) = v35 & 1 | ((v39 & 0x10) != 0);
  v41 = sub_1AF13E568(code);
  v42 = sub_1AF13E560(code);
  if (v41)
  {
    v44 = v42;
    if (!objc_msgSend_objectForKeyedSubscript_(v7, v43, @"USE_POSITION"))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v45, &unk_1F25D4378, @"USE_POSITION");
    }

    v46 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v45, v44);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v47, v46, @"USE_MULTIPLE_RENDERING");
    v48 = sub_1AF13E574(code);
    if (v48 == 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v43, &stru_1F2575650, @"USE_VERTEX_AMPLIFICATION");
    }

    else if (v48 == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v43, &stru_1F2575650, @"USE_INSTANCING");
    }

    if (v41 == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v43, &stru_1F2575650, @"USE_LAYERED_RENDERING");
    }

    else if (v41 == 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v43, &stru_1F2575650, @"USE_MULTIPLE_VIEWPORTS_RENDERING");
    }
  }

  if (v11)
  {
    objc_msgSend_addObject_(v11, v43, @"USE_MULTIPLE_RENDERING");
    objc_msgSend_addObject_(v11, v49, @"USE_VERTEX_AMPLIFICATION");
    objc_msgSend_addObject_(v11, v50, @"USE_INSTANCING");
    objc_msgSend_addObject_(v11, v51, @"USE_LAYERED_RENDERING");
    objc_msgSend_addObject_(v11, v52, @"USE_MULTIPLE_VIEWPORTS_RENDERING");
  }

  v53 = sub_1AF13E534(code);
  if (v53)
  {
    v53 = objc_msgSend_setObject_forKeyedSubscript_(v7, v54, &stru_1F2575650, @"USE_IBL_TRANSFORM");
  }

  v55 = sub_1AF1F32F0(v53, v54);
  v56 = sub_1AF13E848(code);
  if (v55 <= v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = v55;
  }

  if ((v41 == 2 || v41 == 1) && v57 <= 0x20001)
  {
    v57 = 131073;
  }

  contextCopy = context;
  v58 = sub_1AF12FAD8(context);
  v59 = 131074;
  memset(&v445[14], 0, 32);
  if (v57 > 0x20002)
  {
    v59 = v57;
  }

  if (!v58)
  {
    v59 = v57;
  }

  v381 = v59;
  memset(v445, 0, 224);
  codeCopy2 = code;
  v60 = sub_1AF13E7BC(code, 0, v445, 32);
  v444 = 0u;
  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v438 = 0u;
  v437 = 0u;
  v436 = 0u;
  v435 = 0u;
  v434 = 0u;
  v433 = 0u;
  v432 = 0u;
  v431 = 0u;
  *buf = 0u;
  v430 = 0u;
  v61 = sub_1AF13E7BC(codeCopy, 1u, buf, 32);
  memset(v428, 0, sizeof(v428));
  v62 = sub_1AF13E7BC(codeCopy, 2u, v428, 32);
  *&v405 = 0;
  v63 = sub_1AF13E7BC(codeCopy, 3u, &v405, 1);
  v65 = v63;
  if (v63 >= 2)
  {
    v66 = sub_1AF0D5194(v63, v64);
    v63 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      sub_1AFDE48F0();
    }

    v65 = 1;
  }

  if (v60 >= 2)
  {
    v67 = sub_1AF0D5194(v63, v64);
    v63 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      sub_1AFDE4924();
    }

    v60 = 1;
  }

  if (v61 >= 2)
  {
    v68 = sub_1AF0D5194(v63, v64);
    v63 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      sub_1AFDE4958();
    }

    v61 = 1;
  }

  if (v62 >= 2)
  {
    v69 = sub_1AF0D5194(v63, v64);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE498C();
    }

    v62 = 1;
  }

  sub_1AF1EBF70(v396, v445, v60);
  sub_1AF1EBF70(v396, buf, v61);
  sub_1AF1EBF70(v396, v428, v62);
  sub_1AF1EBF70(v396, &v405, v65);
  sub_1AF1ECF18(&codeCopy, v445, v60);
  sub_1AF1ECF18(&codeCopy, buf, v61);
  sub_1AF1ECF18(&codeCopy, v428, v62);
  sub_1AF1ECF18(&codeCopy, &v405, v65);
  if (v405)
  {
    if (v61)
    {
      v70 = 1;
    }

    else
    {
      if (!v62)
      {
        goto LABEL_61;
      }

      v70 = 2;
    }

    sub_1AF1ECDD4(&codeCopy, v405, v70);
  }

LABEL_61:
  v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sub_1AF1ECD04(v71, v445, v60);
  sub_1AF1ECD04(v71, buf, v61);
  sub_1AF1ECD04(v71, v428, v62);
  sub_1AF1ECD04(v71, &v405, v65);
  v412[0] = MEMORY[0x1E69E9820];
  v412[1] = 3221225472;
  v412[2] = sub_1AF1F0F40;
  v412[3] = &unk_1E7A7C500;
  v412[4] = &codeCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v71, v72, v412);

  sub_1AF1EBFF0(v428, v62);
  sub_1AF1EBFF0(buf, v61);
  sub_1AF1EBFF0(v445, v60);
  sub_1AF1EBFF0(&v405, v65);
  if (v60)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v73, &stru_1F2575650, @"USE_GEOMETRY_MODIFIER");
    sub_1AF1F0F74(&codeCopy, 0, v445);
  }

  if (v61)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v73, &stru_1F2575650, @"USE_SURFACE_MODIFIER");
    sub_1AF1F0F74(&codeCopy, 1, buf);
  }

  if (v62)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v73, &stru_1F2575650, @"USE_FRAGMENT_MODIFIER");
    sub_1AF1F0F74(&codeCopy, 2, v428);
  }

  if (v65)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v73, &stru_1F2575650, @"USE_LIGHT_MODIFIER");
    sub_1AF1F0F74(&codeCopy, 3, &v405);
  }

  v74 = codeCopy2;
  if (v397)
  {
    objc_msgSend_addObject_(v397, v73, @"USE_GEOMETRY_MODIFIER");
    objc_msgSend_addObject_(v397, v75, @"USE_SURFACE_MODIFIER");
    objc_msgSend_addObject_(v397, v76, @"USE_FRAGMENT_MODIFIER");
    objc_msgSend_addObject_(v397, v77, @"USE_LIGHT_MODIFIER");
    v411[0] = MEMORY[0x1E69E9820];
    v411[1] = 3221225472;
    v411[2] = sub_1AF1F10B4;
    v411[3] = &unk_1E7A7C520;
    v411[4] = &codeCopy;
    sub_1AF1489B4(v411);
    v80 = sub_1AF14A978(v78, v79);
    v410[0] = MEMORY[0x1E69E9820];
    v410[1] = 3221225472;
    v410[2] = sub_1AF1F10C4;
    v410[3] = &unk_1E7A79958;
    v410[4] = &codeCopy;
    sub_1AF28A67C(v80, v410);
  }

  v82 = v385;
  if (objc_msgSend_objectForKeyedSubscript_(v396, v73, @"USE_MODIFIER_FRAMEBUFFER_COLOR0"))
  {
    v83 = sub_1AF1305F8(contextCopy, 2048);
    if (v83)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v84, &unk_1F25D4390, @"CFX_SUPPORTS_PROGRAMMABLE_BLENDING");
    }

    else
    {
      v85 = sub_1AF0D5194(v83, v84);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE49C0();
      }
    }
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v81, @"USE_MODIFIER_FRAMEBUFFER_COLOR0");
    objc_msgSend_addObject_(v397, v86, @"CFX_SUPPORTS_PROGRAMMABLE_BLENDING");
  }

  v87 = v38 & 0xF;
  if (objc_msgSend_objectForKeyedSubscript_(v396, v81, @"USE_CLIP_DISTANCE3"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v88, @"4", @"USE_CLIP_DISTANCE_COUNT");
    v378 = 4;
    v90 = 0x1E696A000;
    v91 = v379;
    goto LABEL_87;
  }

  v90 = 0x1E696A000;
  v91 = v379;
  if (objc_msgSend_objectForKeyedSubscript_(v396, v88, @"USE_CLIP_DISTANCE2"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v92, @"3", @"USE_CLIP_DISTANCE_COUNT");
    v93 = 3;
LABEL_86:
    v378 = v93;
    goto LABEL_87;
  }

  if (objc_msgSend_objectForKeyedSubscript_(v396, v92, @"USE_CLIP_DISTANCE1"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v94, @"2", @"USE_CLIP_DISTANCE_COUNT");
    v93 = 2;
    goto LABEL_86;
  }

  if (objc_msgSend_objectForKeyedSubscript_(v396, v94, @"USE_CLIP_DISTANCE0"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v89, @"1", @"USE_CLIP_DISTANCE_COUNT");
    v93 = 1;
    goto LABEL_86;
  }

  v378 = 0;
LABEL_87:
  if (v87 == 3)
  {
    v95 = 0;
    v96 = 1;
    BYTE3(v408[0]) = 1;
  }

  else
  {
    v95 = 0;
    if ((v390 & 0xD) != 0)
    {
      v96 = v36;
    }

    else
    {
      v96 = 0;
    }

    if (v87 == 1 && v96)
    {
      v95 = sub_1AF13E474(codeCopy2, 2u);
      v96 = 1;
    }
  }

  if (objc_msgSend_objectForKeyedSubscript_(v396, v89, @"USE_SPECULAR"))
  {
    v98 = 1;
  }

  else
  {
    v98 = v95;
  }

  v384 = v96;
  v377 = v98;
  if (v98)
  {
    if (BYTE3(v408[0]))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v97, &unk_1F25D4390, @"USE_VIEW");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v97, &unk_1F25D4378, @"USE_VIEW");
    }

    if (BYTE3(v408[0]))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v99, &unk_1F25D4390, @"USE_SHININESS");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v99, &unk_1F25D4378, @"USE_SHININESS");
    }
  }

  BYTE2(v408[0]) = 0;
  LOWORD(v408[0]) = 0;
  DWORD1(v408[0]) = 0;
  LOBYTE(v409) = 1;
  v101 = sub_1AF13E4B4(codeCopy2);
  v102 = @"USE_CONSTANT";
  if (!v87 || v87 == 2)
  {
    goto LABEL_109;
  }

  if (v87 == 4)
  {
    v102 = @"USE_SHADOWONLY";
LABEL_109:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v100, &stru_1F2575650, v102);
  }

  v392 = v87;
  if (!v96)
  {
    goto LABEL_218;
  }

  if (v405)
  {
    v103 = sub_1AF148804(v405, v100);
    if (v103)
    {
      objc_msgSend_appendString_(*(&v404 + 1), v100, v103);
    }
  }

  if (v87 == 3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v100, &stru_1F2575650, @"USE_PBR");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v104, &unk_1F25D4390, @"USE_VIEW");
  }

  v105 = sub_1AF13E4E4(codeCopy2);
  v106 = sub_1AF13E41C(codeCopy2);
  if (!v106)
  {
    goto LABEL_208;
  }

  v371 = v101;
  v108 = 0;
  v109 = v106;
  v388 = v106;
  v387 = v105;
  do
  {
    if (((v105 >> v108) & 1) == 0)
    {
      goto LABEL_196;
    }

    v110 = sub_1AF13E424(codeCopy, v108);
    v112 = v110;
    v113 = v110 & 7;
    v114 = (v110 & 0x40000) != 0 ? "true" : "false";
    if ((v110 & 7) == 0)
    {
      goto LABEL_196;
    }

    v115 = ((v110 & 6) == 2) & (v110 >> 3);
    if (v115)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v111, &stru_1F2575650, @"USE_GOBO");
      if (BYTE3(v408[0]))
      {
        v117 = 176;
      }

      else
      {
        v117 = 168;
      }

      objc_msgSend_appendFormat_(*(&codeCopy + v117), v116, @", texture2d<half> u_goboTexture%d\n", v108);
      objc_msgSend_appendFormat_(*(&codeCopy + v117), v118, @", sampler u_goboTexture%dSampler\n", v108);
    }

    v119 = (v112 >> 6) & 7;
    if (v113 == 2)
    {
      v120 = ((v112 & 0x10) != 0) | v115 & 1;
    }

    else
    {
      if (v113 == 5)
      {
        if (v119 == 4)
        {
          objc_msgSend_appendFormat_(v407, v111, @", device packed_float2* u_areaPolygonPositions%d\n", v108);
        }
      }

      else if (v113 == 6)
      {
        objc_msgSend_appendFormat_(v407, v111, @", texture2d<half> u_iesTexture%d\n", v108);
      }

      v120 = 1;
    }

    v121 = (v112 >> 9) & 0x1F;
    LOBYTE(v408[0]) |= v120;
    BYTE1(v408[0]) |= (v112 & 0x10) >> 4;
    v122 = DWORD1(v408[0]);
    if (DWORD1(v408[0]) <= v121)
    {
      v122 = (v112 >> 9) & 0x1F;
    }

    DWORD1(v408[0]) = v122;
    if (!sub_1AF13E568(codeCopy))
    {
      v126 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v123, @"%d", v108);
      goto LABEL_149;
    }

    v124 = sub_1AF13E574(codeCopy);
    if (v124 == 1)
    {
      if (BYTE3(v408[0]) == 1)
      {
        v126 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v125, @"USE_MULTIPLE_RENDERING * %d + in.sliceIndex", v108);
      }

      else
      {
        v126 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v125, @"USE_MULTIPLE_RENDERING * %d + out.sliceIndex", v108);
      }

      goto LABEL_149;
    }

    if (v124 == 2)
    {
      v126 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v125, @"USE_MULTIPLE_RENDERING * %d + amplificationID", v108);
LABEL_149:
      v129 = v126;
      goto LABEL_150;
    }

    v128 = sub_1AF0D5194(v124, v125);
    v126 = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
    if (v126)
    {
      sub_1AFDE49F4(buf, &buf[1], v128);
    }

    v129 = 0;
LABEL_150:
    if (v113 > 2)
    {
      switch(v113)
      {
        case 3:
          v132 = v115 ^ 1;
          if ((v112 & 0x10) == 0)
          {
            v132 = 1;
          }

          if (v132)
          {
            if (v115)
            {
              v364 = v108;
              v365 = v108;
              objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_spot_gobo(vfx_lights[%@], u_goboTexture%d, u_goboTexture%dSampler);\n", v129);
            }

            else if ((v112 & 0x10) != 0)
            {
              v364 = "u_shadowTexture";
              v365 = ((v112 >> 9) & 0x1F);
              objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_spot_soft_shadows(vfx_lights[%@], %s, u_shadowKernel, %d);\n", v129);
            }

            else
            {
              objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_spot(vfx_lights[%@]);\n", v129);
            }
          }

          else
          {
            v366 = v108;
            v369 = v108;
            v364 = v108;
            v365 = ((v112 >> 9) & 0x1F);
            objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_spot_gobo_soft_shadows(vfx_lights[%@], u_shadowTexture%d, u_shadowKernel, %d, u_goboTexture%d, u_goboTexture%dSampler);\n", v129);
          }

          break;
        case 5:
          objc_msgSend_setObject_forKeyedSubscript_(v396, v127, &stru_1F2575650, @"USE_AREA_LIGHT");
          if (((v112 >> 6) & 7) <= 1)
          {
            v87 = v392;
            v109 = v388;
            v105 = v387;
            if (v119)
            {
              objc_msgSend_appendFormat_(v404, v131, @"\t_lightingContribution.add_area_rectangle(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v129);
            }

            else
            {
              objc_msgSend_appendFormat_(v404, v131, @"\t_lightingContribution.add_area_line(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v129);
            }
          }

          else
          {
            v87 = v392;
            v109 = v388;
            v105 = v387;
            switch(v119)
            {
              case 2:
                objc_msgSend_appendFormat_(v404, v131, @"\t_lightingContribution.add_area_ellipse(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v129);
                break;
              case 3:
                objc_msgSend_appendFormat_(v404, v131, @"\t_lightingContribution.add_area_ellipsoid(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v129);
                break;
              case 4:
                v364 = v108;
                objc_msgSend_appendFormat_(v404, v131, @"\t_lightingContribution.add_area_polygon(vfx_lights[%@], u_areaLightBakedDataTexture, u_areaPolygonPositions%d);\n", v129);
                break;
            }
          }

          goto LABEL_194;
        case 6:
          objc_msgSend_setObject_forKeyedSubscript_(v396, v127, &stru_1F2575650, @"USE_IES_LIGHT");
          if ((v112 & 0x10) != 0)
          {
            v365 = "u_shadowTexture";
            v366 = (v112 >> 9) & 0x1F;
            v364 = v108;
            objc_msgSend_appendFormat_(v404, v130, @"\t_lightingContribution.add_ies_soft_shadows(vfx_lights[%@], u_iesTexture%d, %s, u_shadowKernel, %d);\n", v129);
          }

          else
          {
            v364 = v108;
            objc_msgSend_appendFormat_(v404, v130, @"\t_lightingContribution.add_ies(vfx_lights[%@], u_iesTexture%d);\n", v129);
          }

          break;
        default:
          v133 = sub_1AF0D5194(v126, v127);
          v87 = v392;
          v109 = v388;
          v105 = v387;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE4A34(v445, (v445 + 4), v133);
          }

          goto LABEL_194;
      }

      goto LABEL_192;
    }

    if (v113 == 1)
    {
      v109 = v388;
      if ((v112 & 0x10) != 0 && v409 == 1)
      {
        objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_omni_soft_shadows(vfx_lights[%@], %s, u_shadowKernel, %d);\n", v129, "u_shadowTexture", (v112 >> 9) & 0x1F, v366, v369, v370);
      }

      else
      {
        objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_omni(vfx_lights[%@]);\n", v129, v364, v365, v366, v369, v370);
      }

LABEL_174:
      v87 = v392;
LABEL_193:
      v105 = v387;
      goto LABEL_194;
    }

    if (v115)
    {
      v364 = v108;
      v365 = v108;
      objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_directional_gobo(vfx_lights[%@], u_goboTexture%d, u_goboTexture%dSampler);\n", v129);
LABEL_192:
      v87 = v392;
      v109 = v388;
      goto LABEL_193;
    }

    if ((v112 & 0x10) == 0)
    {
      objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_directional(vfx_lights[%@]);\n", v129);
      goto LABEL_192;
    }

    v109 = v388;
    if (((v112 >> 14) & 7) >= 2)
    {
      v134 = "true";
      if ((v112 & 0x20000) == 0)
      {
        v134 = "false";
      }

      objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_directional_cascaded_shadows(vfx_lights[%@], %s, %d, %s, u_shadowKernel, %d, %s);\n", v129, "u_shadowTexture", (v112 >> 14) & 7, v134, (v112 >> 9) & 0x1F, v114);
      goto LABEL_174;
    }

    v105 = v387;
    if (v121 < 2)
    {
      v364 = "u_shadowTexture";
      objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_directional_hard_shadows(vfx_lights[%@], %s);\n", v129);
    }

    else
    {
      v364 = "u_shadowTexture";
      v365 = ((v112 >> 9) & 0x1F);
      if ((v112 & 0x80000) != 0)
      {
        objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_directional_pcf_grid_shadows(vfx_lights[%@], %s, %d);\n", v129);
      }

      else
      {
        objc_msgSend_appendFormat_(v404, v127, @"\t_lightingContribution.add_directional_soft_shadows(vfx_lights[%@], %s, u_shadowKernel, %d);\n", v129);
      }
    }

    v87 = v392;
LABEL_194:
    if (v397)
    {
      objc_msgSend_addObject_(v397, v131, @"USE_GOBO");
      objc_msgSend_addObject_(v397, v135, @"USE_IES_LIGHT");
      objc_msgSend_addObject_(v397, v136, @"USE_AREA_LIGHT");
    }

LABEL_196:
    ++v108;
  }

  while (v109 != v108);
  v137 = 0;
  v74 = codeCopy2;
  v82 = v385;
  v90 = 0x1E696A000uLL;
  v91 = v379;
  v101 = v371;
  while ((sub_1AF13E424(codeCopy, v137) & 0x10) == 0)
  {
    if (v109 == ++v137)
    {
      goto LABEL_208;
    }
  }

  objc_msgSend_appendFormat_(v407, v107, @", depth2d<float> u_shadowTexture\n");
LABEL_208:
  objc_msgSend_setObject_forKeyedSubscript_(v396, v107, @"1", @"CFX_USE_ATLAS_FOR_SHADOW_MAP");
  objc_msgSend_setObject_forKeyedSubscript_(v396, v138, @"uchar", @"CFXLightIndexType");
  objc_msgSend_setObject_forKeyedSubscript_(v396, v139, &stru_1F2575650, @"CFX_USE_TEXTURE_FOR_LIGHT_INDICES");
  v96 = v384;
  if (sub_1AF13E4CC(v74))
  {
    if (sub_1AF1305F8(contextCopy, 256))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v141, &stru_1F2575650, @"CFX_SUPPORT_CUBE_ARRAY");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v396, v141, &stru_1F2575650, @"CFX_USE_REFLECTION_PROBES");
  }

  if (v405)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v140, @"VFXShadingModelCustom", @"LIGHTING_MODEL");
  }

  else
  {
    v142 = sub_1AF165914(v87);
    objc_msgSend_setObject_forKeyedSubscript_(v396, v143, v142, @"LIGHTING_MODEL");
  }

  if ((sub_1AF13E4C0(v74) & 1) != 0 || sub_1AF13E4CC(v74))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v100, &stru_1F2575650, @"USE_CLUSTERED_LIGHTING");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v144, &unk_1F25D4390, @"USE_POSITION");
  }

LABEL_218:
  if (v397)
  {
    objc_msgSend_addObject_(v397, v100, @"USE_PBR");
    objc_msgSend_addObject_(v397, v145, @"USE_CONSTANT");
    objc_msgSend_addObject_(v397, v146, @"USE_SHADOWONLY");
    objc_msgSend_addObject_(v397, v147, @"CFX_USE_TEXTURE_FOR_LIGHT_INDICES");
    objc_msgSend_addObject_(v397, v148, @"CFX_SUPPORT_CUBE_ARRAY");
    objc_msgSend_addObject_(v397, v149, @"CFX_USE_REFLECTION_PROBES");
    objc_msgSend_addObject_(v397, v150, @"LIGHTING_MODEL");
    objc_msgSend_addObject_(v397, v151, @"USE_CLUSTERED_LIGHTING");
  }

  if (v87 == 2 && (v390 & 0x280) != 0)
  {
    BYTE3(v408[0]) = 1;
  }

  if (sub_1AF13E528(v74))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v152, &stru_1F2575650, @"USE_FOG");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v153, &unk_1F25D4390, @"USE_POSITION");
  }

  if ((v96 & ((v82 & 8) >> 3)) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v152, &stru_1F2575650, @"USE_SSAO");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v154, &unk_1F25D4390, @"USE_POSITION");
  }

  if ((v96 & ((v82 & 0x1000) >> 12)) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v152, &stru_1F2575650, @"USE_BENTNORMALS");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v155, &unk_1F25D4390, @"USE_POSITION");
  }

  if (sub_1AF13E474(v74, 0x14u) && sub_1AF13E474(v74, 0x15u) && sub_1AF13E474(v74, 3u))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v156, &stru_1F2575650, @"USE_FRESNEL");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v157, &unk_1F25D4390, @"USE_VIEW");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v158, &unk_1F25D4390, @"USE_NORMAL");
  }

  if ((v96 & ((v390 & 0x40) != 0)) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v156, &stru_1F2575650, @"AVOID_OVERLIGHTING");
  }

  if (v101)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v156, &stru_1F2575650, @"USE_AMBIENT_LIGHTING");
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v156, @"USE_FOG");
    objc_msgSend_addObject_(v397, v159, @"USE_SSAO");
    objc_msgSend_addObject_(v397, v160, @"USE_BENTNORMALS");
    objc_msgSend_addObject_(v397, v161, @"USE_FRESNEL");
    objc_msgSend_addObject_(v397, v162, @"AVOID_OVERLIGHTING");
    objc_msgSend_addObject_(v397, v163, @"USE_AMBIENT_LIGHTING");
  }

  if (v96)
  {
    v164 = sub_1AF13E4D8(v74);
    if (v164)
    {
      v166 = objc_msgSend_numberWithUnsignedChar_(*(v90 + 3480), v165, v164);
      objc_msgSend_setObject_forKeyedSubscript_(v396, v167, v166, @"USE_PROBES_LIGHTING");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v396, v165, &stru_1F2575650, @"USE_LIGHTING");
    if (BYTE3(v408[0]) == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v168, &stru_1F2575650, @"USE_PER_PIXEL_LIGHTING");
      objc_msgSend_setObject_forKeyedSubscript_(v396, v169, &unk_1F25D4390, @"USE_NORMAL");
      if (v377 || (v408[0] & 1) != 0)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v396, v156, &unk_1F25D4390, @"USE_POSITION");
      }

      if (BYTE2(v408[0]) == 1)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v396, v156, &unk_1F25D4390, @"USE_MODULATE");
      }
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v168, &stru_1F2575650, @"USE_PER_VERTEX_LIGHTING");
      if (!objc_msgSend_objectForKeyedSubscript_(v396, v170, @"USE_NORMAL"))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v396, v171, &unk_1F25D4378, @"USE_NORMAL");
      }

      if (!objc_msgSend_objectForKeyedSubscript_(v396, v171, @"USE_VIEW"))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v396, v172, &unk_1F25D4378, @"USE_VIEW");
      }

      if (!objc_msgSend_objectForKeyedSubscript_(v396, v172, @"USE_POSITION"))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v396, v156, &unk_1F25D4378, @"USE_POSITION");
      }
    }
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v156, @"USE_PROBES_LIGHTING");
    objc_msgSend_addObject_(v397, v173, @"USE_LIGHTING");
    objc_msgSend_addObject_(v397, v174, @"USE_PER_PIXEL_LIGHTING");
    objc_msgSend_addObject_(v397, v175, @"USE_PER_VERTEX_LIGHTING");
    objc_msgSend_addObject_(v397, v176, @"USE_MODULATE");
  }

  if (sub_1AF13E51C(v74))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v177, &stru_1F2575650, @"HAS_NORMAL");
  }

  if ((v91 & 2) != 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v177, &stru_1F2575650, @"HAS_VERTEX_COLOR");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v178, &stru_1F2575650, @"USE_VERTEX_COLOR");
  }

  if (sub_1AF13E540(v74))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v179, &stru_1F2575650, @"USE_INSTANCING");
  }

  if (sub_1AF13E54C(v74))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &unk_1F25D4390, @"USE_POSITION");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v181, &stru_1F2575650, @"USE_POINT_RENDERING");
    if ((v82 & 0x20) != 0)
    {
      goto LABEL_264;
    }

LABEL_268:
    if ((v82 & 4) == 0)
    {
      goto LABEL_269;
    }

LABEL_265:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"USE_LASTFRAMETRANSFORM");
    if ((v82 & 0x800) == 0)
    {
      goto LABEL_271;
    }

LABEL_270:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"USE_MOTIONBLUR");
    goto LABEL_271;
  }

  if ((v82 & 0x20) == 0)
  {
    goto LABEL_268;
  }

LABEL_264:
  objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"DISABLE_SPECULAR");
  if ((v82 & 4) != 0)
  {
    goto LABEL_265;
  }

LABEL_269:
  if ((v82 & 0x800) != 0)
  {
    goto LABEL_270;
  }

LABEL_271:
  if (v397)
  {
    objc_msgSend_addObject_(v397, v180, @"HAS_NORMAL");
    objc_msgSend_addObject_(v397, v182, @"HAS_VERTEX_COLOR");
    objc_msgSend_addObject_(v397, v183, @"USE_VERTEX_COLOR");
    objc_msgSend_addObject_(v397, v184, @"USE_INSTANCING");
    objc_msgSend_addObject_(v397, v185, @"USE_POINT_RENDERING");
    objc_msgSend_addObject_(v397, v186, @"DISABLE_LINEAR_RENDERING");
    objc_msgSend_addObject_(v397, v187, @"DISABLE_SPECULAR");
    objc_msgSend_addObject_(v397, v188, @"USE_MOTIONBLUR");
    objc_msgSend_addObject_(v397, v189, @"USE_LASTFRAMETRANSFORM");
  }

  if ((v82 & 0x40) != 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"USE_COLOR1_OUTPUT");
    if (v82)
    {
      goto LABEL_289;
    }

LABEL_275:
    if ((v82 & 2) == 0)
    {
      goto LABEL_276;
    }

LABEL_290:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"USE_ALBEDO_METALNESS_OUTPUT");
    if ((v82 & 0x80) != 0)
    {
      goto LABEL_291;
    }

LABEL_277:
    if ((v82 & 0x10) == 0)
    {
      goto LABEL_278;
    }

LABEL_292:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"USE_OUTLINE");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v204, &stru_1F2575650, @"USE_MODELTRANSFORM");
    if ((v82 & 0x200) != 0)
    {
LABEL_279:
      objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &unk_1F25D4390, @"USE_NORMAL");
      objc_msgSend_setObject_forKeyedSubscript_(v396, v190, &unk_1F25D4390, @"USE_POSITION");
      objc_msgSend_setObject_forKeyedSubscript_(v396, v191, &stru_1F2575650, @"USE_MODELTRANSFORM");
      objc_msgSend_setObject_forKeyedSubscript_(v396, v192, &stru_1F2575650, @"USE_GBUFFER_OUTPUT");
      objc_msgSend_setObject_forKeyedSubscript_(v396, v193, &stru_1F2575650, @"USE_LASTFRAMETRANSFORM");
    }
  }

  else
  {
    if ((v82 & 1) == 0)
    {
      goto LABEL_275;
    }

LABEL_289:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &unk_1F25D4390, @"USE_NORMAL");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v203, &stru_1F2575650, @"USE_NORMAL_ROUGHNESS_OUTPUT");
    if ((v82 & 2) != 0)
    {
      goto LABEL_290;
    }

LABEL_276:
    if ((v82 & 0x80) == 0)
    {
      goto LABEL_277;
    }

LABEL_291:
    objc_msgSend_setObject_forKeyedSubscript_(v396, v180, &stru_1F2575650, @"USE_RADIANCE_AO_OUTPUT");
    if ((v82 & 0x10) != 0)
    {
      goto LABEL_292;
    }

LABEL_278:
    if ((v82 & 0x200) != 0)
    {
      goto LABEL_279;
    }
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v180, @"USE_COLOR1_OUTPUT");
    objc_msgSend_addObject_(v397, v194, @"USE_NORMAL_ROUGHNESS_OUTPUT");
    objc_msgSend_addObject_(v397, v195, @"USE_ALBEDO_METALNESS_OUTPUT");
    objc_msgSend_addObject_(v397, v196, @"USE_RADIANCE_AO_OUTPUT");
    objc_msgSend_addObject_(v397, v197, @"USE_OUTLINE");
    objc_msgSend_addObject_(v397, v198, @"USE_GBUFFER_OUTPUT");
  }

  if (sub_1AF13E464(v74, 7u))
  {
    sub_1AF1F00B0(&codeCopy, 7u, 7, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v396, v199, &stru_1F2575650, @"USE_AMBIENTOCCLUSION_MAP");
  }

  sub_1AF1F00B0(&codeCopy, 1u, 1, 1);
  sub_1AF1F00B0(&codeCopy, 2u, 2, (v377 | v373) & 1);
  sub_1AF1F00B0(&codeCopy, 8u, 8, 1);
  sub_1AF1F00B0(&codeCopy, 0, 0, 1);
  sub_1AF1F00B0(&codeCopy, 5u, 5, 1);
  sub_1AF1F00B0(&codeCopy, 6u, 6, v374);
  if (BYTE8(v397) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v200, &unk_1F25D4390, @"USE_TANGENT");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v201, &unk_1F25D4390, @"USE_BITANGENT");
  }

  sub_1AF1F00B0(&codeCopy, 9u, 9, v87 == 3);
  sub_1AF1F00B0(&codeCopy, 0xAu, 10, v87 == 3);
  if (v87 == 3)
  {
    v202 = sub_1AF13E474(v74, 0xBu);
  }

  else
  {
    v202 = 0;
  }

  sub_1AF1F00B0(&codeCopy, 0xBu, 11, v202);
  sub_1AF1F00B0(&codeCopy, 0xCu, 12, v202);
  sub_1AF1F00B0(&codeCopy, 0xDu, 13, v202);
  if (BYTE8(v397) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v205, &unk_1F25D4390, @"USE_TANGENT");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v206, &unk_1F25D4390, @"USE_BITANGENT");
  }

  if (v87 == 3)
  {
    v207 = sub_1AF13E474(v74, 0xEu);
    if ((v82 & 0x200) != 0)
    {
LABEL_302:
      objc_msgSend_setObject_forKeyedSubscript_(v396, v205, &unk_1F25D4390, @"USE_SUBSURFACE");
      goto LABEL_303;
    }
  }

  else
  {
    v207 = 0;
    if ((v82 & 0x200) != 0)
    {
      goto LABEL_302;
    }
  }

  if (v207)
  {
    goto LABEL_302;
  }

LABEL_303:
  sub_1AF1F00B0(&codeCopy, 0xEu, 14, v207);
  sub_1AF1F00B0(&codeCopy, 0xFu, 15, v207);
  if (v87 == 3)
  {
    v209 = sub_1AF13E474(v74, 0x10u);
    if ((v82 & 0x200) != 0)
    {
LABEL_308:
      objc_msgSend_setObject_forKeyedSubscript_(v396, v208, &unk_1F25D4390, @"USE_TRANSMISSION");
      goto LABEL_309;
    }
  }

  else
  {
    v209 = 0;
    if ((v82 & 0x200) != 0)
    {
      goto LABEL_308;
    }
  }

  if (v209)
  {
    goto LABEL_308;
  }

LABEL_309:
  sub_1AF1F00B0(&codeCopy, 0x10u, 16, v209);
  sub_1AF1F00B0(&codeCopy, 0x11u, 17, v209);
  sub_1AF1F00B0(&codeCopy, 3u, 3, 1);
  if (BYTE8(v397) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v210, &unk_1F25D4390, @"USE_VIEW");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v211, &unk_1F25D4390, @"USE_NORMAL");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v212, &unk_1F25D4390, @"USE_POSITION");
  }

  v213 = sub_1AF13E474(v74, 4u);
  sub_1AF1F00B0(&codeCopy, 4u, 4, v213);
  if (v87 == 3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v214, &stru_1F2575650, @"USE_PBR_TRANSPARENCY");
  }

  if ((v390 & 0x7800) == 0x1000 || (v390 & 0x20) != 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v214, &stru_1F2575650, @"USE_DOUBLE_SIDED");
  }

  if ((v375 & 1) == 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v214, &stru_1F2575650, @"USE_NODE_OPACITY");
  }

  if (qword_1EB654CC8 != -1)
  {
    sub_1AFDE4A78();
  }

  if ((byte_1EB654CC0 & 1) == 0 && ((v372 & 0x200) != 0 || (sub_1AF13E464(v74, 1u) & 1) == 0))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v214, &stru_1F2575650, @"DIFFUSE_PREMULTIPLIED");
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v214, @"USE_SUBSURFACE");
    objc_msgSend_addObject_(v397, v215, @"USE_TRANSMISSION");
    objc_msgSend_addObject_(v397, v216, @"LOCK_AMBIENT_WITH_DIFFUSE");
    objc_msgSend_addObject_(v397, v217, @"USE_DOUBLE_SIDED");
    objc_msgSend_addObject_(v397, v218, @"USE_TRANSPARENT");
    objc_msgSend_addObject_(v397, v219, @"USE_PBR_TRANSPARENCY");
    objc_msgSend_addObject_(v397, v220, @"USE_PBR_LAMBERTIAN_REFLECTION");
    objc_msgSend_addObject_(v397, v221, @"USE_NODE_OPACITY");
    objc_msgSend_addObject_(v397, v222, @"DIFFUSE_PREMULTIPLIED");
  }

  v223 = sub_1AF13E6AC(v74);
  if (v223 >= 1)
  {
    v225 = v223;
    for (j = 0; j != v225; ++j)
    {
      v227 = sub_1AF13E5F0(v74, j);
      v228 = sub_1AF13E650(v74, j);
      if (v228 != -1)
      {
        v229 = v228;
        objc_msgSend_appendFormat_(*(&v400 + 1), v224, @"    float2 %@Texcoord;\n", v227);
        objc_msgSend_appendFormat_(v403, v230, @"    _surface.%@Texcoord = in.texcoord%d;\n", v227, v229);
      }
    }
  }

  if (v376)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v224, &unk_1F25D4390, @"USE_ALPHA_CUTOFF");
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v224, @"USE_ALPHA_CUTOFF");
  }

  v231 = sub_1AF13E580(codeCopy);
  if (v231)
  {
    if (v231 >= 8)
    {
      v233 = 8;
    }

    else
    {
      v233 = v231;
    }

    if (v231 < 1)
    {
      v235 = 0;
    }

    else
    {
      v234 = 0;
      v235 = 0;
      do
      {
        v236 = sub_1AF13E594(codeCopy, v234);
        objc_msgSend_appendString_(v401, v237, off_1E7A7C560[v234]);
        if (HIBYTE(v236) == 255)
        {
          v239 = v236;
          objc_msgSend_appendFormat_(v402, v238, @"out.texcoord%d = _geometry.texcoords[%d].xy;\n", v234, v236, v365);
        }

        else
        {
          v240 = DWORD2(v403);
          ++DWORD2(v403);
          v239 = v236;
          objc_msgSend_appendFormat_(v402, v238, @"out.texcoord%d = (vfx_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v234, v240, v236);
        }

        if (v239 <= 7)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v396, v232, &stru_1F2575650, off_1E7A7C5A0[v239]);
        }

        if (v235 <= v239 + 1)
        {
          v235 = v239 + 1;
        }

        ++v234;
      }

      while (v233 != v234);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v396, v232, &stru_1F2575650, @"USE_TEXCOORD");
    v74 = codeCopy2;
    v90 = 0x1E696A000uLL;
    v91 = v379;
  }

  else
  {
    v235 = 0;
  }

  if (DWORD2(v403))
  {
    v241 = objc_msgSend_numberWithUnsignedInt_(*(v90 + 3480), v232, DWORD2(v403));
    objc_msgSend_setObject_forKeyedSubscript_(v396, v242, v241, @"TEXTURE_TRANSFORM_COUNT");
  }

  v243 = objc_msgSend_numberWithLong_(*(v90 + 3480), v232, v235);
  objc_msgSend_setObject_forKeyedSubscript_(v396, v244, v243, @"kVFXTexcoordCount");
  if (v397)
  {
    objc_msgSend_addObject_(v397, v245, @"USE_TEXCOORD");
    objc_msgSend_addObject_(v397, v246, @"TEXTURE_TRANSFORM_COUNT");
    for (k = 0; k != 8; ++k)
    {
      objc_msgSend_addObject_(v397, v247, off_1E7A7C5A0[k]);
    }
  }

  v249 = sub_1AF13E464(v74, 0x12u);
  sub_1AF1F00B0(&codeCopy, 0x12u, 18, v249);
  if (v249)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v250, &unk_1F25D4390, @"USE_NORMAL");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v251, &unk_1F25D4390, @"USE_TANGENT");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v252, &unk_1F25D4390, @"USE_BITANGENT");
  }

  v253 = objc_msgSend_objectForKeyedSubscript_(v396, v250, @"USE_VIEW");
  if (objc_msgSend_intValue(v253, v254, v255) == 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v256, &unk_1F25D4390, @"USE_POSITION");
  }

  if (objc_msgSend_objectForKeyedSubscript_(v396, v256, @"USE_NORMAL") && !objc_msgSend_objectForKeyedSubscript_(v396, v257, @"HAS_NORMAL"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v257, &unk_1F25D4390, @"USE_POSITION");
  }

  v259 = @"USE_MODELVIEWTRANSFORM";
  if (!objc_msgSend_objectForKeyedSubscript_(v396, v257, @"USE_POSITION") && !objc_msgSend_objectForKeyedSubscript_(v396, v258, @"USE_INSTANCING"))
  {
    v259 = @"USE_MODELVIEWPROJECTIONTRANSFORM";
  }

  objc_msgSend_setObject_forKeyedSubscript_(v396, v258, &stru_1F2575650, v259);
  if (objc_msgSend_objectForKeyedSubscript_(v396, v260, @"USE_NORMAL") || objc_msgSend_objectForKeyedSubscript_(v396, v261, @"USE_TANGENT") || objc_msgSend_objectForKeyedSubscript_(v396, v261, @"USE_BITANGENT"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v261, &stru_1F2575650, @"USE_MODELVIEWTRANSFORM");
  }

  if (sub_1AF13103C(contextCopy))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v262, &stru_1F2575650, @"USE_LATE_LATCHING");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v264, &stru_1F2575650, @"USE_RE_RADIANCE_IRRADIANCE_MAP_SAMPLING");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v265, &stru_1F2575650, @"USE_MODELTRANSFORM");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v266, &stru_1F2575650, @"USE_INVERSEMODELTRANSFORM");
    if (objc_msgSend_objectForKeyedSubscript_(v396, v267, @"USE_NORMALTRANSFORM"))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v262, &stru_1F2575650, @"USE_INVERSEMODELVIEWTRANSFORM");
    }
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v262, @"USE_LATE_LATCHING");
    objc_msgSend_addObject_(v397, v268, @"USE_RE_RADIANCE_IRRADIANCE_MAP_SAMPLING");
  }

  if ((v91 & 0x8000000) != 0)
  {
    objc_msgSend_appendString_(*(&v407 + 1), v262, @"interpolant<float2, interpolation::perspective> bezierCurveUV;\n");
    objc_msgSend_appendString_(v407, v269, @", device void const *vfx_bezier_curve_data\n");
    objc_msgSend_appendString_(v407, v270, @", device packed_float3 const *vfx_bezier_curve_controlPoints\n");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v271, &stru_1F2575650, @"NEED_IN_TEXCOORD0");
    objc_msgSend_setObject_forKeyedSubscript_(v396, v272, &stru_1F2575650, @"IS_BEZIER_CURVE");
    v273 = v381;
    if (v381 <= 0x20003)
    {
      v273 = 131075;
    }

    LODWORD(v381) = v273;
    v391 = 1;
  }

  else
  {
    v391 = 0;
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v262, @"IS_BEZIER_CURVE");
    if (v397)
    {
      objc_msgSend_addObject_(v397, v262, @"USE_RE_SYSTEM_TREATMENTS");
      objc_msgSend_addObject_(v397, v274, @"USE_SCREEN_UV");
      objc_msgSend_addObject_(v397, v275, @"VFX_USES_RE_SHADERS");
      objc_msgSend_addObject_(v397, v276, @"USE_CR_WORLD_POSITION");
    }
  }

  if (objc_msgSend_length(v398, v262, v263))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v277, &stru_1F2575650, @"USE_SHADER_MODIFIERS");
  }

  if (objc_msgSend_length(*(&v400 + 1), v277, v278))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v279, &stru_1F2575650, @"USE_SURFACE_EXTRA_DECL");
  }

  if (objc_msgSend_length(*(&v407 + 1), v279, v280))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v281, &stru_1F2575650, @"USE_EXTRA_VARYINGS");
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v281, @"USE_SHADER_MODIFIERS");
    objc_msgSend_addObject_(v397, v282, @"USE_SURFACE_EXTRA_DECL");
    objc_msgSend_addObject_(v397, v283, @"USE_EXTRA_VARYINGS");
  }

  v284 = sub_1AF28A7E4(@"vfx_metal");
  v285 = sub_1AF28A7E4(@"vfx_util.h");
  v286 = sub_1AF28A7E4(@"vfx_shadowmap_util.h");
  if (v392 == 3)
  {
    v287 = sub_1AF28A7E4(@"CFX-PBR.metal");
  }

  else
  {
    v287 = &stru_1F2575650;
  }

  sub_1AF1ED338(&codeCopy, v380, codeCopy2);
  if (objc_msgSend_objectForKeyedSubscript_(v396, v288, @"HAS_NORMAL") || objc_msgSend_objectForKeyedSubscript_(v396, v289, @"USE_OPENSUBDIV"))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v289, @"1", @"HAS_OR_GENERATES_NORMAL");
  }

  v290 = &stru_1F2575650;
  if (v380)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v289, &stru_1F2575650, @"USE_TESSELLATION");
    v290 = sub_1AF28A7E4(@"vfx_tessellation.h");
    v291 = (v91 >> 3) & 3;
    if (v291 == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v289, &stru_1F2575650, @"TESSELLATION_SMOOTHING_MODE_PN_TRIANGLE");
    }

    else if (v291 == 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v396, v289, &stru_1F2575650, @"TESSELLATION_SMOOTHING_MODE_PHONG");
    }
  }

  if (v397)
  {
    sub_1AF174E08(v397, v289);
    objc_msgSend_addObject_(v397, v292, @"HAS_OR_GENERATES_NORMAL");
    objc_msgSend_addObject_(v397, v293, @"USE_TESSELLATION");
  }

  v294 = (v91 >> 27) & 1;
  v427[0] = *(&v400 + 1);
  v427[1] = *(&v405 + 1);
  if (v400)
  {
    v295 = v400;
  }

  else
  {
    v295 = &stru_1F2575650;
  }

  v427[2] = v295;
  v296 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v289, v427, 3);
  v298 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(self->_originalLightingSourceCode, v297, self->_lightingInjectionPointRanges, v296);
  v413[0] = v284;
  v413[1] = v285;
  v413[2] = v287;
  selfCopy2 = self;
  v413[3] = v286;
  v413[4] = v290;
  v413[5] = v401;
  v413[6] = *(&v407 + 1);
  v413[7] = v398;
  v413[8] = v298;
  v414 = *(v408 + 8);
  v415 = *(&v408[1] + 1);
  v416 = *(&v406 + 1);
  v417 = *(&v402 + 1);
  v418 = *(&v398 + 1);
  if (BYTE3(v408[0]))
  {
    v301 = &stru_1F2575650;
  }

  else
  {
    v301 = v404;
  }

  if (!v384)
  {
    v301 = &stru_1F2575650;
  }

  v419 = v301;
  v420 = v402;
  v421 = v407;
  v422 = v403;
  v423 = v399;
  v424 = v406;
  if ((v384 & BYTE3(v408[0])) != 0)
  {
    v302 = v404;
  }

  else
  {
    v302 = &stru_1F2575650;
  }

  v425 = v302;
  v426 = *(&v399 + 1);
  v303 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v299, v413, 23);
  v305 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(self->_originalSourceCode, v304, self->_injectionPointRanges, v303);
  hasBezierCurveDeformer = objc_msgSend_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer_(self, v306, v305, v303, BYTE3(v408[0]), v378, v294);
  v310 = hasBezierCurveDeformer;
  if (v382)
  {
    v389 = v294;
    v393 = hasBezierCurveDeformer;
    v311 = objc_msgSend_mutableCopy(v303, v308, v309);
    v314 = objc_msgSend_count(self->_injectionPointRanges, v312, v313);
    if (v314)
    {
      v316 = v314;
      v317 = 0;
      while (1)
      {
        v318 = objc_msgSend_objectAtIndexedSubscript_(selfCopy2->_injectionPointRanges, v315, v317);
        v321 = objc_msgSend_rangeValue(v318, v319, v320);
        v323 = objc_msgSend_substringWithRange_(selfCopy2->_originalSourceCode, v322, v321, v322);
        if (!objc_msgSend_hasPrefix_(v323, v324, @"#import"))
        {
          break;
        }

        if ((objc_msgSend_containsString_(v323, v325, @"CFX-Lighting.metal") & 1) == 0)
        {
          v327 = objc_msgSend_objectAtIndexedSubscript_(v303, v315, v317);
          v329 = MEMORY[0x1E696AEC0];
          v367 = v323;
          goto LABEL_426;
        }

LABEL_431:
        if (v316 == ++v317)
        {
          goto LABEL_432;
        }
      }

      if (objc_msgSend_length(*(&v408[1] + 1), v325, v326) && objc_msgSend_containsString_(v323, v330, @"__OpenSubdivDeclShared__"))
      {
        v327 = objc_msgSend_objectAtIndexedSubscript_(v303, v330, v317);
        v329 = MEMORY[0x1E696AEC0];
        v367 = @"#generate __OpenSubdivDeclShared__.metal";
LABEL_426:
        v332 = objc_msgSend_stringWithFormat_(v329, v328, @"%@%@\n%@%@\n%@", @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v327, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v367, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n");
      }

      else
      {
        if (!objc_msgSend_length(*&v408[1], v330, v331) || !objc_msgSend_containsString_(v323, v315, @"__OpenSubdivDeclPerPatchType__"))
        {
          goto LABEL_431;
        }

        v334 = objc_msgSend_objectAtIndexedSubscript_(v303, v315, v317);
        v335 = MEMORY[0x1E696AEC0];
        v336 = sub_1AF13E588(codeCopy2);
        v368 = objc_msgSend_stringWithFormat_(v335, v337, @"#generate __OpenSubdivDeclShared__patchType%d.metal", v336);
        v338 = v335;
        selfCopy2 = self;
        v332 = objc_msgSend_stringWithFormat_(v338, v339, @"%@%@\n%@%@\n%@", @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v334, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v368, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n");
      }

      objc_msgSend_setObject_atIndexedSubscript_(v311, v333, v332, v317);
      goto LABEL_431;
    }

LABEL_432:
    v340 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(selfCopy2->_originalSourceCode, v315, selfCopy2->_injectionPointRanges, v311);
    v342 = objc_msgSend_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer_(selfCopy2, v341, v340, v311, BYTE3(v408[0]), v378, v389);

    v90 = 0x1E696A000;
    v310 = v393;
  }

  else
  {
    v342 = 0;
  }

  if (objc_msgSend_length(*(&v406 + 1), v308, v309))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v343, &stru_1F2575650, @"USE_VERTEX_EXTRA_ARGUMENTS");
  }

  if (objc_msgSend_length(v407, v343, v344))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v396, v345, &stru_1F2575650, @"USE_FRAGMENT_EXTRA_ARGUMENTS");
  }

  objc_msgSend_setObject_forKeyedSubscript_(v396, v345, &unk_1F25D4378, @"METAL");
  v347 = sub_1AF12F5E8(contextCopy, v346);
  if ((v385 & 0x400) != 0)
  {
    v349 = objc_msgSend_numberWithUnsignedInt_(*(v90 + 3480), v348, v347);
    objc_msgSend_setObject_forKeyedSubscript_(v396, v350, v349, @"DEBUG_PIXEL");
  }

  if (v397)
  {
    objc_msgSend_addObject_(v397, v348, @"USE_VERTEX_EXTRA_ARGUMENTS");
    objc_msgSend_addObject_(v397, v351, @"USE_FRAGMENT_EXTRA_ARGUMENTS");
    objc_msgSend_addObject_(v397, v352, @"USE_BARYCENTRIC_WIREFRAME");
    objc_msgSend_addObject_(v397, v353, @"USE_ARGUMENT_BUFFERS");
    objc_msgSend_addObject_(v397, v354, @"DEBUG_PIXEL");
  }

  v355 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v348, 0);
  objc_msgSend_appendString_(v355, v356, @"////////////////////////////////////////////////\n");
  objc_msgSend_appendFormat_(v355, v357, @"// CommonProfile Shader v%d\n", 2);
  v360 = objc_msgSend_stringByAppendingString_(v355, v358, v310);
  if (v382)
  {
    v342 = objc_msgSend_stringByAppendingString_(v355, v359, v342);
  }

  v361 = sub_1AF1D5628(@"commonprofile_vert", @"commonprofile_frag", v391, v360, v342, v396, v397, 0, v381, 0);
  v362 = sub_1AF13E494(codeCopy2);
  sub_1AF1D52CC(v361, v362);
  return v361;
}

- (id)splitInputOutputStructsIfNeededForSourceCode:(id)code generatedFromReplacementStrings:(id)strings perPixelLighting:(BOOL)lighting clipDistanceCount:(unint64_t)count hasBezierCurveDeformer:(BOOL)deformer
{
  deformerCopy = deformer;
  lightingCopy = lighting;
  v90[4] = *MEMORY[0x1E69E9840];
  if (count || deformer)
  {
    v11 = self->_commonProfileIORange.length + self->_commonProfileIORange.location;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3010000000;
    v85 = "";
    commonProfileIORange = self->_commonProfileIORange;
    injectionPointRanges = self->_injectionPointRanges;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = sub_1AF1F0898;
    v81[3] = &unk_1E7A7C4E0;
    v81[4] = self;
    v81[5] = strings;
    v81[6] = &v82;
    v81[7] = v11;
    objc_msgSend_enumerateObjectsUsingBlock_(injectionPointRanges, a2, v81);
    v14 = objc_msgSend_substringWithRange_(code, v13, v83[4], v83[5]);
    v18 = objc_msgSend_length(v14, v15, v16) - 19;
    if (count)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"    float clipDistance [[clip_distance]] [%d];\n} commonprofile_io_vert;\n\n", count);
      v21 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v14, v20, v18, 19, v19);
    }

    else
    {
      v21 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v14, v17, v18, 19, @"} commonprofile_io_vert;");
    }

    v24 = v21;
    if (deformerCopy)
    {
      v24 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v21, v22, @"interpolant<float2, interpolation::perspective> bezierCurveUV;\n", @"float2 bezierCurveUV;\n");
    }

    v25 = v83[4];
    v26 = v83[5];
    v27 = objc_msgSend_length(code, v22, v23);
    v28 = v26 + v25;
    v30 = objc_msgSend_rangeOfString_options_range_(code, v29, @"vertex commonprofile_io", 0, v26 + v25, v27 - (v26 + v25));
    v32 = v31;
    v34 = objc_msgSend_length(code, v31, v33);
    v80 = objc_msgSend_rangeOfString_options_range_(code, v35, @"commonprofile_io out;", 0, &v32[v30], v34 - &v32[v30]);
    v38 = v36;
    if (lightingCopy)
    {
      v39 = v36;
      v40 = v24;
      v41 = objc_msgSend_length(code, v36, v37);
      v43 = objc_msgSend_rangeOfString_options_range_(code, v42, @"commonprofile_io out;", 0, v28, v41 - v28);
      v45 = v44;
      v90[0] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v44, v83[4], 0);
      v90[1] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v46, v43, v45);
      v90[2] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v47, v30, v32);
      v90[3] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v48, v80, v39);
      v50 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v49, v90, 4);
      v89[0] = v40;
      v89[1] = @"commonprofile_io_vert out;";
      v89[2] = @"vertex commonprofile_io_vert";
      v89[3] = @"commonprofile_io_vert out;";
      v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v51, v89, 4);
    }

    else
    {
      v54 = objc_msgSend_length(code, v36, v37);
      v56 = objc_msgSend_rangeOfString_options_range_(code, v55, @"commonprofile_io out;", 0, v28, v54 - v28);
      v58 = v57;
      v79 = v24;
      v60 = objc_msgSend_length(code, v57, v59);
      v62 = objc_msgSend_rangeOfString_options_range_(code, v61, @"commonprofile_io in;", 0, v28, v60 - v28);
      v64 = v63;
      v66 = objc_msgSend_length(code, v63, v65);
      v68 = objc_msgSend_rangeOfString_options_range_(code, v67, @"commonprofile_io io", 0, v28, v66 - v28);
      v70 = v69;
      v88[0] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v69, v83[4], 0);
      v88[1] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v71, v56, v58);
      v88[2] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v72, v62, v64);
      v88[3] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v73, v68, v70);
      v88[4] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v74, v30, v32);
      v88[5] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v75, v80, v38);
      v50 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v76, v88, 6);
      v87[0] = v79;
      v87[1] = @"commonprofile_io_vert out;";
      v87[2] = @"commonprofile_io_vert in;";
      v87[3] = @"commonprofile_io_vert io";
      v87[4] = @"vertex commonprofile_io_vert";
      v87[5] = @"commonprofile_io_vert out;";
      v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, v87, 6);
    }

    code = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(code, v53, v50, v52);
    _Block_object_dispose(&v82, 8);
  }

  return code;
}

- (void)collectShaderForProgram:(__CFXProgram *)program hashCode:(id)code newVertexFunctionName:(id)name newFragmentFunctionName:(id)functionName sourceCodeBlock:(id)block additionalFileBlock:(id)fileBlock
{
  v137 = *MEMORY[0x1E69E9840];
  v11 = sub_1AF1D5B54(program, a2);
  programCopy = program;
  v13 = sub_1AF1D5B0C(program, v12);
  v16 = objc_msgSend_length(v13, v14, v15);
  v19 = objc_msgSend_mutableCopy(v13, v17, v18);
  nameCopy = name;
  v21 = v19;
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v19, v22, @"commonprofile_vert", nameCopy, 0, 0, v16);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v21, v23, @"commonprofile_frag", functionName, 0, 0, v16);
  v26 = objc_msgSend_length(v21, v24, v25);
  v28 = objc_msgSend_rangeOfString_options_range_(v21, v27, @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, 0, v26);
  v126 = v21;
  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v28;
    while (1)
    {
      v31 = &v29[v30];
      v32 = v21;
      v33 = objc_msgSend_rangeOfString_options_range_(v21, v29, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, &v29[v30], v26 - &v29[v30]);
      v35 = &v34[v33];
      v36 = objc_msgSend_rangeOfString_options_range_(v32, v34, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, &v34[v33], v26 - &v34[v33]);
      v125 = v37;
      v38 = objc_msgSend_substringWithRange_(v32, v37, v35, v36 - v35);
      if (objc_msgSend_hasPrefix_(v38, v39, @"#import"))
      {
        break;
      }

      v57 = &stru_1F2575650;
      if (objc_msgSend_hasPrefix_(v38, v40, @"#generate"))
      {
        v60 = objc_msgSend_rangeOfString_(v38, v59, @"");
        v62 = objc_msgSend_substringFromIndex_(v38, v61, v60 + 1);
        v64 = objc_msgSend_rangeOfString_(v62, v63, @"");
        v66 = objc_msgSend_substringToIndex_(v62, v65, v64);
        v69 = objc_msgSend_pathExtension(v66, v67, v68);
        if ((objc_msgSend_isEqualToString_(v69, v70, @"h") & 1) == 0)
        {
          v66 = objc_msgSend_stringByAppendingPathExtension_(v66, v71, @"h");
        }

        v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v71, @"_import/%@", v66);
        v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v72, @"#import %@", v55);
        v58 = objc_msgSend_substringWithRange_(v126, v73, v31, v33 - v31);
        goto LABEL_11;
      }

LABEL_12:
      v21 = v126;
      objc_msgSend_replaceCharactersInRange_withString_(v126, v59, v36, v125, &stru_1F2575650);
      objc_msgSend_replaceCharactersInRange_withString_(v126, v74, v35, v36 - v35, v57);
      objc_msgSend_replaceCharactersInRange_withString_(v126, v75, v30, v35 - v30, &stru_1F2575650);
      v26 = objc_msgSend_length(v126, v76, v77);
      v30 = objc_msgSend_rangeOfString_options_range_(v126, v78, @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, 0, v26);
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    v41 = objc_msgSend_rangeOfString_(v38, v40, @"");
    v43 = objc_msgSend_substringFromIndex_(v38, v42, v41 + 1);
    v45 = objc_msgSend_rangeOfString_(v43, v44, @"");
    v47 = objc_msgSend_substringToIndex_(v43, v46, v45);
    v50 = objc_msgSend_pathExtension(v47, v48, v49);
    isEqualToString = objc_msgSend_isEqualToString_(v50, v51, @"h");
    v54 = v47;
    if ((isEqualToString & 1) == 0)
    {
      v54 = objc_msgSend_stringByAppendingPathExtension_(v47, v52, @"h");
    }

    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v52, @"_import/%@", v54);
    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v56, @"#import %@", v55);
    v58 = sub_1AF28A7E4(v47);
LABEL_11:
    (*(fileBlock + 2))(fileBlock, v58, v55);
    goto LABEL_12;
  }

LABEL_13:
  v79 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend_insertString_atIndex_(v21, v80, @"\n", 0);
  v83 = objc_msgSend_allKeys(v11, v81, v82);
  v85 = objc_msgSend_sortedArrayUsingSelector_(v83, v84, sel_compare_);
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v88 = objc_msgSend_reverseObjectEnumerator(v85, v86, v87);
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v131, v136, 16);
  if (v90)
  {
    v92 = v90;
    v93 = *v132;
    do
    {
      for (i = 0; i != v92; ++i)
      {
        if (*v132 != v93)
        {
          objc_enumerationMutation(v88);
        }

        v95 = *(*(&v131 + 1) + 8 * i);
        v96 = objc_msgSend_objectForKeyedSubscript_(v11, v91, v95);
        v98 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v97, @"#define %@ %@\n", v95, v96);
        objc_msgSend_insertString_atIndex_(v126, v99, v98, 0);
        if (objc_msgSend_isEqual_(v96, v100, &stru_1F2575650))
        {
          objc_msgSend_appendFormat_(v79, v101, @" -D%@", v95, v120);
        }

        else
        {
          objc_msgSend_appendFormat_(v79, v101, @" -D%@=%@", v95, v96);
        }
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v131, v136, 16);
    }

    while (v92);
  }

  v102 = sub_1AF1D5B9C(programCopy, v91);
  if (objc_msgSend_count(v102, v103, v104))
  {
    v107 = objc_msgSend_allObjects(v102, v105, v106);
    v109 = objc_msgSend_sortedArrayUsingSelector_(v107, v108, sel_compare_);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v112 = objc_msgSend_reverseObjectEnumerator(v109, v110, v111);
    v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, &v127, v135, 16);
    if (v114)
    {
      v115 = v114;
      v116 = *v128;
      do
      {
        for (j = 0; j != v115; ++j)
        {
          if (*v128 != v116)
          {
            objc_enumerationMutation(v112);
          }

          v118 = *(*(&v127 + 1) + 8 * j);
          if (!objc_msgSend_objectForKeyedSubscript_(v11, v105, v118))
          {
            objc_msgSend_appendFormat_(v79, v105, @" -U%@", v118);
          }
        }

        v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v105, &v127, v135, 16);
      }

      while (v115);
    }
  }

  v119 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v105, @"_unifdef/%@.h", code);
  (*(fileBlock + 2))(fileBlock, v79, v119);

  (*(block + 2))(block, v126);
}

@end