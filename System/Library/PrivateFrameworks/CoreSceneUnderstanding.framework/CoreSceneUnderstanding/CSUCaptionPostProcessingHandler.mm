@interface CSUCaptionPostProcessingHandler
- (CSUCaptionPostProcessingHandler)initWithRuntimeParameters:(id)parameters;
- (CSUCaptionRuntimeParameters)runtimeParameters;
- (id)_checkForBlockingTokens:(id)tokens blockingTokens:(id)blockingTokens;
- (id)_excludeGenderReplacements:(id)replacements genderOption:(int)option error:(id *)error;
- (id)_excludeGenderTriggers:(id)triggers genderOption:(int)option error:(id *)error;
- (id)_replacements:(id)_replacements genderOption:(int)option;
- (id)postProcessCaptions:(id)captions genderOption:(int)option error:(id *)error;
- (id)postProcessResults:(id)results genderOption:(int)option error:(id *)error;
@end

@implementation CSUCaptionPostProcessingHandler

- (CSUCaptionPostProcessingHandler)initWithRuntimeParameters:(id)parameters
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = CSUCaptionPostProcessingHandler;
  v5 = [(CSUCaptionPostProcessingHandler *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_runtimeParameters, parametersCopy);
    v10 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v7, @" ", v8, v9);
    trimSet = v6->_trimSet;
    v6->_trimSet = v10;
  }

  return v6;
}

