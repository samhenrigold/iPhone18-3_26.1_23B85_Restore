@interface GCControllerInputComponent
@end

@implementation GCControllerInputComponent

id __101___GCControllerInputComponent_initWithIdentifier_templateFacadeParameters_templateElementParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(objc_msgSend(objc_opt_class() "viewClass"))];

  return v3;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke(uint64_t a1)
{
  v286 = *MEMORY[0x1E69E9840];
  v207 = objc_opt_new();
  v203 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 elementMappings];
    v4 = [v3 allValues];

    v277[0] = MEMORY[0x1E69E9820];
    v277[1] = 3221225472;
    v277[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2;
    v277[3] = &unk_1E841B420;
    v277[4] = *(v203 + 40);
    v5 = [v4 gc_arrayByTransformingElementsWithOptions:1 usingBlock:v277];

    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_99_0];

    v233 = objc_opt_new();
    v234 = objc_opt_new();
    v276 = 0u;
    v275 = 0u;
    v274 = 0u;
    v273 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v273 objects:v285 count:16];
    if (v8)
    {
      v9 = *v274;
      v10 = MEMORY[0x1E695E0F0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v274 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v273 + 1) + 8 * i);
          v13 = [v12 elementKey];
          v14 = [v12 mappingKey];
          v15 = [v233 objectForKeyedSubscript:v13];
          v16 = v15;
          if (!v15)
          {
            v15 = v10;
          }

          v17 = [v15 arrayByAddingObject:v12];
          [v233 setObject:v17 forKeyedSubscript:v13];

          v18 = [v234 objectForKeyedSubscript:v14];
          v19 = v18;
          if (!v18)
          {
            v18 = v10;
          }

          v20 = [v18 arrayByAddingObject:v12];
          [v234 setObject:v20 forKeyedSubscript:v14];
        }

        v8 = [v7 countByEnumeratingWithState:&v273 objects:v285 count:16];
      }

      while (v8);
    }

    v236 = objc_opt_new();
    v235 = objc_opt_new();
    v272 = 0u;
    v271 = 0u;
    v270 = 0u;
    v269 = 0u;
    v21 = *(*(v203 + 40) + 48);
    v22 = [v21 countByEnumeratingWithState:&v269 objects:v284 count:16];
    if (v22)
    {
      v23 = *v270;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v270 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v269 + 1) + 8 * j);
          v26 = [(_GCDevicePhysicalInputElementParameters *)v25 identifier];
          [v236 setObject:v25 forKey:v26];

          v27 = [v25 copy];
          v28 = [(_GCDevicePhysicalInputElementParameters *)v27 identifier];
          [v235 setObject:v27 forKey:v28];
        }

        v22 = [v21 countByEnumeratingWithState:&v269 objects:v284 count:16];
      }

      while (v22);
    }

    v268 = 0u;
    v267 = 0u;
    v266 = 0u;
    v265 = 0u;
    obj = v7;
    v228 = [obj countByEnumeratingWithState:&v265 objects:v283 count:16];
    if (v228)
    {
      v227 = *v266;
      do
      {
        for (k = 0; k != v228; k = k + 1)
        {
          if (*v266 != v227)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v265 + 1) + 8 * k);
          v31 = [v30 elementKey];
          v32 = [v236 objectForKeyedSubscript:v31];

          v33 = [v30 mappingKey];
          v34 = [v235 objectForKeyedSubscript:v33];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v36 = v34;
                v230 = v32;
                v37 = [(_GCDevicePhysicalInputElementParameters *)v36 identifier];
                v38 = [(_GCDevicePhysicalInputElementParameters *)v230 identifier];
                v39 = [v37 isEqualToString:v38];

                if ((v39 & 1) == 0)
                {
                  v224 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 eventUpValueField];
                  v222 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 eventRightValueField];
                  v220 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 eventDownValueField];
                  v218 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 eventLeftValueField];
                  v216 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 eventUpValueField];
                  v214 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 eventRightValueField];
                  v212 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 eventDownValueField];
                  v210 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 eventLeftValueField];
                  v40 = [(_GCDevicePhysicalInputElementParameters *)v230 identifier];
                  v41 = [v234 objectForKey:v40];
                  v42 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_107_0];
                  v43 = [v41 filteredArrayUsingPredicate:v42];
                  v208 = [v43 count] != 0;

                  v44 = [(_GCDevicePhysicalInputElementParameters *)v36 identifier];
                  v45 = [v233 objectForKey:v44];
                  LODWORD(v42) = [v45 count] == 0;

                  if (v42)
                  {
                    v120 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 xySources];
                    v121 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 xySources];
                    v122 = [v120 setByAddingObjectsFromSet:v121];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setXySources:v122, v123];

                    v124 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 xSources];
                    v125 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 xSources];
                    v126 = [v124 setByAddingObjectsFromSet:v125];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setXSources:v126, v127];

                    v128 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 ySources];
                    v129 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 ySources];
                    v130 = [v128 setByAddingObjectsFromSet:v129];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setYSources:v130, v131];

                    v132 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 upSources];
                    v133 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 upSources];
                    v134 = [v132 setByAddingObjectsFromSet:v133];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setUpSources:v134, v135];

                    v136 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 rightSources];
                    v137 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 rightSources];
                    v138 = [v136 setByAddingObjectsFromSet:v137];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setRightSources:v138, v139];

                    v140 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 downSources];
                    v141 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 downSources];
                    v142 = [v140 setByAddingObjectsFromSet:v141];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setDownSources:v142, v143];

                    v144 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 leftSources];
                    v145 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 leftSources];
                    v146 = [v144 setByAddingObjectsFromSet:v145];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setLeftSources:v146, v147];

                    v264[0] = MEMORY[0x1E69E9820];
                    v264[1] = 3221225472;
                    v264[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3;
                    v264[3] = &__block_descriptor_97_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                    v264[4] = v216;
                    v264[5] = v224;
                    v264[6] = v214;
                    v264[7] = v222;
                    v264[8] = v212;
                    v264[9] = v220;
                    v71 = v264;
                    v264[10] = v210;
                    v264[11] = v218;
                  }

                  else
                  {
                    v206 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 xSources];
                    v46 = [(_GCDevicePhysicalInputElementParameters *)v36 identifier];
                    v47 = [v236 objectForKeyedSubscript:v46];
                    v48 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v47 xSources];
                    if ([v206 isEqual:v48])
                    {
                      v205 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 ySources];
                      v49 = [(_GCDevicePhysicalInputElementParameters *)v36 identifier];
                      v50 = [v236 objectForKeyedSubscript:v49];
                      v51 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v50 ySources];
                      v204 = [v205 isEqual:v51];

                      if (v204)
                      {
                        v52 = [(_GCDevicePhysicalInputElementParameters *)v230 localizedName];
                        [(_GCDevicePhysicalInputElementParameters *)v36 setLocalizedName:v52, v53];

                        v54 = [(_GCDevicePhysicalInputElementParameters *)v230 symbol];
                        [(_GCDevicePhysicalInputElementParameters *)v36 setSymbol:v54, v55];

                        v56 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 xySources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setXySources:v56, v57];

                        v58 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 xSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setXSources:v58, v59];

                        v60 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 ySources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setYSources:v60, v61];

                        v62 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 upSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setUpSources:v62, v63];

                        v64 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 rightSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setRightSources:v64, v65];

                        v66 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 downSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setDownSources:v66, v67];

                        v68 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 leftSources];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setLeftSources:v68, v69];

                        v70 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 isAnalog];
                        [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setAnalog:v70];
                        v263[0] = MEMORY[0x1E69E9820];
                        v263[1] = 3221225472;
                        v263[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4;
                        v263[3] = &__block_descriptor_97_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                        v263[4] = v224;
                        v263[5] = v216;
                        v263[6] = v222;
                        v263[7] = v214;
                        v263[8] = v220;
                        v263[9] = v212;
                        v71 = v263;
                        v263[10] = v218;
                        v263[11] = v210;
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                    }

                    v148 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 xySources];
                    v149 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 xySources];
                    v150 = [v148 setByAddingObjectsFromSet:v149];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setXySources:v150, v151];

                    v152 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 xSources];
                    v153 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 xSources];
                    v154 = [v152 setByAddingObjectsFromSet:v153];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setXSources:v154, v155];

                    v156 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 ySources];
                    v157 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 ySources];
                    v158 = [v156 setByAddingObjectsFromSet:v157];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setYSources:v158, v159];

                    v160 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 upSources];
                    v161 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 upSources];
                    v162 = [v160 setByAddingObjectsFromSet:v161];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setUpSources:v162, v163];

                    v164 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 rightSources];
                    v165 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 rightSources];
                    v166 = [v164 setByAddingObjectsFromSet:v165];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setRightSources:v166, v167];

                    v168 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 downSources];
                    v169 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 downSources];
                    v170 = [v168 setByAddingObjectsFromSet:v169];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setDownSources:v170, v171];

                    v172 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 leftSources];
                    v173 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v230 leftSources];
                    v174 = [v172 setByAddingObjectsFromSet:v173];
                    [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 setLeftSources:v174, v175];

                    v262[0] = MEMORY[0x1E69E9820];
                    v262[1] = 3221225472;
                    v262[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_5;
                    v262[3] = &__block_descriptor_97_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                    v262[4] = v216;
                    v262[5] = v224;
                    v262[6] = v214;
                    v262[7] = v222;
                    v262[8] = v212;
                    v262[9] = v220;
                    v71 = v262;
                    v262[10] = v210;
                    v262[11] = v218;
                  }

