@interface TSCEFunction_XLOOKUP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateForSingleUserNodeWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (int)binarySearch:(id)search functionSpec:(id)spec userNodeValue:(id)value userNodeType:(char)type lookupVector:(id)vector max:(int)max lookupDirectionIsVertical:(BOOL)vertical findNextSmallest:(BOOL)self0 findNextLargest:(BOOL)self1 isBinarySearchDescending:(BOOL)self2 outError:(id *)self3;
+ (int)lookupValue:(id)value functionSpec:(id)spec userNodeValue:(id)nodeValue lookupVector:(id)vector matchModeArgIndex:(int)index matchMode:(int64_t)mode searchMode:(int64_t)searchMode outError:(id *)self0;
+ (int)regularSearch:(id)search functionSpec:(id)spec userNodeValue:(id)value userNodeType:(char)type lookupVector:(id)vector max:(int)max lookupDirectionIsVertical:(BOOL)vertical findNextSmallest:(BOOL)self0 findNextLargest:(BOOL)self1 isWildcardSearch:(BOOL)self2 isSearchModeReverse:(BOOL)self3 matcher:(id)self4 outError:(id *)self5;
@end

@implementation TSCEFunction_XLOOKUP

+ (int)lookupValue:(id)value functionSpec:(id)spec userNodeValue:(id)nodeValue lookupVector:(id)vector matchModeArgIndex:(int)index matchMode:(int64_t)mode searchMode:(int64_t)searchMode outError:(id *)self0
{
  valueCopy = value;
  nodeValueCopy = nodeValue;
  vectorCopy = vector;
  v24 = objc_msgSend_deepType_(nodeValueCopy, v19, valueCopy, v20);
  if (v24 == 9)
  {
    v25 = objc_msgSend_errorWithContext_(nodeValueCopy, v21, valueCopy, v23);
LABEL_3:
    v26 = 0;
    *error = v25;
    goto LABEL_18;
  }

  if (objc_msgSend_gridKind(vectorCopy, v21, v22, v23) == 1 && objc_msgSend_count(vectorCopy, v27, v28, v29) != 1)
  {
    v25 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v27, v28, v29);
    goto LABEL_3;
  }

  selfCopy = self;
  v30 = objc_msgSend_dimensions(vectorCopy, v27, v28, v29);
  v34 = v30;
  v35 = HIDWORD(v30);
  if (HIDWORD(v30) != 1 && v30 != 1)
  {
    v36 = objc_msgSend_functionName(spec, v31, v32, v33);
    v38 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v37, v36, 2);
LABEL_17:
    *error = v38;

    v26 = 0;
    goto LABEL_18;
  }

  if (mode == 2 && (searchMode == 2 || searchMode == -2) || (isRegexString = objc_msgSend_isRegexString(nodeValueCopy, v31, v32, v33), mode != 2) && ((isRegexString ^ 1) & 1) == 0)
  {
    v36 = objc_msgSend_functionName(spec, v31, v32, v33);
    v38 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v40, v36, (index + 1));
    goto LABEL_17;
  }

  v42 = mode == 2 && v24 == 7;
  v43 = v42;
  v55 = v43;
  if (v42)
  {
    if (isRegexString)
    {
      v56 = objc_msgSend_asString_outError_(nodeValueCopy, v31, valueCopy, error);
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(nodeValueCopy, v44, v45, v46);
      objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v48, v56, isCaseSensitiveRegexString, error);
    }

    else
    {
      v56 = objc_msgSend_asString_outError_(nodeValueCopy, v31, valueCopy, error);
      objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v50, v56, error);
    }
    v49 = ;
  }

  else
  {
    v49 = 0;
  }

  if (*error)
  {
    v26 = 0;
  }

  else
  {
    if (v34 == 1)
    {
      v51 = v35;
    }

    else
    {
      v51 = v34;
    }

    if (searchMode == 2 || searchMode == -2)
    {
      HIBYTE(v54) = searchMode == -2;
      BYTE2(v54) = mode == 1;
      BYTE1(v54) = mode == -1;
      LOBYTE(v54) = v34 == 1;
      isBinarySearchDescending_outError = objc_msgSend_binarySearch_functionSpec_userNodeValue_userNodeType_lookupVector_max_lookupDirectionIsVertical_findNextSmallest_findNextLargest_isBinarySearchDescending_outError_(selfCopy, v31, valueCopy, spec, nodeValueCopy, v24, vectorCopy, v51, v54, error);
    }

    else
    {
      BYTE4(v53) = searchMode == -1;
      BYTE3(v53) = v55;
      BYTE2(v53) = mode == 1;
      BYTE1(v53) = mode == -1;
      LOBYTE(v53) = v34 == 1;
      isBinarySearchDescending_outError = objc_msgSend_regularSearch_functionSpec_userNodeValue_userNodeType_lookupVector_max_lookupDirectionIsVertical_findNextSmallest_findNextLargest_isWildcardSearch_isSearchModeReverse_matcher_outError_(selfCopy, v31, valueCopy, spec, nodeValueCopy, v24, vectorCopy, v51, v53, v49, error);
    }

    v26 = isBinarySearchDescending_outError;
  }