- (id)postProcessCaptions:(id)captions genderOption:(int)option error:(id *)error
{
  v6 = *&option;
  v21 = 0;
  v8 = objc_msgSend__excludeGenderReplacements_genderOption_error_(self, a2, captions, *&option, &v21);
  v9 = v21;
  if (v9)
  {
    v11 = v9;
    if (error)
    {
      v12 = v9;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v20 = 0;
    v14 = objc_msgSend__excludeGenderTriggers_genderOption_error_(self, v10, v8, v6, &v20);
    v11 = v20;

    if (v11)
    {
      if (error)
      {
        v17 = v11;
        v13 = 0;
        *error = v11;
      }

      else
      {
        v13 = 0;
      }

      v8 = v14;
    }

    else
    {
      v18 = objc_msgSend__replacements_genderOption_(self, v15, v14, v6, v16);

      v13 = v18;
      v11 = 0;
      v8 = v13;
    }
  }

  return v13;
}

- (id)_excludeGenderReplacements:(id)replacements genderOption:(int)option error:(id *)error
{
  v177 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  selfCopy = self;
  v11 = objc_msgSend_runtimeParameters(self, v7, v8, v9, v10);
  v16 = objc_msgSend_genderOption(v11, v12, v13, v14, v15);

  if (option != 1 || v16)
  {
    v141 = replacementsCopy;
    v140 = replacementsCopy;
  }

  else
  {
    v153 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20);
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    obj = replacementsCopy;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v169, v176, 16);
    if (v22)
    {
      v151 = *v170;
      do
      {
        v154 = v22;
        for (i = 0; i != v154; ++i)
        {
          if (*v170 != v151)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v169 + 1) + 8 * i);
          v28 = objc_msgSend_objectForKeyedSubscript_(v27, v23, off_1EB54A2A8, v24, v25);
          v33 = objc_msgSend_stringWithSpaceAtEnds(v28, v29, v30, v31, v32);

          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v38 = objc_msgSend_runtimeParameters(selfCopy, v34, v35, v36, v37);
          v43 = objc_msgSend_excludeGenderReplacements(v38, v39, v40, v41, v42);

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v165, v175, 16);
          if (v49)
          {
            v50 = *v166;
            do
            {
              v51 = 0;
              v52 = v33;
              do
              {
                if (*v166 != v50)
                {
                  objc_enumerationMutation(v43);
                }

                v53 = *(*(&v165 + 1) + 8 * v51);
                v54 = objc_msgSend_mutableCopy(v52, v45, v46, v47, v48);
                v59 = objc_msgSend_replacementKey(v53, v55, v56, v57, v58);
                v64 = objc_msgSend_replacementValue(v53, v60, v61, v62, v63);
                v69 = objc_msgSend_length(v52, v65, v66, v67, v68);
                objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v54, v70, v59, v64, 0, 0, v69);

                v33 = objc_msgSend_copy(v54, v71, v72, v73, v74);
                ++v51;
                v52 = v33;
              }

              while (v49 != v51);
              v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v165, v175, 16);
            }

            while (v49);
          }

          v79 = objc_msgSend_mutableCopy(v27, v75, v76, v77, v78);
          v84 = objc_msgSend_trimSet(selfCopy, v80, v81, v82, v83);
          v88 = objc_msgSend_stringByTrimmingCharactersInSet_(v33, v85, v84, v86, v87);
          objc_msgSend_setObject_forKeyedSubscript_(v79, v89, v88, off_1EB54A2A8, v90);

          v95 = objc_msgSend_copy(v79, v91, v92, v93, v94);
          objc_msgSend_addObject_(v153, v96, v95, v97, v98);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v169, v176, 16);
      }

      while (v22);
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    obja = v153;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v99, &v161, v174, 16);
    if (v100)
    {
      v104 = *v162;
      v105 = &off_1EB54A2A8;
      do
      {
        v152 = v100;
        for (j = 0; j != v152; ++j)
        {
          if (*v162 != v104)
          {
            objc_enumerationMutation(obja);
          }

          v107 = objc_msgSend_objectForKeyedSubscript_(*(*(&v161 + 1) + 8 * j), v101, *v105, v102, v103);
          v155 = objc_msgSend_stringWithSpaceAtEnds(v107, v108, v109, v110, v111);

          v116 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v112, v113, v114, v115);
          v120 = objc_msgSend_componentsSeparatedByCharactersInSet_(v155, v117, v116, v118, v119);

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v125 = objc_msgSend_runtimeParameters(selfCopy, v121, v122, v123, v124);
          v130 = objc_msgSend_genderedTokens(v125, v126, v127, v128, v129);

          v131 = v105;
          v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v132, &v157, v173, 16);
          if (v136)
          {
            v137 = *v158;
            while (2)
            {
              for (k = 0; k != v136; ++k)
              {
                if (*v158 != v137)
                {
                  objc_enumerationMutation(v130);
                }

                if (objc_msgSend_indexOfObject_(v120, v133, *(*(&v157 + 1) + 8 * k), v134, v135) != 0x7FFFFFFFFFFFFFFFLL)
                {

                  v143 = sub_1AC090E50(v142);
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1AC1221E8(v143);
                  }

                  if (error)
                  {
                    *error = objc_msgSend_errorWithCode_message_(CSUError, v144, 2, @"Found gender token, reporting error multiple-gender-words", v145);
                  }

                  v140 = 0;
                  v139 = obja;
                  goto LABEL_39;
                }
              }

              v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v133, &v157, v173, 16);
              if (v136)
              {
                continue;
              }

              break;
            }
          }

          v105 = v131;
        }

        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v101, &v161, v174, 16);
      }

      while (v100);
    }

    v139 = obja;
    v140 = obja;
LABEL_39:

    v141 = replacementsCopy;
  }

  return v140;
}

