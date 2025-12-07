@interface CSUCaptionRuntimeParameters
- (CSUCaptionRuntimeParameters)initWithOptions:(id)options;
- (void)_loadRuntimeParameters:(id)parameters;
@end

@implementation CSUCaptionRuntimeParameters

- (CSUCaptionRuntimeParameters)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = CSUCaptionRuntimeParameters;
  v5 = [(CSUCaptionRuntimeParameters *)&v11 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_captionModelMinimumConfidence = xmmword_1AC129B20;
    v5->_excludeGenderStrategy = 1;
    NSLog(&stru_1F20D4DC8.isa, optionsCopy);
    objc_msgSend__loadRuntimeParameters_(v6, v7, optionsCopy, v8, v9);
  }

  return v6;
}

- (void)_loadRuntimeParameters:(id)parameters
{
  v257 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v240 = parametersCopy;
  v6 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v3, @"captionModel", v4, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v7, @"captionModel", v8, v9);

    if (v10)
    {
      v238 = v10;
      v15 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"minimumConfidence", v13, v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v16, @"minimumConfidence", v17, v18);

        if (v19)
        {
          objc_msgSend_doubleValue(v19, v21, v22, v23, v24);
          self->_captionModelMinimumConfidence = v28;
          goto LABEL_14;
        }
      }

      else
      {
      }

      v36 = sub_1AC090E50(v20);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FC70(v36, v37, v38, v39, v40, v41, v42, v43);
      }

      v19 = 0;
LABEL_14:
      v44 = objc_msgSend_objectForKeyedSubscript_(v10, v25, @"lengthNormalizationFactor", v26, v27);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = objc_msgSend_objectForKeyedSubscript_(v10, v45, @"lengthNormalizationFactor", v46, v47);

        if (v48)
        {
          objc_msgSend_doubleValue(v48, v50, v51, v52, v53);
          self->_captionModelLengthNormalizationFactor = v57;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v58 = sub_1AC090E50(v49);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FCE8(v58, v59, v60, v61, v62, v63, v64, v65);
      }

      v48 = 0;
LABEL_21:
      v66 = objc_msgSend_objectForKeyedSubscript_(v10, v54, @"excludeGenderStrategy", v55, v56);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = objc_msgSend_objectForKeyedSubscript_(v238, v67, @"excludeGenderStrategy", v68, v69);

        if (v70)
        {
          self->_excludeGenderStrategy = objc_msgSend_unsignedIntegerValue(v70, v72, v73, v74, v75);
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
      }

      v70 = sub_1AC090E50(v71);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FD60(v70, v76, v77, v78, v79, v80, v81, v82);
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v19 = sub_1AC090E50(v11);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FDD8(v19, v29, v30, v31, v32, v33, v34, v35);
  }

  v238 = 0;
LABEL_28:

  v253 = &parametersCopy;
  v83 = sub_1AC0A9A00(&v253, @"replacements");
  replacements = self->_replacements;
  self->_replacements = v83;

  v85 = sub_1AC0A9A00(&v253, @"excludeGenderReplacements");
  excludeGenderReplacements = self->_excludeGenderReplacements;
  self->_excludeGenderReplacements = v85;

  v90 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v87, @"excludeGenderTriggers", v88, v89);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v94 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v91, @"excludeGenderTriggers", v92, v93);

    if (v94)
    {
      v100 = objc_msgSend_array(MEMORY[0x1E695DF70], v96, v97, v98, v99);
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      obj = v94;
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v249, v256, 16);
      if (v102)
      {
        v103 = *v250;
        do
        {
          for (i = 0; i != v102; ++i)
          {
            if (*v250 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v105 = *(*(&v249 + 1) + 8 * i);
            v106 = [CSUCaptionRuntimeExcludeGenderTrigger alloc];
            v110 = objc_msgSend_initWithDictionary_(v106, v107, v105, v108, v109);
            objc_msgSend_addObject_(v100, v111, v110, v112, v113);
          }

          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v114, &v249, v256, 16);
        }

        while (v102);
      }

      v119 = objc_msgSend_copy(v100, v115, v116, v117, v118);
      excludeGenderTriggers = self->_excludeGenderTriggers;
      self->_excludeGenderTriggers = v119;

      goto LABEL_42;
    }
  }

  else
  {
  }

  v100 = sub_1AC090E50(v95);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FE50(v100, v121, v122, v123, v124, v125, v126, v127);
  }

  obj = 0;
