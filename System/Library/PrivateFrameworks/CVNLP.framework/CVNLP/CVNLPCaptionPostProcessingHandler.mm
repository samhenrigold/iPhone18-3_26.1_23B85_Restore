@interface CVNLPCaptionPostProcessingHandler
- (BOOL)_checkAboveThreshold:(id)threshold observationConfidence:(double)confidence difference:(id *)difference;
- (CVNLPCaptionPostProcessingHandler)initWithOptions:(id)options runtimeParameters:(id)parameters;
- (CVNLPCaptionRuntimeParameters)runtimeParameters;
- (id)_checkForBlockingTokens:(id)tokens blockingTokens:(id)blockingTokens;
- (id)_checkForBlockingTokens:(id)tokens visionObservations:(id)observations;
- (id)_excludeGenderReplacements:(id)replacements genderOption:(int)option error:(id *)error;
- (id)_excludeGenderTriggers:(id)triggers genderOption:(int)option error:(id *)error;
- (id)_filterVisionObservations:(id)observations;
- (id)_replacements:(id)_replacements genderOption:(int)option;
- (id)postProcessCaptions:(id)captions genderOption:(int)option error:(id *)error;
- (id)postProcessCaptions:(id)captions visionObservations:(id)observations;
@end

@implementation CVNLPCaptionPostProcessingHandler

- (CVNLPCaptionPostProcessingHandler)initWithOptions:(id)options runtimeParameters:(id)parameters
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = CVNLPCaptionPostProcessingHandler;
  v6 = [(CVNLPCaptionPostProcessingHandler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_runtimeParameters, parametersCopy);
    v10 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v8, @" ", v9);
    trimSet = v7->_trimSet;
    v7->_trimSet = v10;
  }

  return v7;
}

- (id)postProcessCaptions:(id)captions genderOption:(int)option error:(id *)error
{
  v6 = *&option;
  *error = 0;
  v9 = objc_msgSend__excludeGenderReplacements_genderOption_error_(self, a2, captions, *&option);
  if (*error)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_msgSend__excludeGenderTriggers_genderOption_error_(self, v8, v9, v6, error);

    if (*error)
    {
      v10 = 0;
      v9 = v11;
    }

    else
    {
      v13 = objc_msgSend__replacements_genderOption_(self, v12, v11, v6);

      v10 = v13;
      v9 = v10;
    }
  }

  return v10;
}

- (id)postProcessCaptions:(id)captions visionObservations:(id)observations
{
  v17[2] = *MEMORY[0x1E69E9840];
  captionsCopy = captions;
  observationsCopy = observations;
  v9 = objc_msgSend__checkForBlockingTokens_visionObservations_(self, v8, captionsCopy, observationsCopy);
  v12 = objc_msgSend__filterVisionObservations_(self, v10, observationsCopy, v11);
  v16[0] = CVNLPCaptions;
  v16[1] = CVNLPImageClassificationIdentifiers;
  v17[0] = v9;
  v17[1] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v17, v16, 2);

  return v14;
}

