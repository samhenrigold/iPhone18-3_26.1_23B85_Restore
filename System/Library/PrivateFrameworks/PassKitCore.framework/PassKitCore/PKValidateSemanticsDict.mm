@interface PKValidateSemanticsDict
@end

@implementation PKValidateSemanticsDict

void ___PKValidateSemanticsDict_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v165 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*(a1 + 32))
    {
      PKValidationErrorWithReason(@"Key %@ for semantics of field %@ is not a string", v9, v10, v11, v12, v13, v14, v15, v7);
    }

    else
    {
      PKValidationErrorWithReason(@"Key %@ for additionalSemanitcs is not a string", v9, v10, v11, v12, v13, v14, v15, v7);
    }
    v27 = ;
    v28 = *(*(a1 + 40) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    *a4 = 1;
    goto LABEL_73;
  }

  v16 = v7;
  if ((objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || (objc_msgSend_isEqualToString_(v16) & 1) != 0 || objc_msgSend_isEqualToString_(v16))
  {

    goto LABEL_65;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v16);

  if (!isEqualToString)
  {
    v31 = v16;
    if ((objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || (objc_msgSend_isEqualToString_(v31) & 1) != 0 || objc_msgSend_isEqualToString_(v31))
    {
    }

    else
    {
      v32 = objc_msgSend_isEqualToString_(v31);

      if (!v32)
      {
        v48 = v31;
        if ((objc_msgSend_isEqualToString_(v48) & 1) != 0 || (objc_msgSend_isEqualToString_(v48) & 1) != 0 || (objc_msgSend_isEqualToString_(v48) & 1) != 0 || objc_msgSend_isEqualToString_(v48))
        {
        }

        else
        {
          v49 = objc_msgSend_isEqualToString_(v48);

          if (!v49)
          {
            if (objc_msgSend_isEqualToString_(v48))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = _PKValidateEventDateInfoDictionary(v8);
                goto LABEL_68;
              }

              PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a event info dictionary", v64, v65, v66, v67, v68, v69, v70, v8);
              v24 = LABEL_67:;
LABEL_68:
              v25 = *(*(a1 + 40) + 8);
              v26 = *(v25 + 40);
              *(v25 + 40) = v24;

              goto LABEL_73;
            }

            v71 = v48;
            if ((objc_msgSend_isEqualToString_(v71) & 1) != 0 || objc_msgSend_isEqualToString_(v71))
            {
            }

            else
            {
              v72 = objc_msgSend_isEqualToString_(v71);

              if (!v72)
              {
                v80 = v71;
                if (objc_msgSend_isEqualToString_(v80))
                {
                }

                else
                {
                  v81 = objc_msgSend_isEqualToString_(v80);

                  if (!v81)
                  {
                    if (objc_msgSend_isEqualToString_(v80))
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        goto LABEL_73;
                      }

                      PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a person name components dictionary", v89, v90, v91, v92, v93, v94, v95, v8);
                      goto LABEL_67;
                    }

                    v96 = v80;
                    if ((objc_msgSend_isEqualToString_(v96) & 1) != 0 || (objc_msgSend_isEqualToString_(v96) & 1) != 0 || (objc_msgSend_isEqualToString_(v96) & 1) != 0 || objc_msgSend_isEqualToString_(v96))
                    {
                    }

                    else
                    {
                      v97 = objc_msgSend_isEqualToString_(v96);

                      if (!v97)
                      {
                        v105 = v96;
                        if ((objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || (objc_msgSend_isEqualToString_(v105) & 1) != 0 || objc_msgSend_isEqualToString_(v105))
                        {
                        }

                        else
                        {
                          v106 = objc_msgSend_isEqualToString_(v105);

                          if (!v106)
                          {
                            v126 = v105;
                            if (objc_msgSend_isEqualToString_(v126))
                            {
                              _os_feature_enabled_impl();
                            }

                            else
                            {
                              v127 = objc_msgSend_isEqualToString_(v126);
                              v128 = _os_feature_enabled_impl();
                              if (!v128 || (v127 & 1) != 0)
                              {
                                v129 = v128 | v127;
                              }

                              else
                              {
                                v129 = objc_msgSend_isEqualToString_(v126);
                              }

                              if ((v129 & 1) == 0)
                              {
                                v149 = PKLogFacilityTypeGetObject(0);
                                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  v162 = v126;
                                  _os_log_impl(&dword_1AD337000, v149, OS_LOG_TYPE_DEFAULT, "Ignoring semantic value for unknown key %@.", buf, 0xCu);
                                }

                                goto LABEL_73;
                              }
                            }

                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not an array, must be an array of dictionaries.", v130, v131, v132, v133, v134, v135, v136, v8);
                              goto LABEL_67;
                            }

                            v155 = 0u;
                            v156 = 0u;
                            v153 = 0u;
                            v154 = 0u;
                            v47 = v8;
                            v137 = [v47 countByEnumeratingWithState:&v153 objects:v163 count:16];
                            if (v137)
                            {
                              v138 = v137;
                              v139 = *v154;
                              while (2)
                              {
                                for (i = 0; i != v138; ++i)
                                {
                                  if (*v154 != v139)
                                  {
                                    objc_enumerationMutation(v47);
                                  }

                                  v141 = *(*(&v153 + 1) + 8 * i);
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    PKValidationErrorWithReason(@"Value %@ in array for semantic key %@ is not a dictionary.", v142, v143, v144, v145, v146, v147, v148, v141);
                                    goto LABEL_180;
                                  }
                                }

                                v138 = [v47 countByEnumeratingWithState:&v153 objects:v163 count:16];
                                if (v138)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            goto LABEL_181;
                          }
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not an array, must be an array of strings.", v107, v108, v109, v110, v111, v112, v113, v8);
                          goto LABEL_67;
                        }

                        v159 = 0u;
                        v160 = 0u;
                        v157 = 0u;
                        v158 = 0u;
                        v47 = v8;
                        v114 = [v47 countByEnumeratingWithState:&v157 objects:v164 count:16];
                        if (v114)
                        {
                          v115 = v114;
                          v116 = *v158;
                          while (2)
                          {
                            for (j = 0; j != v115; ++j)
                            {
                              if (*v158 != v116)
                              {
                                objc_enumerationMutation(v47);
                              }

                              v118 = *(*(&v157 + 1) + 8 * j);
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                PKValidationErrorWithReason(@"Value %@ in array for semantic key %@ is not an string.", v119, v120, v121, v122, v123, v124, v125, v118);
                                goto LABEL_180;
                              }
                            }

                            v115 = [v47 countByEnumeratingWithState:&v157 objects:v164 count:16];
                            if (v115)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        goto LABEL_181;
                      }
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      goto LABEL_73;
                    }

                    PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a number.", v98, v99, v100, v101, v102, v103, v104, v8);
                    goto LABEL_67;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = _PKValidateCurrencyAmountDictionary(v8, v80);
                  goto LABEL_68;
                }

                PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a currency amount dictionary", v82, v83, v84, v85, v86, v87, v88, v8);
                goto LABEL_67;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = PKValidateLocationDictionary(v8);
              goto LABEL_68;
            }

            PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a dictionary, must be a location dictionary", v73, v74, v75, v76, v77, v78, v79, v8);
            goto LABEL_67;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a string, must be a timezone id string", v50, v51, v52, v53, v54, v55, v56, v8);
          goto LABEL_67;
        }

        v47 = [MEMORY[0x1E695DFE8] timeZoneWithName:v8];
        if (!v47)
        {
          PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a valid timezone id string", v57, v58, v59, v60, v61, v62, v63, v8);
          goto LABEL_180;
        }

LABEL_181:

        goto LABEL_73;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a string, must be a date string", v33, v34, v35, v36, v37, v38, v39, v8);
      goto LABEL_67;
    }

    v47 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v8, 0, 0);
    if (!v47)
    {
      PKValidationErrorWithReason(@"Value %@ for semantic key %@ is not a valid date string", v40, v41, v42, v43, v44, v45, v46, v8);
      v150 = LABEL_180:;
      v151 = *(*(a1 + 40) + 8);
      v152 = *(v151 + 40);
      *(v151 + 40) = v150;

      goto LABEL_181;
    }

    goto LABEL_181;
  }

LABEL_65:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PKValidationErrorWithReason(@"Value for semantic key %@ is not a string", v17, v18, v19, v20, v21, v22, v23, v16);
    goto LABEL_67;
  }

LABEL_73:
}

@end