LABEL_18:
  return v26;
}

+ (int)binarySearch:(id)search functionSpec:(id)spec userNodeValue:(id)value userNodeType:(char)type lookupVector:(id)vector max:(int)max lookupDirectionIsVertical:(BOOL)vertical findNextSmallest:(BOOL)self0 findNextLargest:(BOOL)self1 isBinarySearchDescending:(BOOL)self2 outError:(id *)self3
{
  typeCopy = type;
  searchCopy = search;
  valueCopy = value;
  vectorCopy = vector;
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(valueCopy, v19, searchCopy, v20);
  if (typeCopy == 10)
  {
    v25 = 1;
  }

  else
  {
    v25 = IsEmptyWithContext;
  }

  if (v25)
  {
    v26 = -1;
  }

  else
  {
    v57 = searchCopy;
    v58 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
    v27 = searchCopy;
    v61[0] = v27;
    v61[1] = 0;
    v26 = -1;
    v62 = 0;
    v63[0] = 0xFFFFFFFFLL;
    *(v63 + 7) = 0;
    v64 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v65 = 0;
    v66 = 0;
    if (max >= 1)
    {
      v29 = v27;
      specCopy = spec;
      v30 = 0;
      v26 = -1;
      while (1)
      {
        v31 = (max + v30) >> 1;
        if (vertical)
        {
          objc_msgSend_resolvedValueAtGridCoord_accessContext_(vectorCopy, v28, v31 << 32, v61, specCopy);
        }

        else
        {
          objc_msgSend_resolvedValueAtGridCoord_accessContext_(vectorCopy, v28, (max + v30) >> 1, v61, specCopy);
        }
        v32 = ;
        v38 = objc_msgSend_deepType_(v32, v33, v29, v34);
        if (v38 == 9 || objc_msgSend_valueIsEmptyWithContext_(v32, v35, v29, v37))
        {
          break;
        }

        v39 = typeCopy == 3 && v38 == 5 || typeCopy == 5 && v38 == 3;
        v41 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v35, valueCopy, v32, v29, error);
        if (*error)
        {
          goto LABEL_54;
        }

        if (v41 == 1)
        {
          v48 = v38 == typeCopy || v39;
          if (smallest && v48)
          {
            if (objc_msgSend_isNil(v58, v42, v43, v44))
            {
              v50 = v32;

              v26 = (max + v30) >> 1;
              v58 = v50;
            }

            else
            {
              if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v49, v58, v32, v29, error) == -1)
              {
                v51 = v32;

                v26 = (max + v30) >> 1;
                v58 = v51;
              }

              if (*error)
              {
                goto LABEL_54;
              }
            }
          }

          if (descending)
          {
            max = (max + v30) >> 1;
          }

          else
          {
            v30 = v31 + 1;
          }
        }

        else
        {
          if (!v41)
          {
            goto LABEL_55;
          }

          v45 = v38 == typeCopy || v39;
          if (largest && v45)
          {
            if (objc_msgSend_isNil(v58, v42, v43, v44))
            {
              v47 = v32;

              v26 = (max + v30) >> 1;
              v58 = v47;
            }

            else
            {
              if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v46, v58, v32, v29, error) == 1)
              {
                v52 = v32;

                v26 = (max + v30) >> 1;
                v58 = v52;
              }

              if (*error)
              {
                goto LABEL_54;
              }
            }
          }

          if (descending)
          {
            v30 = v31 + 1;
          }

          else
          {
            max = (max + v30) >> 1;
          }
        }

        if (v30 >= max)
        {
          goto LABEL_56;
        }
      }

      v53 = objc_msgSend_functionName(specCopy, v35, v36, v37);
      *error = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v54, v53, 2);

LABEL_54:
      LODWORD(v31) = 0;