- (id)_excludeGenderReplacements:(id)replacements genderOption:(int)option error:(id *)error
{
  v149 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  selfCopy = self;
  v10 = objc_msgSend_runtimeParameters(self, v7, v8, v9);
  v14 = objc_msgSend_genderOption(v10, v11, v12, v13);

  if (option != 1 || v14)
  {
    v116 = replacementsCopy;
    v115 = replacementsCopy;
  }

  else
  {
    v125 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17);
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    obj = replacementsCopy;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v141, v148, 16);
    if (v19)
    {
      v123 = *v142;
      do
      {
        v126 = v19;
        for (i = 0; i != v126; ++i)
        {
          if (*v142 != v123)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v141 + 1) + 8 * i);
          v24 = objc_msgSend_objectForKeyedSubscript_(v23, v20, CVNLPGeneratedCaption, v21);
          v28 = objc_msgSend_stringWithSpaceAtEnds(v24, v25, v26, v27);

          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v32 = objc_msgSend_runtimeParameters(selfCopy, v29, v30, v31);
          v36 = objc_msgSend_excludeGenderReplacements(v32, v33, v34, v35);

          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v137, v147, 16);
          if (v41)
          {
            v42 = *v138;
            do
            {
              v43 = 0;
              v44 = v28;
              do
              {
                if (*v138 != v42)
                {
                  objc_enumerationMutation(v36);
                }

                v45 = *(*(&v137 + 1) + 8 * v43);
                v46 = objc_msgSend_mutableCopy(v44, v38, v39, v40);
                v50 = objc_msgSend_replacementKey(v45, v47, v48, v49);
                v54 = objc_msgSend_replacementValue(v45, v51, v52, v53);
                v58 = objc_msgSend_length(v44, v55, v56, v57);
                objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v59, v50, v54, 0, 0, v58);

                v28 = objc_msgSend_copy(v46, v60, v61, v62);
                ++v43;
                v44 = v28;
              }

              while (v41 != v43);
              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v137, v147, 16);
            }

            while (v41);
          }

          v66 = objc_msgSend_mutableCopy(v23, v63, v64, v65);
          v70 = objc_msgSend_trimSet(selfCopy, v67, v68, v69);
          v73 = objc_msgSend_stringByTrimmingCharactersInSet_(v28, v71, v70, v72);
          objc_msgSend_setObject_forKeyedSubscript_(v66, v74, v73, CVNLPGeneratedCaption);

          v78 = objc_msgSend_copy(v66, v75, v76, v77);
          objc_msgSend_addObject_(v125, v79, v78, v80);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v141, v148, 16);
      }

      while (v19);
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obja = v125;
    v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v81, &v133, v146, 16);
    if (v82)
    {
      v85 = *v134;
      v86 = &CVNLPGeneratedCaption;
      do
      {
        v124 = v82;
        for (j = 0; j != v124; ++j)
        {
          if (*v134 != v85)
          {
            objc_enumerationMutation(obja);
          }

          v88 = objc_msgSend_objectForKeyedSubscript_(*(*(&v133 + 1) + 8 * j), v83, *v86, v84);
          v127 = objc_msgSend_stringWithSpaceAtEnds(v88, v89, v90, v91);

          v95 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v92, v93, v94);
          v98 = objc_msgSend_componentsSeparatedByCharactersInSet_(v127, v96, v95, v97);

          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v102 = objc_msgSend_runtimeParameters(selfCopy, v99, v100, v101);
          v106 = objc_msgSend_genderedTokens(v102, v103, v104, v105);

          v107 = v86;
          v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v108, &v129, v145, 16);
          if (v111)
          {
            v112 = *v130;
            while (2)
            {
              for (k = 0; k != v111; ++k)
              {
                if (*v130 != v112)
                {
                  objc_enumerationMutation(v106);
                }

                if (objc_msgSend_indexOfObject_(v98, v109, *(*(&v129 + 1) + 8 * k), v110) != 0x7FFFFFFFFFFFFFFFLL)
                {

                  *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v117, CVNLPCationErrorDomain, 1001, 0);

                  v115 = 0;
                  v114 = obja;
                  goto LABEL_35;
                }
              }

              v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v109, &v129, v145, 16);
              if (v111)
              {
                continue;
              }

              break;
            }
          }

          v86 = v107;
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v83, &v133, v146, 16);
      }

      while (v82);
    }

    v114 = obja;
    v115 = obja;
LABEL_35:

    v116 = replacementsCopy;
  }

  return v115;
}

- (id)_excludeGenderTriggers:(id)triggers genderOption:(int)option error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  selfCopy = self;
  v12 = objc_msgSend_runtimeParameters(self, v9, v10, v11);
  v16 = objc_msgSend_genderOption(v12, v13, v14, v15);

  if (option == 1 && v16 == 1)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v17 = triggersCopy;
    v70 = v17;
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v81, v87, 16);
    if (v67)
    {
      v21 = *v82;
      v69 = triggersCopy;
      v65 = *v82;
      errorCopy = error;
      do
      {
        v22 = 0;
        do
        {
          if (*v82 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = objc_msgSend_objectForKeyedSubscript_(*(*(&v81 + 1) + 8 * v22), v19, CVNLPGeneratedCaption, v20, v65);
          v68 = v22;
          v72 = objc_msgSend_stringWithSpaceAtEnds(v23, v24, v25, v26);

          v30 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v27, v28, v29);
          v33 = objc_msgSend_componentsSeparatedByCharactersInSet_(v72, v31, v30, v32);

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v37 = objc_msgSend_runtimeParameters(selfCopy, v34, v35, v36);
          v41 = objc_msgSend_excludeGenderTriggers(v37, v38, v39, v40);

          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v77, v86, 16);
          if (v46)
          {
            v47 = *v78;
            while (2)
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v78 != v47)
                {
                  objc_enumerationMutation(v41);
                }

                v49 = *(*(&v77 + 1) + 8 * i);
                v50 = objc_msgSend_triggerTokens(v49, v43, v44, v45);
                v54 = objc_msgSend_count(v50, v51, v52, v53) == 0;

                if (!v54)
                {
                  v75 = 0u;
                  v76 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v55 = objc_msgSend_triggerTokens(v49, v43, v44, v45);
                  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v73, v85, 16);
                  if (v59)
                  {
                    v60 = *v74;
                    do
                    {
                      for (j = 0; j != v59; ++j)
                      {
                        if (*v74 != v60)
                        {
                          objc_enumerationMutation(v55);
                        }

                        if (objc_msgSend_indexOfObject_(v33, v57, *(*(&v73 + 1) + 8 * j), v58) == 0x7FFFFFFFFFFFFFFFLL)
                        {

                          goto LABEL_12;
                        }
                      }

                      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v73, v85, 16);
                    }

                    while (v59);
                  }

                  *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v63, CVNLPCationErrorDomain, 1002, 0);

                  v62 = 0;
                  triggersCopy = v69;
                  goto LABEL_31;
                }