- (id)_excludeGenderTriggers:(id)triggers genderOption:(int)option error:(id *)error
{
  v111 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  selfCopy = self;
  v13 = objc_msgSend_runtimeParameters(self, v9, v10, v11, v12);
  v18 = objc_msgSend_genderOption(v13, v14, v15, v16, v17);

  if (option == 1 && v18 == 1)
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v19 = triggersCopy;
    v91 = v19;
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v104, v110, 16);
    if (v86)
    {
      v89 = triggersCopy;
      v90 = *v105;
      errorCopy = error;
      do
      {
        v24 = 0;
        do
        {
          if (*v105 != v90)
          {
            objc_enumerationMutation(v19);
          }

          v25 = objc_msgSend_objectForKeyedSubscript_(*(*(&v104 + 1) + 8 * v24), v21, off_1EB54A2A8, v22, v23, v86);
          v87 = v24;
          v93 = objc_msgSend_stringWithSpaceAtEnds(v25, v26, v27, v28, v29);

          v34 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v30, v31, v32, v33);
          v38 = objc_msgSend_componentsSeparatedByCharactersInSet_(v93, v35, v34, v36, v37);

          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v43 = objc_msgSend_runtimeParameters(selfCopy, v39, v40, v41, v42);
          v48 = objc_msgSend_excludeGenderTriggers(v43, v44, v45, v46, v47);

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v100, v109, 16);
          if (v54)
          {
            v55 = *v101;
            while (2)
            {
              for (i = 0; i != v54; ++i)
              {
                if (*v101 != v55)
                {
                  objc_enumerationMutation(v48);
                }

                v57 = *(*(&v100 + 1) + 8 * i);
                v58 = objc_msgSend_triggerTokens(v57, v50, v51, v52, v53);
                v63 = objc_msgSend_count(v58, v59, v60, v61, v62) == 0;

                if (v63)
                {
                  v69 = sub_1AC090E50(v64);
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1AC122270(&buf, v99, v69);
                  }
                }

                else
                {
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v69 = objc_msgSend_triggerTokens(v57, v65, v66, v67, v68);
                  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v94, v108, 16);
                  if (!v74)
                  {
LABEL_31:

                    v79 = sub_1AC090E50(v78);
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1AC12222C(v79);
                    }

                    v82 = objc_msgSend_errorWithCode_message_(CSUError, v80, 2, @"Found trigger tokens, reporting error: Found-exclude-gender-trigger", v81);
                    v83 = v82;
                    if (errorCopy)
                    {
                      v84 = v82;
                      *errorCopy = v83;
                    }

                    v77 = 0;
                    triggersCopy = v89;
                    goto LABEL_36;
                  }

                  v75 = *v95;
LABEL_16:
                  v76 = 0;
                  while (1)
                  {
                    if (*v95 != v75)
                    {
                      objc_enumerationMutation(v69);
                    }

                    if (objc_msgSend_indexOfObject_(v38, v71, *(*(&v94 + 1) + 8 * v76), v72, v73) == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      break;
                    }

                    if (v74 == ++v76)
                    {
                      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v71, &v94, v108, 16);
                      if (v74)
                      {
                        goto LABEL_16;
                      }

                      goto LABEL_31;
                    }
                  }
                }
              }

              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v100, v109, 16);
              if (v54)
              {
                continue;
              }

              break;
            }
          }

          v24 = v87 + 1;
          triggersCopy = v89;
          v19 = v91;
        }

        while (v87 + 1 != v86);
        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v21, &v104, v110, 16);
      }

      while (v86);
    }
  }

  v77 = triggersCopy;
LABEL_36:

  return v77;
}