LABEL_42:

  v131 = objc_msgSend_objectForKeyedSubscript_(v240, v128, off_1EB54A2C0, v129, v130);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v237 = objc_msgSend_objectForKeyedSubscript_(v240, v132, off_1EB54A2C0, v133, v134);

    if (v237)
    {
      v139 = objc_msgSend_unsignedIntegerValue(v237, v135, v136, v137, v138);
      goto LABEL_47;
    }
  }

  else
  {
  }

  v237 = 0;
  v139 = 1;
LABEL_47:
  self->_genderOption = v139;
  v140 = sub_1AC090E50(v139);
  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FEC8(&self->_genderOption, v140);
  }

  v144 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v141, @"filterTokens", v142, v143);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v239 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v145, @"filterTokens", v146, v147);

    if (v239)
    {
      v153 = objc_msgSend_array(MEMORY[0x1E695DF70], v149, v150, v151, v152);
      v157 = objc_msgSend_objectForKeyedSubscript_(v239, v154, @"gender", v155, v156);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v161 = objc_msgSend_objectForKeyedSubscript_(v239, v158, @"gender", v159, v160);

        if (v161)
        {
          objc_msgSend_addObjectsFromArray_(v153, v163, v161, v164, v165);
LABEL_62:
          v185 = objc_msgSend_copy(v153, v166, v167, v168, v169, v237, v238);
          genderedTokens = self->_genderedTokens;
          self->_genderedTokens = v185;

          goto LABEL_63;
        }
      }

      else
      {
      }

      v177 = sub_1AC090E50(v162);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        sub_1AC11FF44(v177, v178, v179, v180, v181, v182, v183, v184);
      }

      v161 = 0;
      goto LABEL_62;
    }
  }

  else
  {
  }

  v153 = sub_1AC090E50(v148);
  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC11FFBC(v153, v170, v171, v172, v173, v174, v175, v176);
  }

  v239 = 0;
LABEL_63:

  v190 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v187, @"blacklistTokens", v188, v189);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v241 = objc_msgSend_objectForKeyedSubscript_(parametersCopy, v191, @"blacklistTokens", v192, v193);
  }

  else
  {
    v241 = 0;
  }

  v198 = objc_msgSend_array(MEMORY[0x1E695DF70], v194, v195, v196, v197);
  v203 = v198;
  if (v241)
  {
    v204 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v199, v200, v201, v202);
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v205 = v241;
    v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v206, &v245, v255, 16);
    if (v210)
    {
      v211 = *v246;
      do
      {
        for (j = 0; j != v210; ++j)
        {
          if (*v246 != v211)
          {
            objc_enumerationMutation(v205);
          }

          v213 = objc_msgSend_stringByTrimmingCharactersInSet_(*(*(&v245 + 1) + 8 * j), v207, v204, v208, v209, v237);
          if (objc_msgSend_length(v213, v214, v215, v216, v217))
          {
            v244 = 0;
            v219 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v218, v213, 1, &v244);
            v223 = v244;
            if (v219)
            {
              objc_msgSend_addObject_(v203, v220, v219, v221, v222);
            }
          }
        }

        v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v207, &v245, v255, 16);
      }

      while (v210);
    }
  }

  else
  {
    v204 = sub_1AC090E50(v198);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
    {
      sub_1AC120034(v204, v224, v225, v226, v227, v228, v229, v230);
    }
  }

  v235 = objc_msgSend_copy(v203, v231, v232, v233, v234);
  blackListRules = self->_blackListRules;
  self->_blackListRules = v235;
}

@end