LABEL_59:
                  *(v71 + 96) = v208;
                  v176 = [v71 copy];
                  v177 = _Block_copy(v176);
                  [v207 addObject:v177];
                }

                goto LABEL_61;
              }
            }

            v36 = _gc_log_device_physicalinput(isKindOfClass);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v280 = v32;
              v281 = 2112;
              v282 = v34;
              v80 = v36;
              v81 = "#WARNING Can not implement dpad remapping from '%@' -> '%@'.";
LABEL_38:
              _os_log_debug_impl(&dword_1D2CD5000, v80, OS_LOG_TYPE_DEBUG, v81, buf, 0x16u);
            }
          }

          else
          {
            v72 = [(_GCDevicePhysicalInputElementParameters *)v34 identifier];
            v73 = [(_GCDevicePhysicalInputElementParameters *)v32 identifier];
            v74 = [v72 isEqualToString:v73];

            if (v74)
            {
              goto LABEL_62;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v75 = v32;
              v36 = [(_GCDevicePhysicalInputElementParameters *)v75 localizedName];
              v225 = [(_GCDevicePhysicalInputElementParameters *)v75 symbol];
              v209 = [(_GCDevicePhysicalInputButtonElementParameters *)v75 isAnalog];
              v76 = [(_GCDevicePhysicalInputButtonElementParameters *)v75 pressedThreshold];
              v77 = *&v76;
              v231 = [(_GCDevicePhysicalInputButtonElementParameters *)v75 sources];
              v221 = [(_GCDevicePhysicalInputButtonElementParameters *)v75 eventPressedValueField];
              v78 = [(_GCDevicePhysicalInputElementParameters *)v75 identifier];

              v79 = [v234 objectForKey:v78];
              v219 = [v79 count];
            }

            else
            {
              objc_opt_class();
              v82 = objc_opt_isKindOfClass();
              if ((v82 & 1) == 0)
              {
                v36 = _gc_log_device_physicalinput(v82);
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_61;
                }

                *buf = 138412546;
                v280 = v32;
                v281 = 2112;
                v282 = v34;
                v80 = v36;
                v81 = "#WARNING Can not implement remapping from unknown '%@' -> '%@'.";
                goto LABEL_38;
              }

              v83 = v32;
              v84 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v83 pressedSources];
              v85 = [v84 anyObject];
              v36 = [v85 elementLocalizedName];

              v86 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v83 pressedSources];
              v87 = [v86 anyObject];
              v225 = [v87 symbol];

              v231 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v83 pressedSources];
              v221 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v83 eventPressedValueField];
              v78 = [(_GCDevicePhysicalInputElementParameters *)v83 identifier];
              v79 = [v234 objectForKey:v78];
              v88 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_113];

              v89 = [v79 filteredArrayUsingPredicate:v88];
              v219 = [v89 count];

              v209 = 0;
              v77 = 0.0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = v34;
              v223 = [(_GCDevicePhysicalInputButtonElementParameters *)v90 sources];
              v211 = [(_GCDevicePhysicalInputButtonElementParameters *)v90 eventPressedValueField];
              v91 = [(_GCDevicePhysicalInputElementParameters *)v90 identifier];
              v92 = [v233 objectForKey:v91];
              v93 = [v92 count];

              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_114;
              aBlock[3] = &unk_1E841B488;
              v94 = v90;
              v261 = v94;
              v95 = _Block_copy(aBlock);
              v258[0] = MEMORY[0x1E69E9820];
              v258[1] = 3221225472;
              v258[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_116;
              v258[3] = &unk_1E841B4B0;
              v96 = v94;
              v259 = v96;
              v215 = _Block_copy(v258);
              v256[0] = MEMORY[0x1E69E9820];
              v256[1] = 3221225472;
              v256[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3_118;
              v256[3] = &unk_1E841B4D8;
              v97 = v96;
              v257 = v97;
              v217 = _Block_copy(v256);
              v254[0] = MEMORY[0x1E69E9820];
              v254[1] = 3221225472;
              v254[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4_120;
              v254[3] = &unk_1E8419678;
              v98 = v97;
              v255 = v98;
              v213 = _Block_copy(v254);
              v252[0] = MEMORY[0x1E69E9820];
              v252[1] = 3221225472;
              v252[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_5_122;
              v252[3] = &unk_1E841B500;
              v99 = v98;
              v253 = v99;
              v100 = _Block_copy(v252);
              v249[0] = MEMORY[0x1E69E9820];
              v249[1] = 3221225472;
              v249[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_6;
              v249[3] = &unk_1E841B528;
              v250 = v99;
              v251 = v236;
              v101 = v99;
              v102 = _Block_copy(v249);

              v103 = &v257;
              v104 = &v259;
              v105 = &v261;
            }

            else
            {
              objc_opt_class();
              v106 = objc_opt_isKindOfClass();
              if ((v106 & 1) == 0)
              {
                v116 = _gc_log_device_physicalinput(v106);
                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v280 = v32;
                  v281 = 2112;
                  v282 = v34;
                  _os_log_debug_impl(&dword_1D2CD5000, v116, OS_LOG_TYPE_DEBUG, "#WARNING Can not implement remapping from '%@' -> unknown '%@'.", buf, 0x16u);
                }

                goto LABEL_61;
              }

              v107 = v34;
              v223 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v107 pressedSources];
              v211 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v107 eventPressedValueField];
              v108 = [(_GCDevicePhysicalInputElementParameters *)v107 identifier];
              v109 = [v233 objectForKey:v108];
              v110 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_127_0];
              v111 = [v109 filteredArrayUsingPredicate:v110];
              v93 = [v111 count];

              v247[0] = MEMORY[0x1E69E9820];
              v247[1] = 3221225472;
              v247[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_8;
              v247[3] = &unk_1E841B488;
              v112 = v107;
              v248 = v112;
              v95 = _Block_copy(v247);
              v244[0] = MEMORY[0x1E69E9820];
              v244[1] = 3221225472;
              v244[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_13;
              v244[3] = &unk_1E841B528;
              v245 = v112;
              v246 = v236;
              v113 = v112;
              v102 = _Block_copy(v244);
              v103 = &v246;
              v104 = &v245;
              v105 = &v248;
              v100 = &__block_literal_global_135;
              v217 = &__block_literal_global_131;
              v213 = &__block_literal_global_133;
              v215 = &__block_literal_global_129_0;
            }

            if (v93)
            {
              if (v102[2](v102))
              {
                v215[2](v215, v36);
                v217[2](v217, v225);
                v95[2](v95, v231);
                v213[2](v213, v209);
                v100[2](v100, v77);
                v242[0] = MEMORY[0x1E69E9820];
                v242[1] = 3221225472;
                v242[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_138;
                v242[3] = &__block_descriptor_49_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                v242[4] = v221;
                v242[5] = v211;
                v114 = v242;
              }

              else
              {
                v117 = [v223 setByAddingObjectsFromSet:v231];
                v95[2](v95, v117);

                v241[0] = MEMORY[0x1E69E9820];
                v241[1] = 3221225472;
                v241[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3_139;
                v241[3] = &__block_descriptor_49_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
                v241[4] = v211;
                v241[5] = v221;
                v114 = v241;
              }
            }

            else
            {
              v115 = [v223 setByAddingObjectsFromSet:v231];
              v95[2](v95, v115);

              v243[0] = MEMORY[0x1E69E9820];
              v243[1] = 3221225472;
              v243[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke_136;
              v243[3] = &__block_descriptor_49_e51_v24__0____GCGamepadEvent__8___GCGamepadEventImpl_16l;
              v243[4] = v211;
              v243[5] = v221;
              v114 = v243;
            }

            *(v114 + 48) = v219 != 0;
            v118 = [v114 copy];
            v119 = _Block_copy(v118);
            [v207 addObject:v119];
          }

LABEL_61:

LABEL_62:
        }

        v228 = [obj countByEnumeratingWithState:&v265 objects:v283 count:16];
      }

      while (v228);
    }

    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v229 = obj;
    v178 = [v229 countByEnumeratingWithState:&v237 objects:v278 count:16];
    if (v178)
    {
      v232 = *v238;
      do
      {
        for (m = 0; m != v178; ++m)
        {
          if (*v238 != v232)
          {
            objc_enumerationMutation(v229);
          }

          v180 = *(*(&v237 + 1) + 8 * m);
          v181 = [v180 elementKey];
          v182 = [v236 objectForKeyedSubscript:v181];

          v183 = [v180 mappingKey];
          v184 = [v235 objectForKeyedSubscript:v183];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v185 = v184;
                v186 = v180;
                if ([v186 invertHorizontally])
                {
                  v187 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventRightValueField];
                  v188 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventLeftValueField];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventLeftValueField:v187];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventRightValueField:v188];
                }

                if ([v186 invertVertically])
                {
                  v189 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventUpValueField];
                  v190 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventDownValueField];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventUpValueField:v190];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventDownValueField:v189];
                }

                if ([v186 swapAxes])
                {
                  v191 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventUpValueField];
                  v192 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventRightValueField];
                  v193 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventDownValueField];
                  v194 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 eventLeftValueField];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventLeftValueField:v193];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventRightValueField:v191];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventUpValueField:v192];
                  [(_GCDevicePhysicalInputDirectionPadElementParameters *)v185 setEventDownValueField:v194];
                }
              }
            }
          }
        }

        v178 = [v229 countByEnumeratingWithState:&v237 objects:v278 count:16];
      }

      while (v178);
    }

    v195 = [v235 allValues];
  }

  else
  {
    v195 = 0;
  }

  v196 = MEMORY[0x1E695DFD8];
  v197 = [v195 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_142];
  v198 = [v196 setWithArray:v197];

  v199 = *(v203 + 40);
  objc_sync_enter(v199);
  objc_storeStrong((*(v203 + 40) + 56), *(v203 + 32));
  v200 = [v207 copy];
  v201 = *(v203 + 40);
  v202 = *(v201 + 64);
  *(v201 + 64) = v200;

  [(_GCDevicePhysicalInput *)*(v203 + 48) updateWithElements:v198];
  objc_sync_exit(v199);
}

