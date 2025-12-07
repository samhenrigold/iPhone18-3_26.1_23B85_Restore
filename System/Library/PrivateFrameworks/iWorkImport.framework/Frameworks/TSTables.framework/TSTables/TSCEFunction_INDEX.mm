@interface TSCEFunction_INDEX
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INDEX

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v8 = **arguments;
  v200 = 0;
  v185 = v8;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, &v200);
  v11 = v200;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_89;
  }

  if (v10)
  {
    objc_msgSend_formatWithContext_(v10, v12, context, v13);
  }

  else
  {
    v192 = 0;
    *v193 = 0u;
  }

  sub_22114F414(&v201, &v192);
  v184 = *(*arguments + 8);
  if (objc_msgSend_deepType_(v184, v16, context, v17) == 10)
  {
    v21 = 0;
  }

  else
  {
    if (v184)
    {
      objc_msgSend_formatWithContext_(v184, v18, context, v20);
    }

    else
    {
      v192 = 0;
      *v193 = 0u;
    }

    sub_22114F414(&v201, &v192);
    v199 = 0;
    v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v184, v22, context, spec, 1, &v199);
    v14 = v199;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v24, v14, v26);

      goto LABEL_88;
    }

    v192._decimal.w[0] = objc_msgSend_decimalRepresentation(v23, v24, v25, v26);
    v192._decimal.w[1] = v27;
    v21 = TSUDecimal::truncateWithRounding(&v192);
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    v182 = 0;
    goto LABEL_22;
  }

  v28 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v28, v29, v30, v31) & 1) != 0 || objc_msgSend_nativeType(v28, v32, v33, v34) == 10)
  {
    v182 = 0;
  }

  else
  {
    if (v28)
    {
      objc_msgSend_formatWithContext_(v28, v35, context, v36);
    }

    else
    {
      v192 = 0;
      *v193 = 0u;
    }

    sub_22114F414(&v201, &v192);
    v198 = 0;
    v101 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v100, context, spec, 2, &v198);
    v14 = v198;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v102, v14, v104);

      goto LABEL_88;
    }

    v192._decimal.w[0] = objc_msgSend_decimalRepresentation(v101, v102, v103, v104);
    v192._decimal.w[1] = v105;
    v182 = TSUDecimal::truncateWithRounding(&v192);
  }

  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
LABEL_22:
    v43 = 1;
    if ((v21 & 0x80000000) != 0)
    {
LABEL_84:
      v71 = objc_msgSend_invalidReferenceError(TSCEError, v18, v19, v20);
      v74 = objc_msgSend_raiseErrorOrConvert_(context, v112, v71, v113);
      goto LABEL_85;
    }

    goto LABEL_23;
  }

  v37 = *(*arguments + 24);
  if (objc_msgSend_isTokenOrEmptyArg(v37, v38, v39, v40))
  {
    v43 = 1;
  }

  else
  {
    if (v37)
    {
      objc_msgSend_formatWithContext_(v37, v41, context, v42);
    }

    else
    {
      v192 = 0;
      *v193 = 0u;
    }

    sub_22114F414(&v201, &v192);
    v197 = 0;
    v107 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v37, v106, context, spec, 3, &v197);
    v14 = v197;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v108, v14, v110);

      goto LABEL_88;
    }

    v192._decimal.w[0] = objc_msgSend_decimalRepresentation(v107, v108, v109, v110);
    v192._decimal.w[1] = v111;
    v43 = TSUDecimal::truncateWithRounding(&v192);
  }

  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_23:
  if (v182 < 0 || !v43)
  {
    goto LABEL_84;
  }

  if (objc_msgSend_gridKind(v10, v18, v19, v20) != 1)
  {
    v48 = 1;
    goto LABEL_49;
  }

  v47 = objc_msgSend_count(v10, v44, v45, v46);
  v48 = v47;
  if (v43 > v47)
  {
    goto LABEL_84;
  }

  if (v47 == 1)
  {
    v49 = v10;
LABEL_48:

    v10 = v49;
LABEL_49:
    if (v43 > v48)
    {
      v71 = objc_msgSend_invalidReferenceError(TSCEError, v44, v45, v46);
      v74 = objc_msgSend_raiseErrorOrConvert_(context, v72, v71, v73);
LABEL_85:
      v15 = v74;
      goto LABEL_86;
    }

    v75 = objc_msgSend_dimensions(v10, v44, v45, v46);
    v79 = v75;
    v80 = HIDWORD(v75);
    v81 = v182 == 0;
    v82 = HIDWORD(v75) == 1;
    v83 = !v81 || !v82;
    if (v81 && v82)
    {
      v84 = v21;
    }

    else
    {
      v84 = v182;
    }

    if (v83)
    {
      v85 = v21;
    }

    else
    {
      v85 = 0;
    }

    if (v84 > v75 || v85 > SHIDWORD(v75))
    {
      v71 = objc_msgSend_functionName(spec, v76, v77, v78);
      v97 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v95, v71, v96);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v98, v97, v99);