LABEL_55:

      v26 = v31;
    }

LABEL_56:

    searchCopy = v57;
  }

  return v26;
}

+ (int)regularSearch:(id)search functionSpec:(id)spec userNodeValue:(id)value userNodeType:(char)type lookupVector:(id)vector max:(int)max lookupDirectionIsVertical:(BOOL)vertical findNextSmallest:(BOOL)self0 findNextLargest:(BOOL)self1 isWildcardSearch:(BOOL)self2 isSearchModeReverse:(BOOL)self3 matcher:(id)self4 outError:(id *)self5
{
  typeCopy = type;
  searchCopy = search;
  valueCopy = value;
  vectorCopy = vector;
  matcherCopy = matcher;
  v61 = valueCopy;
  v62 = objc_msgSend_nilValue(TSCENilValue, v20, v21, v22);
  v23 = searchCopy;
  v66[0] = v23;
  v66[1] = 0;
  v67 = 0;
  v68[0] = 0xFFFFFFFFLL;
  *(v68 + 7) = 0;
  v69 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v70 = 0;
  v71 = 0;
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(valueCopy, v24, v23, v25);
  if (typeCopy == 10)
  {
    v28 = 1;
  }

  else
  {
    v28 = IsEmptyWithContext;
  }

  v64 = v28;
  v29 = max - 1;
  if (max < 1)
  {
    LODWORD(v32) = -1;
    goto LABEL_61;
  }

  v30 = 0;
  v31 = 0xFFFFFFFFLL;
  while (1)
  {
    if (reverse)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (vertical)
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(vectorCopy, v27, v32 << 32, v66);
    }

    else
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(vectorCopy, v27, v32, v66);
    }
    v33 = ;
    v36 = objc_msgSend_deepType_(v33, v34, v23, v35);
    v39 = v36;
    if (v36 == 9)
    {
      goto LABEL_22;
    }

    if (v64)
    {
      v40 = objc_msgSend_valueIsEmptyWithContext_(v33, v37, v23, v38);
      if (v39 == 10)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      if (v41)
      {
LABEL_57:
        v58 = 1;
        goto LABEL_59;
      }

      goto LABEL_22;
    }

    if (wildcardSearch)
    {
      break;
    }

    v46 = typeCopy == 3 && v36 == 5 || typeCopy == 5 && v36 == 3;
    v48 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v37, valueCopy, v33, v23, error);
    if (*error)
    {
      goto LABEL_58;
    }

    if (v48 == 1)
    {
      v55 = v39 == typeCopy || v46;
      if (!smallest || !v55)
      {
        goto LABEL_22;
      }

      if (objc_msgSend_isNil(v62, v49, v50, v51))
      {
LABEL_51:
        v57 = v33;

        v62 = v57;
        goto LABEL_23;
      }

      if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v56, v62, v33, v23, error) == -1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v48)
      {
        goto LABEL_57;
      }

      v52 = v39 == typeCopy || v46;
      if (!largest || !v52)
      {
        goto LABEL_22;
      }

      if (objc_msgSend_isNil(v62, v49, v50, v51))
      {
        goto LABEL_51;
      }

      if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v53, v62, v33, v23, error) == 1)
      {
LABEL_44:
        v54 = v33;

        v62 = v54;
        goto LABEL_54;
      }
    }

    v32 = v31;
LABEL_54:
    if (*error)
    {
      v58 = 0;
      goto LABEL_59;
    }

LABEL_23:

    ++v30;
    --v29;
    v31 = v32;
    if (v29 == -1)
    {
      goto LABEL_61;
    }
  }

  v42 = objc_msgSend_asString_outError_(v33, v37, v23, error);
  v45 = objc_msgSend_containsMatchInString_(matcherCopy, v43, v42, v44);

  if (v45)
  {
    goto LABEL_57;
  }

  if (!*error)
  {
LABEL_22:
    v32 = v31;
    goto LABEL_23;
  }

LABEL_58:
  v58 = 0;
  LODWORD(v32) = v31;
LABEL_59:

  if (!v58)
  {
    LODWORD(v32) = 0;
  }

LABEL_61:

  return v32;
}

+ (id)evaluateForSingleUserNodeWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  contextCopy = context;
  sub_2212B7230(v194, 3uLL);
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, contextCopy, v10);
  }

  else
  {
    v184 = 0u;
    *v185 = 0u;
  }

  sub_22114F414(v194, &v184);
  v12 = *(*arguments + 8);
  v193 = 0;
  v14 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v12, v13, contextCopy, spec, 1, 1, &v193);
  v15 = v193;
  if (v15)
  {
    v18 = v15;
    v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v16, v15, v17);
    goto LABEL_101;
  }

  if (v12)
  {
    objc_msgSend_formatWithContext_(v12, v16, contextCopy, v17);
  }

  else
  {
    v184 = 0u;
    *v185 = 0u;
  }

  sub_22114F414(v194, &v184);
  v20 = *(*arguments + 16);
  v192 = 0;
  v179 = v20;
  v180 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v20, v21, contextCopy, spec, 2, 1, &v192);
  v22 = v192;
  if (!v22)
  {
    if (v179)
    {
      objc_msgSend_formatWithContext_(v179, v23, contextCopy, v24);
    }

    else
    {
      v184 = 0u;
      *v185 = 0u;
    }

    sub_22114F414(v194, &v184);
    if ((objc_msgSend_isReferenceValue(v12, v25, v26, v27) & 1) == 0 && !objc_msgSend_isReferenceValue(v179, v28, v29, v30))
    {
      goto LABEL_19;
    }

    v191 = 0;
    v33 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v12, v28, contextCopy, spec, 1, &v191);
    v34 = v191;
    if (v34)
    {
      v38 = v34;

      v33 = v38;
LABEL_18:

LABEL_19:
      if (objc_msgSend_gridKind(v180, v28, v31, v32) != 1 || objc_msgSend_count(v180, v39, v40, v41) == 1)
      {
        if (*(arguments + 1) - *arguments < 0x19uLL)
        {
          v46 = 0;
          v42 = 0;
        }

        else
        {
          v42 = *(*arguments + 24);
          if (objc_msgSend_isTokenOrEmptyArg(v42, v43, v44, v45))
          {
            v46 = 0;
          }

          else
          {
            v50 = objc_msgSend_deepType_(v42, v39, contextCopy, v41);
            v46 = v50 != 12 && v50 != 10;
          }
        }

        v178 = v42;
        if (*(arguments + 1) - *arguments < 0x21uLL)
        {
          v59 = 0;
          v66 = 1;
          goto LABEL_46;
        }

        v52 = *(*arguments + 32);
        if ((objc_msgSend_isTokenOrEmptyArg(v52, v53, v54, v55) & 1) != 0 || objc_msgSend_deepType_(v52, v56, contextCopy, v57) == 10)
        {
          v59 = 0;
        }

        else
        {
          v175 = v46;
          v188 = 0;
          v132 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v52, v58, contextCopy, spec, 4, &v188);
          v18 = v188;
          v136 = objc_msgSend_integer(v132, v133, v134, v135);

          if (v18)
          {
            goto LABEL_85;
          }

          if ((v136 - 3) <= 0xFFFFFFFB)
          {
            v145 = objc_msgSend_functionName(spec, v137, v138, v139);
            v147 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v146, v145, 5);
            v150 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v148, v147, v149);
            goto LABEL_114;
          }

          v59 = v136;
          v46 = v175;
        }

        if (*(arguments + 1) - *arguments < 0x29uLL)
        {
          v66 = 1;
          goto LABEL_45;
        }

        v52 = *(*arguments + 40);
        if ((objc_msgSend_isTokenOrEmptyArg(v52, v60, v61, v62) & 1) != 0 || objc_msgSend_deepType_(v52, v63, contextCopy, v64) == 10)
        {
          v66 = 1;
LABEL_42:

LABEL_45:
          v42 = v178;
LABEL_46:
          v177 = objc_msgSend_dimensions(v14, v39, v40, v41);
          v70 = objc_msgSend_dimensions(v180, v67, v68, v69);
          v74 = v70;
          v75 = HIDWORD(v70) == HIDWORD(v177);
          if (v177 != 1)
          {
            v75 = v177 == v70;
          }

          if (!v75)
          {
            v52 = objc_msgSend_functionName(spec, v71, v72, v73);
            v80 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v79, v52, 3);
            v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v81, v80, v82);

LABEL_97:
            v18 = 0;
            goto LABEL_98;
          }

          v172 = HIDWORD(v70);
          v186 = 0;
          matched = objc_msgSend_lookupValue_functionSpec_userNodeValue_lookupVector_matchModeArgIndex_matchMode_searchMode_outError_(TSCEFunction_XLOOKUP, v71, contextCopy, spec, v11, v14, 4, v59, v66, &v186);
          v76 = v186;
          if (v76)
          {
            v18 = v76;
            v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v77, v76, v78);