id __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = [v3 elementKey];
  v4 = [v3 mappingKey];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(*(a1 + 32) + 48);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {

    v9 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v22 = v3;
  v8 = 0;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      v13 = [(_GCDevicePhysicalInputElementParameters *)v12 aliases];
      v14 = [v13 containsObject:v23];

      if (v14)
      {
        v15 = [(_GCDevicePhysicalInputElementParameters *)v12 identifier];

        v9 = v15;
      }

      v16 = [(_GCDevicePhysicalInputElementParameters *)v12 aliases];
      v17 = [v16 containsObject:v4];

      if (v17)
      {
        v18 = [(_GCDevicePhysicalInputElementParameters *)v12 identifier];

        v8 = v18;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v7);

  if (!v9)
  {
    v9 = v8;
    v3 = v22;
LABEL_17:
    v8 = _gc_log_device_physicalinput(v19);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_cold_2();
    }

    goto LABEL_19;
  }

  v3 = v22;
  if (v8)
  {
    v20 = [v22 copy];
    [v20 setElementKey:v9];
    [v20 setMappingKey:v8];
    goto LABEL_20;
  }

  v8 = _gc_log_device_physicalinput(v19);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_cold_1();
  }

LABEL_19:
  v20 = 0;
LABEL_20:

  return v20;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 remappingOrder];
  if (v6 <= [v5 remappingOrder])
  {
    v8 = [v4 remappingOrder];
    v7 = v8 < [v5 remappingOrder];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_104(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v21 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  if (v8 >= *&v9)
  {
    *&v9 = v8;
  }

  [v21 setFloatValue:*(a1 + 32) forElement:v9];
  [v21 floatValueForElement:*(a1 + 48)];
  v11 = v10;
  [v6 floatValueForElement:*(a1 + 56)];
  if (v11 >= *&v12)
  {
    *&v12 = v11;
  }

  [v21 setFloatValue:*(a1 + 48) forElement:v12];
  [v21 floatValueForElement:*(a1 + 64)];
  v14 = v13;
  [v6 floatValueForElement:*(a1 + 72)];
  if (v14 >= *&v15)
  {
    *&v15 = v14;
  }

  [v21 setFloatValue:*(a1 + 64) forElement:v15];
  [v21 floatValueForElement:*(a1 + 80)];
  v17 = v16;
  [v6 floatValueForElement:*(a1 + 88)];
  v19 = v18;

  if (v17 >= v19)
  {
    *&v20 = v17;
  }

  else
  {
    *&v20 = v19;
  }

  [v21 setFloatValue:*(a1 + 80) forElement:v20];
  if ((*(a1 + 96) & 1) == 0)
  {
    [v21 setFloatValue:*(a1 + 40) forElement:0.0];
    [v21 setFloatValue:*(a1 + 56) forElement:0.0];
    [v21 setFloatValue:*(a1 + 72) forElement:0.0];
    [v21 setFloatValue:*(a1 + 88) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v6 floatValueForElement:v5];
  [v10 setFloatValue:*(a1 + 40) forElement:?];
  [v6 floatValueForElement:*(a1 + 48)];
  [v10 setFloatValue:*(a1 + 56) forElement:?];
  [v6 floatValueForElement:*(a1 + 64)];
  [v10 setFloatValue:*(a1 + 72) forElement:?];
  [v6 floatValueForElement:*(a1 + 80)];
  v8 = v7;

  LODWORD(v9) = v8;
  [v10 setFloatValue:*(a1 + 88) forElement:v9];
  if ((*(a1 + 96) & 1) == 0)
  {
    [v10 setFloatValue:*(a1 + 32) forElement:0.0];
    [v10 setFloatValue:*(a1 + 48) forElement:0.0];
    [v10 setFloatValue:*(a1 + 64) forElement:0.0];
    [v10 setFloatValue:*(a1 + 80) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v21 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  if (v8 >= *&v9)
  {
    *&v9 = v8;
  }

  [v21 setFloatValue:*(a1 + 32) forElement:v9];
  [v21 floatValueForElement:*(a1 + 48)];
  v11 = v10;
  [v6 floatValueForElement:*(a1 + 56)];
  if (v11 >= *&v12)
  {
    *&v12 = v11;
  }

  [v21 setFloatValue:*(a1 + 48) forElement:v12];
  [v21 floatValueForElement:*(a1 + 64)];
  v14 = v13;
  [v6 floatValueForElement:*(a1 + 72)];
  if (v14 >= *&v15)
  {
    *&v15 = v14;
  }

  [v21 setFloatValue:*(a1 + 64) forElement:v15];
  [v21 floatValueForElement:*(a1 + 80)];
  v17 = v16;
  [v6 floatValueForElement:*(a1 + 88)];
  v19 = v18;

  if (v17 >= v19)
  {
    *&v20 = v17;
  }

  else
  {
    *&v20 = v19;
  }

  [v21 setFloatValue:*(a1 + 80) forElement:v20];
  if ((*(a1 + 96) & 1) == 0)
  {
    [v21 setFloatValue:*(a1 + 40) forElement:0.0];
    [v21 setFloatValue:*(a1 + 56) forElement:0.0];
    [v21 setFloatValue:*(a1 + 72) forElement:0.0];
    [v21 setFloatValue:*(a1 + 88) forElement:0.0];
  }
}

BOOL __50___GCControllerInputComponent_setSettingsProfile___block_invoke_111(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [(_GCDevicePhysicalInputElementParameters *)v1 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v1 isEqual:v4];

  return v5;
}

BOOL __50___GCControllerInputComponent_setSettingsProfile___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __50___GCControllerInputComponent_setSettingsProfile___block_invoke_13(uint64_t a1)
{
  v2 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)*(a1 + 32) pressedSources];
  v3 = *(a1 + 40);
  v4 = [(_GCDevicePhysicalInputElementParameters *)*(a1 + 32) identifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)v5 pressedSources];
  v7 = [v2 isEqual:v6];

  return v7;
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v12 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  v10 = v9;

  if (v8 >= v10)
  {
    *&v11 = v8;
  }

  else
  {
    *&v11 = v10;
  }

  [v12 setFloatValue:*(a1 + 32) forElement:v11];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v12 setFloatValue:*(a1 + 40) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_2_138(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 floatValueForElement:*(a1 + 32)];
  [v5 setFloatValue:*(a1 + 40) forElement:?];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v5 setFloatValue:*(a1 + 32) forElement:0.0];
  }
}

void __50___GCControllerInputComponent_setSettingsProfile___block_invoke_3_139(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v12 floatValueForElement:v5];
  v8 = v7;
  [v6 floatValueForElement:*(a1 + 40)];
  v10 = v9;

  if (v8 >= v10)
  {
    *&v11 = v8;
  }

  else
  {
    *&v11 = v10;
  }

  [v12 setFloatValue:*(a1 + 32) forElement:v11];
  if ((*(a1 + 48) & 1) == 0)
  {
    [v12 setFloatValue:*(a1 + 40) forElement:0.0];
  }
}

id __50___GCControllerInputComponent_setSettingsProfile___block_invoke_4_140(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(objc_msgSend(objc_opt_class() "viewClass"))];

  return v3;
}

@end