LABEL_86:
LABEL_87:
      v14 = 0;
      goto LABEL_88;
    }

    if (v84)
    {
      v86 = 0;
    }

    else
    {
      v86 = v75 == 1;
    }

    if (v86)
    {
      v87 = 1;
    }

    else
    {
      v87 = v84;
    }

    if (v80 == 1 && v85 == 0)
    {
      v89 = 1;
    }

    else
    {
      v89 = v85;
    }

    v192._decimal.w[0] = context;
    v192._decimal.w[1] = spec;
    v193[0] = 0;
    v193[1] = 0;
    *(&v193[1] + 7) = 0;
    v194 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v195 = 0;
    v196 = 0;
    if (v87 && v89)
    {
      v91 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v90, (v87 - 1) | ((v89 - 1) << 32), 1, 1, &v192);
    }

    else if (v87 || !v89)
    {
      if (!v87 || v89)
      {
        v91 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v90, 0, v79, v80, &v192);
      }

      else
      {
        v91 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v90, (v87 - 1), 1, v80, &v192);
      }
    }

    else
    {
      v91 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v90, (v89 - 1) << 32, v79, 1, &v192);
    }

    v118 = v91;
    if (objc_msgSend_isGridValue(v91, v92, v93, v94))
    {
      v122 = objc_msgSend_gridValue(v118, v119, v120, v121);
      if (objc_msgSend_dimensions(v122, v123, v124, v125) == 0x100000001)
      {
        v127 = objc_msgSend_valueAtIndex_accessContext_(v122, v126, 0, &v192);
LABEL_110:
        v136 = v127;

        v118 = v136;
      }
    }

    else
    {
      if (!objc_msgSend_isValueGridValue(v118, v119, v120, v121))
      {
        goto LABEL_112;
      }

      v122 = objc_msgSend_valueGrid(v118, v128, v129, v130);
      if (objc_msgSend_area(v122, v131, v132, v133) == 1)
      {
        v127 = objc_msgSend_valueAt1DIndex_(v122, v134, 0, v135);
        goto LABEL_110;
      }
    }