LABEL_99:

            goto LABEL_100;
          }

          v99 = contextCopy;
          v184 = v99;
          v185[0] = 0;
          v185[1] = 0xFFFFFFFFLL;
          *(&v185[1] + 7) = 0;
          *&v185[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v185[5] = 0;
          v185[6] = 0;
          if (matched == -1)
          {
            if (!v46)
            {
              v151 = v99;
              v152 = objc_msgSend_functionName(spec, v100, v101, v102);
              v155 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v153, v152, v154);
              v19 = objc_msgSend_raiseErrorOrConvert_(v151, v156, v155, v157);

              v52 = 0;
LABEL_96:

              goto LABEL_97;
            }

            v158 = v42;
          }

          else
          {
            v103 = objc_msgSend_nativeType(v180, v100, v101, v102);
            v104 = v180;
            v108 = v104;
            if (v103 == 6 || v103 == 1)
            {
              v174 = v74;
              memset(&v189, 0, 24);
              v109 = objc_msgSend_dimensions(v104, v105, v106, v107);
              v195[0] = v109;
              v111 = HIDWORD(v109);
              if (HIDWORD(v109))
              {
                v112 = 0;
                do
                {
                  if (v109)
                  {
                    v113 = 0;
                    do
                    {
                      v183 = objc_msgSend_valueAtGridCoord_accessContext_(v108, v110, (v112 << 32) | v113, &v184);
                      if (objc_msgSend_isReferenceValue(v183, v114, v115, v116))
                      {
                        v120 = objc_msgSend_asReferenceValue(v183, v117, v118, v119);
                        objc_msgSend_setIsOutputOfAFunction_(v120, v121, 1, v122);
                        v123 = v120;
                        v182 = v123;
                        sub_2210ED5B8(&v189, &v182);
                      }

                      else
                      {
                        sub_221179A54(&v189, &v183);
                      }

                      ++v113;
                      LODWORD(v109) = v195[0];
                    }

                    while (LODWORD(v195[0]) > v113);
                    v111 = HIDWORD(v195[0]);
                  }

                  ++v112;
                }

                while (v112 < v111);
              }

              v124 = [TSCEDenseGrid alloc];
              isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v124, v125, &v189, 0, 0, v195);
              objc_msgSend_gridValue_(TSCEGridValue, v127, isFlattened_dimensions, v128);
              v129 = v74 = v174;

              v195[0] = &v189;
              sub_22107C2C0(v195);
              v108 = v129;
            }

            if (v177 == 1)
            {
              v130 = matched << 32;
              if (v74 == 1)
              {
                objc_msgSend_valueAtGridCoord_accessContext_(v108, v105, v130, &v184, v172);
              }

              else
              {
                objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v108, v105, v130, v74, 1, &v184);
              }
            }

            else if (v172 == 1)
            {
              objc_msgSend_valueAtGridCoord_accessContext_(v108, v105, matched, &v184);
            }

            else
            {
              objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v108, v105, matched, 1, v172, &v184);
            }
            v131 = ;
            v158 = v131;
          }

          if (!v158)
          {
            v158 = objc_msgSend_nilValue(TSCENilValue, v159, v160, v161);
          }

          sub_221256020(v194, &v181);
          TSCEFormat::TSCEFormat(&v189, &v181);
          objc_msgSend_setFormat_(v158, v162, &v189, v163);
          v52 = v158;
          v19 = v52;
          goto LABEL_96;
        }

        v176 = v46;
        v187 = 0;
        v140 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v52, v65, contextCopy, spec, 5, &v187);
        v18 = v187;
        LODWORD(v66) = objc_msgSend_integer(v140, v141, v142, v143);

        if (v18)
        {
LABEL_85:
          v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v137, v18, v139);
LABEL_98:

          v42 = v178;
          goto LABEL_99;
        }

        if (v66 && (v66 - 3) > 0xFFFFFFFA)
        {
          v66 = v66;
          v46 = v176;
          goto LABEL_42;
        }

        v145 = objc_msgSend_functionName(spec, v137, v144, v139);
        v147 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v169, v145, 6);
        v150 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v170, v147, v171);
LABEL_114:
        v19 = v150;

        goto LABEL_98;
      }

      v42 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v39, v40, v41);
      v49 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v47, v42, v48);