- (id)_replacements:(id)_replacements genderOption:(int)option
{
  v145 = *MEMORY[0x1E69E9840];
  _replacementsCopy = _replacements;
  v129 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8);
  v134 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v9, v10, v11, v12);
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = _replacementsCopy;
  v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v139, v144, 16);
  if (v130)
  {
    v128 = *v140;
    optionCopy = option;
    do
    {
      for (i = 0; i != v130; ++i)
      {
        if (*v140 != v128)
        {
          objc_enumerationMutation(obj);
        }

        v131 = *(*(&v139 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(v131, v14, off_1EB54A2A8, v15, v16);
        v23 = objc_msgSend_stringWithSpaceAtEnds(v18, v19, v20, v21, v22);

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v28 = objc_msgSend_runtimeParameters(self, v24, v25, v26, v27);
        v33 = objc_msgSend_replacements(v28, v29, v30, v31, v32);

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v135, v143, 16);
        if (v39)
        {
          v40 = *v136;
LABEL_8:
          v41 = 0;
          while (1)
          {
            if (*v136 != v40)
            {
              objc_enumerationMutation(v33);
            }

            v42 = *(*(&v135 + 1) + 8 * v41);
            v43 = objc_msgSend_genderOption(v42, v35, v36, v37, v38);
            v44 = v43 == 0;

            if (!v44)
            {
              v49 = objc_msgSend_genderOption(v42, v45, v46, v47, v48);
              v54 = objc_msgSend_unsignedIntegerValue(v49, v50, v51, v52, v53) == optionCopy;

              if (!v54)
              {
                break;
              }
            }

            v55 = objc_msgSend_replacementKey(v42, v45, v46, v47, v48);
            v59 = objc_msgSend_rangeOfString_(v23, v56, v55, v57, v58) == 0x7FFFFFFFFFFFFFFFLL;

            if (!v59)
            {
              v64 = objc_msgSend_objectForKey_(v134, v35, v42, v37, v38);
              if (!v64)
              {
                v65 = objc_msgSend_length(v23, v60, v61, v62, v63);
                srand(v65);
                v66 = rand();
                objc_msgSend_replacementProb(v42, v67, v68, v69, v70);
                v72 = MEMORY[0x1E695E110];
                if (v66 % 100 < (v71 * 100.0))
                {
                  v72 = MEMORY[0x1E695E118];
                }

                v64 = v72;
                objc_msgSend_setObject_forKey_(v134, v73, v64, v42, v74);
              }

              if (objc_msgSend_BOOLValue(v64, v60, v61, v62, v63))
              {
                v79 = objc_msgSend_mutableCopy(v23, v75, v76, v77, v78);
                v84 = objc_msgSend_replacementKey(v42, v80, v81, v82, v83);
                v89 = objc_msgSend_replacementValue(v42, v85, v86, v87, v88);
                v94 = objc_msgSend_length(v23, v90, v91, v92, v93);
                objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v79, v95, v84, v89, 0, 0, v94);

                v100 = objc_msgSend_copy(v79, v96, v97, v98, v99);
                v23 = v100;
              }
            }

            if (v39 == ++v41)
            {
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v135, v143, 16);
              if (v39)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v105 = objc_msgSend_mutableCopy(v131, v101, v102, v103, v104);
        v110 = objc_msgSend_trimSet(self, v106, v107, v108, v109);
        v114 = objc_msgSend_stringByTrimmingCharactersInSet_(v23, v111, v110, v112, v113);
        objc_msgSend_setObject_forKeyedSubscript_(v105, v115, v114, off_1EB54A2A8, v116);

        v121 = objc_msgSend_copy(v105, v117, v118, v119, v120);
        objc_msgSend_addObject_(v129, v122, v121, v123, v124);
      }

      v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v139, v144, 16);
    }

    while (v130);
  }

  return v129;
}

- (id)_checkForBlockingTokens:(id)tokens blockingTokens:(id)blockingTokens
{
  v82 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  blockingTokensCopy = blockingTokens;
  if (objc_msgSend_count(blockingTokensCopy, v5, v6, v7, v8))
  {
    v56 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = tokensCopy;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v73, v81, 16);
    if (v60)
    {
      v58 = *v74;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v74 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v73 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKeyedSubscript_(v61, v14, off_1EB54A2A8, v15, v16);
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v64 = blockingTokensCopy;
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v18, &v69, v80, 16);
          if (v19)
          {
            v20 = *v70;
            while (2)
            {
              v21 = 0;
              v63 = v19;
              do
              {
                if (*v70 != v20)
                {
                  objc_enumerationMutation(v64);
                }

                v22 = *(*(&v69 + 1) + 8 * v21);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = v22;
                }

                else
                {
                  v23 = 0;
                }

                v24 = v23;
                if (v24)
                {
                  v28 = v24;
                  v29 = objc_msgSend_rangeOfString_(v17, v25, v22, v26, v27);
                  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v46 = sub_1AC090E50(v29);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v79 = v22;
                      _os_log_debug_impl(&dword_1AC05D000, v46, OS_LOG_TYPE_DEBUG, "Found %@ in the caption", buf, 0xCu);
                    }

LABEL_42:

                    goto LABEL_43;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = v22;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v31 = v30;
                  v28 = v31;
                  if (v31)
                  {
                    v67 = 0u;
                    v68 = 0u;
                    v65 = 0u;
                    v66 = 0u;
                    v32 = v31;
                    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v65, v77, 16);
                    if (v37)
                    {
                      v38 = *v66;
                      while (2)
                      {
                        for (j = 0; j != v37; ++j)
                        {
                          if (*v66 != v38)
                          {
                            objc_enumerationMutation(v32);
                          }

                          v40 = *(*(&v65 + 1) + 8 * j);
                          if (objc_msgSend_rangeOfString_(v17, v34, v40, v35, v36) == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v41 = sub_1AC090E50(0x7FFFFFFFFFFFFFFFLL);
                            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 138412290;
                              v79 = v40;
                              _os_log_debug_impl(&dword_1AC05D000, v41, OS_LOG_TYPE_DEBUG, "Did not find %@ in the caption", buf, 0xCu);
                            }

                            v19 = v63;
                            goto LABEL_34;
                          }
                        }

                        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v65, v77, 16);
                        if (v37)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v46 = sub_1AC090E50(v48);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v79 = v32;
                      _os_log_debug_impl(&dword_1AC05D000, v46, OS_LOG_TYPE_DEBUG, "Found all tokens %@ in the caption", buf, 0xCu);
                    }

                    v28 = v32;
                    goto LABEL_42;
                  }
                }