LABEL_112:
    if (objc_msgSend_isGridValue(v118, v128, v129, v130))
    {
      v183 = v118;
      v118 = objc_msgSend_gridValue(v118, v137, v138, v139);
      memset(&v187, 0, 24);
      v143 = objc_msgSend_dimensions(v118, v140, v141, v142);
      v145 = v143;
      v204[0] = v143;
      v146 = HIDWORD(v143);
      if (HIDWORD(v143))
      {
        v147 = 0;
        v148 = v143;
        do
        {
          if (v148)
          {
            v149 = 0;
            do
            {
              v189 = objc_msgSend_valueAtGridCoord_accessContext_(v118, v144, (v147 << 32) | v149, &v192);
              if (objc_msgSend_isReferenceValue(v189, v150, v151, v152))
              {
                v156 = objc_msgSend_asReferenceValue(v189, v153, v154, v155);
                objc_msgSend_setIsOutputOfAFunction_(v156, v157, 1, v158);
                v159 = v156;
                v188 = v159;
                sub_2210ED5B8(&v187, &v188);
              }

              else
              {
                sub_221179A54(&v187, &v189);
              }

              ++v149;
            }

            while (v145 > v149);
            v148 = v145;
          }

          ++v147;
        }

        while (v147 < v146);
      }

      v160 = [TSCEDenseGrid alloc];
      isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v160, v161, &v187, 0, 1, v204);
      v165 = objc_msgSend_gridValue_(TSCEGridValue, v163, isFlattened_dimensions, v164);

      v204[0] = &v187;
      sub_22107C2C0(v204);
    }

    else
    {
      if (!objc_msgSend_isReferenceValue(v118, v137, v138, v139))
      {
LABEL_127:
        if (!v118)
        {
          v118 = objc_msgSend_nilValue(TSCENilValue, v166, v167, v168);
        }

        sub_221256020(&v201, &v186);
        TSCEFormat::TSCEFormat(&v187, &v186);
        objc_msgSend_setFormat_(v118, v171, &v187, v172);
        v173 = v193[0];
        v15 = v118;

        goto LABEL_87;
      }

      v165 = objc_msgSend_asReferenceValue(v118, v166, v167, v168);
      objc_msgSend_setIsOutputOfAFunction_(v165, v169, 1, v170);
    }

    v118 = v165;
    goto LABEL_127;
  }

  contextCopy = context;
  v52 = 0;
  v192._decimal.w[0] = contextCopy;
  v192._decimal.w[1] = spec;
  v193[0] = 0;
  v193[1] = 0;
  *(&v193[1] + 7) = 0;
  v194 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v195 = 0;
  v196 = 0;
  v180 = v43 - 1;
  v181 = 0;
  v179 = contextCopy;
  while (1)
  {
    v53 = objc_msgSend_valueAtIndex_accessContext_(v10, v50, v52, &v192, v179);
    if (objc_msgSend_isError(v53, v54, v55, v56))
    {
      v115 = objc_msgSend_errorWithContext_(v53, v57, contextCopy, v59);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v116, v115, v117);
LABEL_98:

      v14 = 0;
      v68 = v181;
      goto LABEL_99;
    }

    if ((objc_msgSend_isNil(v53, v57, v58, v59) & 1) == 0)
    {
      break;
    }

LABEL_46:

    if (v48 == ++v52)
    {

      v49 = v181;
      goto LABEL_48;
    }
  }

  v63 = v21;
  v64 = objc_msgSend_nativeType(v53, v60, v61, v62);
  if (v64 != 1)
  {
    if (v64 != 6)
    {
      v115 = objc_msgSend_functionName(spec, v65, v66, v67);
      v176 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v174, v115, v175);
      v15 = objc_msgSend_raiseErrorOrConvert_(v179, v177, v176, v178);

      goto LABEL_98;
    }

    if (v180 == v52)
    {
      v191 = 0;
      v68 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v53, v65, contextCopy, spec, 0, 1, &v191);
      v14 = v191;

      if (v14)
      {
        goto LABEL_131;
      }

      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v180 != v52)
  {
    goto LABEL_46;
  }

  v190 = 0;
  v68 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v53, v65, contextCopy, spec, 0, 1, &v190);
  v14 = v190;

  if (!v14)
  {
LABEL_45:
    v181 = v68;
    v21 = v63;
    contextCopy = v179;
    goto LABEL_46;
  }

LABEL_131:
  v15 = objc_msgSend_raiseErrorOrConvert_(v179, v69, v14, v70);
LABEL_99:

LABEL_88:
LABEL_89:

  if (v201)
  {
    v202 = v201;
    operator delete(v201);
  }

  return v15;
}

@end