LABEL_12:
                ;
              }

              v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v77, v86, 16);
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          v22 = v68 + 1;
          triggersCopy = v69;
          v17 = v70;
          v21 = v65;
        }

        while (v68 + 1 != v67);
        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v19, &v81, v87, 16);
      }

      while (v67);
    }
  }

  v62 = triggersCopy;
LABEL_31:

  return v62;
}

- (id)_replacements:(id)_replacements genderOption:(int)option
{
  v121 = *MEMORY[0x1E69E9840];
  _replacementsCopy = _replacements;
  v105 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  v110 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v8, v9, v10);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = _replacementsCopy;
  v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v115, v120, 16);
  if (v106)
  {
    v104 = *v116;
    optionCopy = option;
    do
    {
      for (i = 0; i != v106; ++i)
      {
        if (*v116 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v107 = *(*(&v115 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKeyedSubscript_(v107, v12, CVNLPGeneratedCaption, v13);
        v19 = objc_msgSend_stringWithSpaceAtEnds(v15, v16, v17, v18);

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v23 = objc_msgSend_runtimeParameters(self, v20, v21, v22);
        v27 = objc_msgSend_replacements(v23, v24, v25, v26);

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v111, v119, 16);
        if (v32)
        {
          v33 = *v112;
LABEL_8:
          v34 = 0;
          while (1)
          {
            if (*v112 != v33)
            {
              objc_enumerationMutation(v27);
            }

            v35 = *(*(&v111 + 1) + 8 * v34);
            v36 = objc_msgSend_genderOption(v35, v29, v30, v31);
            v37 = v36 == 0;

            if (!v37)
            {
              v41 = objc_msgSend_genderOption(v35, v38, v39, v40);
              v45 = objc_msgSend_unsignedIntegerValue(v41, v42, v43, v44) == optionCopy;

              if (!v45)
              {
                break;
              }
            }

            v46 = objc_msgSend_replacementKey(v35, v38, v39, v40);
            v49 = objc_msgSend_rangeOfString_(v19, v47, v46, v48) == 0x7FFFFFFFFFFFFFFFLL;

            if (!v49)
            {
              v53 = objc_msgSend_objectForKey_(v110, v29, v35, v31);
              if (!v53)
              {
                v54 = objc_msgSend_length(v19, v50, v51, v52);
                srand(v54);
                v55 = rand();
                objc_msgSend_replacementProb(v35, v56, v57, v58);
                v60 = MEMORY[0x1E695E110];
                if (v55 % 100 < (v59 * 100.0))
                {
                  v60 = MEMORY[0x1E695E118];
                }

                v53 = v60;
                objc_msgSend_setObject_forKey_(v110, v61, v53, v35);
              }

              if (objc_msgSend_BOOLValue(v53, v50, v51, v52))
              {
                v65 = objc_msgSend_mutableCopy(v19, v62, v63, v64);
                v69 = objc_msgSend_replacementKey(v35, v66, v67, v68);
                v73 = objc_msgSend_replacementValue(v35, v70, v71, v72);
                v77 = objc_msgSend_length(v19, v74, v75, v76);
                objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v65, v78, v69, v73, 0, 0, v77);

                v82 = objc_msgSend_copy(v65, v79, v80, v81);
                v19 = v82;
              }
            }

            if (v32 == ++v34)
            {
              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v111, v119, 16);
              if (v32)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v86 = objc_msgSend_mutableCopy(v107, v83, v84, v85);
        v90 = objc_msgSend_trimSet(self, v87, v88, v89);
        v93 = objc_msgSend_stringByTrimmingCharactersInSet_(v19, v91, v90, v92);
        objc_msgSend_setObject_forKeyedSubscript_(v86, v94, v93, CVNLPGeneratedCaption);

        v98 = objc_msgSend_copy(v86, v95, v96, v97);
        objc_msgSend_addObject_(v105, v99, v98, v100);
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v115, v120, 16);
    }

    while (v106);
  }

  return v105;
}

- (BOOL)_checkAboveThreshold:(id)threshold observationConfidence:(double)confidence difference:(id *)difference
{
  thresholdCopy = threshold;
  v12 = objc_msgSend_runtimeParameters(self, v9, v10, v11);
  v16 = objc_msgSend_sensitiveImageParameters(v12, v13, v14, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v16, v17, thresholdCopy, v18);

  if (v19 && (objc_msgSend_minConfidence(v19, v20, v21, v22), v26 < confidence))
  {
    if (difference)
    {
      v27 = MEMORY[0x1E696AD98];
      objc_msgSend_minConfidence(v19, v23, v24, v25);
      *difference = objc_msgSend_numberWithDouble_(v27, v29, v30, v31, confidence - v28);
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)_checkForBlockingTokens:(id)tokens blockingTokens:(id)blockingTokens
{
  v63 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  blockingTokensCopy = blockingTokens;
  if (objc_msgSend_count(blockingTokensCopy, v5, v6, v7))
  {
    v40 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = tokensCopy;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v56, v62, 16);
    if (v44)
    {
      v42 = *v57;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v56 + 1) + 8 * i);
          v14 = objc_msgSend_objectForKeyedSubscript_(v45, v12, CVNLPGeneratedCaption, v13);
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v47 = blockingTokensCopy;
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v15, &v52, v61, 16);
          if (v16)
          {
            v17 = *v53;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v53 != v17)
                {
                  objc_enumerationMutation(v47);
                }

                v20 = *(*(&v52 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                if (v21)
                {
                  if (objc_msgSend_rangeOfString_(v14, v22, v20, v23) != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_37;
                  }

LABEL_11:
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = v20;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = v24;
                  if (v25)
                  {
                    v50 = 0u;
                    v51 = 0u;
                    v48 = 0u;
                    v49 = 0u;
                    v20 = v25;
                    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v26, &v48, v60, 16);
                    if (v29)
                    {
                      v30 = *v49;
                      do
                      {
                        for (k = 0; k != v29; ++k)
                        {
                          if (*v49 != v30)
                          {
                            objc_enumerationMutation(v20);
                          }

                          if (objc_msgSend_rangeOfString_(v14, v27, *(*(&v48 + 1) + 8 * k), v28) == 0x7FFFFFFFFFFFFFFFLL)
                          {

                            goto LABEL_11;
                          }
                        }

                        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v27, &v48, v60, 16);
                      }

                      while (v29);
                    }

LABEL_37:
                    goto LABEL_38;
                  }
                }
              }

              v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v19, &v52, v61, 16);
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          objc_msgSend_addObject_(v40, v32, v45, v33);
LABEL_38:
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v56, v62, 16);
      }

      while (v44);
    }

    v37 = objc_msgSend_copy(v40, v34, v35, v36);
  }

  else
  {
    v37 = tokensCopy;
  }

  return v37;
}