LABEL_59:
      v19 = v49;
      v18 = 0;
      goto LABEL_99;
    }

    if (v33)
    {
      objc_msgSend_rangeRef(v33, v35, v36, v37);
    }

    else
    {
      v184 = 0u;
      *v185 = 0u;
    }

    v83 = objc_msgSend_calcEngine(contextCopy, v35, v36, v37);
    IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v83, v84, &v184, v85);

    if (IsValidIncludingSheet)
    {
      if ((objc_msgSend_isReferenceValue(v179, v87, v88, v89) & 1) == 0)
      {
        goto LABEL_18;
      }

      v190 = 0;
      v91 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v179, v90, contextCopy, spec, 2, &v190);
      v92 = v190;
      if (v92)
      {
        v96 = v92;

        v33 = v96;
        goto LABEL_18;
      }

      if (v91)
      {
        objc_msgSend_rangeRef(v91, v93, v94, v95);
      }

      else
      {
        memset(&v189, 0, sizeof(v189));
      }

      v165 = objc_msgSend_calcEngine(contextCopy, v93, v94, v95);
      v168 = objc_msgSend_referenceIsValidIncludingSheet_(v165, v166, &v189, v167);

      if (v168)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v42 = objc_msgSend_invalidReferenceError(TSCEError, v28, v31, v32);
    v49 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v97, v42, v98);
    goto LABEL_59;
  }

  v18 = v22;
  v19 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v23, v22, v24);
LABEL_100:

LABEL_101:
  if (v194[0])
  {
    v194[1] = v194[0];
    operator delete(v194[0]);
  }

  return v19;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v13 = objc_msgSend_nativeType(v9, v10, v11, v12);
  if (v13 == 1 || v13 == 16)
  {
    v63[0] = 0;
    v16 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v14, context, spec, 0, 1, v63);
    v17 = v63[0];
    v51 = v16;
    if (v17)
    {
      v20 = v17;
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v19);
    }

    else
    {
      memset(location, 0, sizeof(location));
      sub_2213F5020(location, *arguments, *(arguments + 1), (*(arguments + 1) - *arguments) >> 3);
      v61 = objc_msgSend_dimensions(v16, v22, v23, v24);
      contextCopy = context;
      v55[0] = contextCopy;
      v55[1] = 0;
      v56 = 0;
      v57[0] = 0xFFFFFFFFLL;
      *(v57 + 7) = 0;
      v58 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v59 = 0;
      v60 = 0;
      if (v61.height > 1 || v61.width >= 2)
      {
        v54 = 0;
        v50 = v9;
        v52 = objc_opt_new();
        v20 = 0;
        do
        {
          v31 = objc_msgSend_valueAtGridCoord_accessContext_(v16, v30, *&v54, v55, v50);
          objc_storeStrong(location[0], v31);
          v33 = objc_msgSend_evaluateForSingleUserNodeWithContext_functionSpec_arguments_(self, v32, contextCopy, spec, location);
          v37 = objc_msgSend_nativeType(v33, v34, v35, v36);
          if (v37 == 1 || v37 == 16)
          {
            v53 = v20;
            v39 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v33, v38, contextCopy, spec, 0, 1, &v53);
            v40 = v53;

            v42 = objc_msgSend_valueAtIndex_accessContext_(v39, v41, 0, v55);

            v20 = v40;
            v33 = v42;
            v16 = v51;
          }

          objc_msgSend_setValue_atCoord_(v52, v38, v33, &v54);
          v54 = TSCEGridDimensions::nextCoordRowMajorOrder(&v61, &v54);
        }

        while (v54.column != 0x7FFFFFFF && v54.row != 0x7FFFFFFF);
        v43 = [TSCEDenseGrid alloc];
        v46 = objc_msgSend_initWithValueGrid_(v43, v44, v52, v45);
        v9 = v50;
        v21 = objc_msgSend_gridValue_(TSCEGridValue, v47, v46, v48);
      }

      else
      {
        v27 = objc_msgSend_valueAtIndex_accessContext_(v16, v25, 0, v55);
        v28 = *location[0];
        *location[0] = v27;

        v21 = objc_msgSend_evaluateForSingleUserNodeWithContext_functionSpec_arguments_(self, v29, contextCopy, spec, location);
        v20 = 0;
      }

      v55[0] = location;
      sub_22107C2C0(v55);
    }
  }

  else
  {
    v21 = objc_msgSend_evaluateForSingleUserNodeWithContext_functionSpec_arguments_(self, v14, context, spec, arguments);
  }

  return v21;
}

@end