LABEL_34:

                ++v21;
              }

              while (v21 != v19);
              v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v42, &v69, v80, 16);
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          objc_msgSend_addObject_(v56, v43, v61, v44, v45);
LABEL_43:
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v73, v81, 16);
      }

      while (v60);
    }

    v53 = objc_msgSend_copy(v56, v49, v50, v51, v52);
  }

  else
  {
    v53 = tokensCopy;
  }

  return v53;
}

- (id)postProcessResults:(id)results genderOption:(int)option error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = objc_msgSend_results(resultsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v84, v91, 16);
  if (v14)
  {
    v15 = *v85;
    v16 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v85 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v84 + 1) + 8 * i);
        v89[0] = off_1EB54A2A8;
        v19 = objc_msgSend_caption(v18, v10, v11, v12, v13, resultsCopy);
        v90[0] = v19;
        v89[1] = off_1EB54A2B0;
        v20 = MEMORY[0x1E696AD98];
        objc_msgSend_score(v18, v21, v22, v23, v24);
        v29 = objc_msgSend_numberWithFloat_(v20, v25, v26, v27, v28);
        v89[2] = off_1EB54A2B8;
        v90[1] = v29;
        v90[2] = v16;
        v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v90, v89, 3);

        objc_msgSend_addObject_(v78, v32, v31, v33, v34);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v84, v91, 16);
    }

    while (v14);
  }

  v83 = 0;
  v73 = objc_msgSend_postProcessCaptions_genderOption_error_(self, v35, v78, option, &v83);
  v36 = v83;
  v75 = v36;
  if (v36)
  {
    if (error)
    {
      v37 = v36;
      v38 = 0;
      *error = v75;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v39 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obja = v73;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v40, &v79, v88, 16);
    if (v41)
    {
      v42 = *v80;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v80 != v42)
          {
            objc_enumerationMutation(obja);
          }

          v44 = *(*(&v79 + 1) + 8 * j);
          v45 = [CSUCaptionResult alloc];
          v49 = objc_msgSend_objectForKeyedSubscript_(v44, v46, off_1EB54A2A8, v47, v48);
          v53 = objc_msgSend_objectForKeyedSubscript_(v44, v50, off_1EB54A2B0, v51, v52);
          objc_msgSend_floatValue(v53, v54, v55, v56, v57);
          v61 = objc_msgSend_initWithCaption_score_(v45, v58, v49, v59, v60);

          objc_msgSend_addObject_(v39, v62, v61, v63, v64);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v65, &v79, v88, 16);
      }

      while (v41);
    }

    v38 = objc_msgSend_createCaptionResultsWithResults_(CSUCaptionResults, v66, v39, v67, v68);
  }

  return v38;
}

- (CSUCaptionRuntimeParameters)runtimeParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_runtimeParameters);

  return WeakRetained;
}

@end