- (id)_checkForBlockingTokens:(id)tokens visionObservations:(id)observations
{
  v47 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  observationsCopy = observations;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(observationsCopy, v8, &v42, v46, 16);
  if (v12)
  {
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(observationsCopy);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        v16 = objc_msgSend_identifier(v15, v9, v10, v11, v42);
        objc_msgSend_confidence(v15, v17, v18, v19);
        v22 = objc_msgSend__checkAboveThreshold_observationConfidence_difference_(self, v21, v16, 0, v20);

        if (v22)
        {
          v23 = objc_msgSend_runtimeParameters(self, v9, v10, v11);
          v27 = objc_msgSend_sensitiveImageParameters(v23, v24, v25, v26);
          v31 = objc_msgSend_identifier(v15, v28, v29, v30);
          v34 = objc_msgSend_objectForKeyedSubscript_(v27, v32, v31, v33);

          v38 = objc_msgSend_blockingTokens(v34, v35, v36, v37);
          v40 = objc_msgSend__checkForBlockingTokens_blockingTokens_(self, v39, tokensCopy, v38);

          tokensCopy = v40;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(observationsCopy, v9, &v42, v46, 16);
    }

    while (v12);
  }

  return tokensCopy;
}

- (id)_filterVisionObservations:(id)observations
{
  v76 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = observations;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v68, v75, 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v69;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v69 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v68 + 1) + 8 * i);
        v12 = objc_msgSend_identifier(v11, v4, v5, v6);
        objc_msgSend_confidence(v11, v13, v14, v15);
        v67 = 0;
        v18 = objc_msgSend__checkAboveThreshold_observationConfidence_difference_(self, v17, v12, &v67, v16);
        v19 = v67;

        if (v18)
        {
          objc_msgSend_floatValue(v19, v20, v21, v22);
          v24 = v23;
          v28 = objc_msgSend_identifier(v11, v25, v26, v27);
          if (v8 >= v74)
          {
            v29 = (v8 >> 4) + 1;
            if (v29 >> 60)
            {
              sub_1D9D84AB0();
            }

            if (v74 >> 3 > v29)
            {
              v29 = v74 >> 3;
            }

            if (v74 >= 0x7FFFFFFFFFFFFFF0)
            {
              v30 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v29;
            }

            if (v30)
            {
              if (!(v30 >> 60))
              {
                operator new();
              }

              sub_1D9D10E9C();
            }

            v31 = 16 * (v8 >> 4);
            *v31 = v24;
            *(v31 + 8) = v28;
            if (v8)
            {
              v32 = 0;
              v33 = 0;
              do
              {
                *v33 = *v32;
                v34 = *(v32 + 8);
                *(v32 + 8) = 0;
                *(v33 + 8) = v34;
                v32 += 16;
                v33 += 16;
              }

              while (v32 != v8);
              for (j = 0; j != v8; j += 16)
              {
              }
            }

            v8 = v31 + 16;
            v72 = 0;
            v73 = v31 + 16;
            v74 = 0;
          }

          else
          {
            *v8 = v24;
            *(v8 + 8) = v28;
            v8 += 16;
          }

          v73 = v8;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v68, v75, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v39 = v8 >> 4;
  v40 = (v8 >> 4) - 2;
  if (v8 >> 4 >= 2)
  {
    v41 = v40 >> 1;
    v42 = v40 >> 1;
    do
    {
      if (v41 >= v42)
      {
        v45 = (16 * v42);
        v46 = (2 * v42) & 0x1FFFFFFFFFFFFFFELL | 1;
        v47 = 16 * v46;
        if (((2 * v42) & 0x1FFFFFFFFFFFFFFFLL) + 2 < v39 && *(16 * v46) < *(16 * v46 + 0x10))
        {
          v47 += 16;
          v46 = ((2 * v42) & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v48 = 16 * v42;
        v49 = *v47;
        v50 = *v45;
        if (*v47 >= *v45)
        {
          v51 = *(16 * v42 + 8);
          *(16 * v42 + 8) = 0;
          do
          {
            v52 = v48;
            v48 = v47;
            *v52 = v49;
            v53 = *(v47 + 8);
            *(v48 + 8) = 0;
            v54 = *(v52 + 8);
            *(v52 + 8) = v53;

            if (v41 < v46)
            {
              break;
            }

            v55 = 2 * v46;
            v46 = (2 * (v46 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v47 = 16 * v46;
            v56 = v55 + 2;
            if (v56 < v39 && *(16 * v46) < *(16 * v46 + 0x10))
            {
              v47 += 16;
              v46 = v56;
            }

            v49 = *v47;
          }

          while (*v47 >= v50);
          *v48 = v50;
          v43 = *(v48 + 8);
          *(v48 + 8) = v51;
        }
      }
    }

    while (v42-- > 0);
  }

  v60 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38);
  v61 = v73;
  if (v73)
  {
    v62 = 0;
    do
    {
      objc_msgSend_addObject_(v60, v57, *(v62 + 8), v59);
      v62 += 16;
    }

    while (v62 != v61);
  }

  v63 = objc_msgSend_copy(v60, v57, v58, v59);

  return v63;
}

- (CVNLPCaptionRuntimeParameters)runtimeParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_runtimeParameters);

  return WeakRetained;
}

@end