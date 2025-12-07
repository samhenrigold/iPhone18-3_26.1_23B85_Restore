@interface TSCEFunction_INTERSECT_RANGES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INTERSECT_RANGES

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v170.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v170._tableUID._lower = 0;
  v170._tableUID._upper = 0;
  v7 = *(arguments + 1) - *arguments;
  v8 = v7 >> 3;
  if (!(v7 >> 3))
  {
    v14 = objc_msgSend_functionName(spec, a2, context, spec);
    v16 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v15, v14, 0);
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v17, v16, v18);

    goto LABEL_6;
  }

  if (v8 >= 1)
  {
    v162 = v7 >> 3;
    v10 = **arguments;
    v13 = v10;
    if (v10)
    {
      objc_msgSend_formatWithContext_(v10, v11, context, v12);
    }

    else
    {
      memset(&v169, 0, sizeof(v169));
    }

    sub_22114F414(&v171, &v169);
    v168 = 0;
    v26 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v13, v25, context, spec, 0, &v168);
    v30 = v168;
    if (v30)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v27, v30, v29);
LABEL_55:

      goto LABEL_58;
    }

    if (v26)
    {
      objc_msgSend_rangeRef(v26, v27, v28, v29);
    }

    else
    {
      memset(&v169, 0, sizeof(v169));
    }

    v170 = v169;
    v163 = objc_msgSend_preserveFlags(v26, v27, v28, v29);
    v89 = objc_msgSend_calcEngine(context, v86, v87, v88);
    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v89, v90, &v170, v91);

    if ((IsWithinTable & 1) == 0)
    {
      v96 = objc_msgSend_invalidReferenceError(TSCEError, v93, v94, v95);
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v97, v96, v98);

      goto LABEL_55;
    }

    LODWORD(v8) = v7 >> 3;
    if (v162 == 1)
    {
      v20 = 0;
      goto LABEL_8;
    }

    v160 = (v7 >> 3) & 0x7FFFFFFF;
    v21 = 1;
    v159 = vdupq_n_s64(0x7FFF00000000uLL);
    v20 = 1;
    while (1)
    {
      v100 = *(*arguments + 8 * v21);
      v103 = v100;
      v161 = v100;
      if (v100)
      {
        objc_msgSend_formatWithContext_(v100, v101, context, v102);
      }

      else
      {
        memset(&v169, 0, sizeof(v169));
      }

      sub_22114F414(&v171, &v169);
      v167 = 0;
      v105 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v103, v104, context, spec, v21, &v167);
      v109 = v167;
      if (v109)
      {
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v106, v109, v108);

        goto LABEL_58;
      }

      if (v105)
      {
        objc_msgSend_rangeRef(v105, v106, v107, v108);
      }

      else
      {
        memset(&v169, 0, sizeof(v169));
      }

      v110 = objc_msgSend_calcEngine(context, v106, v107, v108, *&v159);
      v113 = objc_msgSend_rangeIsWithinTable_(v110, v111, &v169, v112);

      if ((v113 & 1) == 0)
      {
        v156 = objc_msgSend_invalidReferenceError(TSCEError, v114, v115, v116);
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v157, v156, v158);

        goto LABEL_58;
      }

      if (*&v169._durationFormat != v170._tableUID._lower || *&v169._numberFormat.decimalPlaces != v170._tableUID._upper)
      {
        v170.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_180:

        LODWORD(v8) = v162;
        goto LABEL_9;
      }

      v117 = objc_msgSend_preserveFlags(v105, v114, v115, v116);
      LODWORD(v119) = v170.range._topLeft.row;
      LODWORD(v118) = v170.range._bottomRight.row;
      v120 = *&v170.range._topLeft & 0xFFFF00000000;
      v121 = *&v170.range._bottomRight & 0xFFFF00000000;
      if (v170.range._topLeft.row == 0x7FFFFFFFLL && v120 != 0x7FFF00000000 && v121 != 0x7FFF00000000)
      {
        break;
      }

      v131 = v120 == 0x7FFF00000000 && v121 == 0x7FFF00000000 && v170.range._topLeft.row != 0x7FFFFFFFLL;
      v127 = v170.range._bottomRight.row != 0x7FFFFFFFLL;
      tskFormat = v169._tskFormat;
      v123 = *&v169._formatType;
      if (v131 && v170.range._bottomRight.row != 0x7FFFFFFFLL && (v132.i64[0] = 0xFFFFFFFFLL, v132.i64[1] = 0xFFFFFFFFLL, v133.i64[0] = 0xFFFF00000000, v133.i64[1] = 0xFFFF00000000, v133.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*&v169._tskFormat, v133), v159))), v169._tskFormat).u32[0], v133.i32[1] = vuzp1_s16(*&v169, vmovn_s64(vceqq_s64(vandq_s8(*&v169, v132), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1], (vminv_u16(*v133.i8) & 1) != 0))
      {
        v163 = v117 & 5 | v163 & 0xA;
        if (v170.range._topLeft.row == 0x7FFFFFFFLL)
        {
LABEL_97:
          v127 = 0;
          v124 = 0;
LABEL_98:
          v134 = tskFormat;
          goto LABEL_99;
        }
      }

      else
      {
        v163 &= v117;
        if (!v131)
        {
          goto LABEL_97;
        }
      }

      v124 = 0;
      v134 = v169._tskFormat;
LABEL_99:
      v135 = v134 & 0xFFFF00000000;
      v136 = v123 & 0xFFFF00000000;
      v137 = v134;
      if (v134 != 0x7FFFFFFFLL && v135 == 0x7FFF00000000 && v136 == 0x7FFF00000000)
      {
        v138 = 0;
        v139 = v123 != 0x7FFFFFFF;
        if (v127)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v139 = 0;
        if (v134 != 0x7FFFFFFFLL || v135 == 0x7FFF00000000)
        {
          v138 = 0;
          if (v127)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v138 = 0;
          if (v136 != 0x7FFF00000000)
          {
            v139 = 0;
            v138 = v123 == 0x7FFFFFFF;
          }

          if (v127)
          {
LABEL_112:
            v120 = 0;
            v121 = 0x3E700000000;
            if (!v139)
            {
              goto LABEL_113;
            }

            goto LABEL_106;
          }
        }
      }

      if (v124)
      {
        LODWORD(v119) = 0;
        LODWORD(v118) = 999999;
      }

      if (!v139)
      {
LABEL_113:
        if (v138)
        {
          LODWORD(v134) = 0;
          LODWORD(v123) = 999999;
        }

        v137 = v134;
        goto LABEL_116;
      }

LABEL_106:
      v135 = 0;
      v136 = 0x3E700000000;
LABEL_116:
      v140 = 0x7FFF00000000;
      if (v119 > v123)
      {
        goto LABEL_151;
      }

      v141 = 0x7FFF7FFFFFFFLL;
      v142 = 0x7FFFFFFFLL;
      if (v134 <= v118)
      {
        v143 = HIDWORD(v120);
        if (HIDWORD(v120) > HIDWORD(v136))
        {
          goto LABEL_152;
        }

        v144 = HIDWORD(v121);
        v145 = HIDWORD(v135);
        v142 = 0x7FFFFFFFLL;
        if (HIDWORD(v135) <= HIDWORD(v121))
        {
          if (v119 == 0x7FFFFFFFLL)
          {
LABEL_151:
            v141 = 0x7FFF7FFFFFFFLL;
LABEL_152:
            v142 = 0x7FFFFFFFLL;
            goto LABEL_153;
          }

          v141 = 0x7FFF7FFFFFFFLL;
          v142 = 0x7FFFFFFFLL;
          if (v120 != 0x7FFF00000000)
          {
            if (v118 == 0x7FFFFFFFLL)
            {
              goto LABEL_152;
            }

            v142 = 0x7FFFFFFFLL;
            if (v121 != 0x7FFF00000000)
            {
              if (v144 < v143)
              {
                goto LABEL_152;
              }

              v142 = 0x7FFFFFFFLL;
              if (v119 <= v118)
              {
                if (v137 == 0x7FFFFFFF)
                {
                  goto LABEL_152;
                }

                v142 = 0x7FFFFFFFLL;
                if (v135 != 0x7FFF00000000)
                {
                  if (v123 == 0x7FFFFFFFLL)
                  {
                    goto LABEL_152;
                  }

                  v142 = 0x7FFFFFFFLL;
                  if (v136 != 0x7FFF00000000)
                  {
                    v146 = HIDWORD(v136);
                    if (v145 > HIDWORD(v136))
                    {
                      goto LABEL_152;
                    }

                    v142 = 0x7FFFFFFFLL;
                    if (v134 <= v123)
                    {
                      if (v143 <= v145)
                      {
                        v147 = HIDWORD(v135);
                      }

                      else
                      {
                        v147 = HIDWORD(v120);
                      }

                      if (v119 <= v134)
                      {
                        v119 = v134;
                      }

                      else
                      {
                        v119 = v119;
                      }

                      v148 = v147 << 32;
                      if (v144 < v146)
                      {
                        v146 = v144;
                      }

                      if (v118 >= v123)
                      {
                        v118 = v123;
                      }

                      else
                      {
                        v118 = v118;
                      }

                      v149 = v146 << 32;
                      if (v127 && v139)
                      {
                        v149 = 0x7FFF00000000;
                        v140 = 0x7FFF00000000;
                      }

                      else
                      {
                        v140 = v148;
                      }

                      if (v124 && v138)
                      {
                        v118 = 0x7FFFFFFFLL;
                      }

                      v141 = (v149 | v118);
                      if (v124 && v138)
                      {
                        v142 = 0x7FFFFFFFLL;
                      }

                      else
                      {
                        v142 = v119;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_153:
      v150 = v142 | v140;
      v170.range._topLeft = (v142 | v140);
      v170.range._bottomRight = v141;
      v151 = HIDWORD(v140);
      v152 = HIDWORD(*&v141);
      v153 = v140 & 0xFFFF00000000;
      if ((v140 & 0xFFFF00000000) == 0x7FFF00000000 || v142 == 0x7FFFFFFF)
      {
        v154 = *&v141 & 0xFFFF00000000;
      }

      else
      {
        v154 = *&v141 & 0xFFFF00000000;
        if (v141.row != 0x7FFFFFFF && v154 != 0x7FFF00000000 && v151 <= v152 && v150 <= v141.row)
        {
          goto LABEL_175;
        }
      }

      if (v142 != 0x7FFFFFFF && v153 == 0x7FFF00000000 && v154 == 0x7FFF00000000)
      {
        if (v141.row == 0x7FFFFFFF || v150 > v141.row)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v142 != 0x7FFFFFFF || v153 == 0x7FFF00000000 || v154 == 0x7FFF00000000)
        {
          goto LABEL_180;
        }

        if (v151 > v152 || v141.row != 0x7FFFFFFF)
        {
          goto LABEL_180;
        }
      }

LABEL_175:

      v20 = ++v21 < v160;
      if (v160 == v21)
      {
        LODWORD(v8) = v162;
        LODWORD(v21) = v162;
        goto LABEL_9;
      }
    }

    tskFormat = v169._tskFormat;
    v123 = *&v169._formatType;
    v124 = v170.range._bottomRight.row == 0x7FFFFFFFLL;
    if (v170.range._bottomRight.row == 0x7FFFFFFFLL && (v125.i64[0] = 0xFFFFFFFFLL, v125.i64[1] = 0xFFFFFFFFLL, v126.i64[0] = 0xFFFF00000000, v126.i64[1] = 0xFFFF00000000, v126.i32[0] = vuzp1_s16(vmovn_s64(vceqq_s64(vandq_s8(*&v169._tskFormat, v126), v159)), v169._tskFormat).u32[0], v126.i32[1] = vuzp1_s16(*&v169, vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*&v169, v125), vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1], (vminv_u16(*v126.i8) & 1) != 0))
    {
      v127 = 0;
      v128 = v117 & 0xA | v163 & 5;
    }

    else
    {
      v127 = 0;
      v128 = v117 & v163;
    }

    v163 = v128;
    goto LABEL_98;
  }

  v20 = 0;
  LOBYTE(v163) = 0;
LABEL_8:
  LODWORD(v21) = 1;
LABEL_9:
  v22 = *&v170.range._topLeft & 0xFFFF00000000;
  if (v170.range._topLeft.row == 0x7FFFFFFFLL || v22 == 0x7FFF00000000)
  {
    v24 = *&v170.range._bottomRight & 0xFFFF00000000;
  }

  else
  {
    v24 = *&v170.range._bottomRight & 0xFFFF00000000;
    if (v170.range._bottomRight.row != 0x7FFFFFFF && v24 != 0x7FFF00000000 && v170.range._topLeft.column <= v170.range._bottomRight.column && v170.range._topLeft.row <= v170.range._bottomRight.row)
    {
      goto LABEL_36;
    }
  }

  if (v170.range._topLeft.row == 0x7FFFFFFFLL || v22 != 0x7FFF00000000 || v24 != 0x7FFF00000000)
  {
    if (v170.range._topLeft.row != 0x7FFFFFFFLL || v22 == 0x7FFF00000000 || v24 == 0x7FFF00000000 || v170.range._bottomRight.row != 0x7FFFFFFF || v170.range._topLeft.column > v170.range._bottomRight.column)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (v170.range._bottomRight.row != 0x7FFFFFFF && v170.range._topLeft.row <= v170.range._bottomRight.row)
  {
LABEL_36:
    if (TSCERangeRef::isValid(&v170))
    {
      v33 = [TSCEReferenceValue alloc];
      LOBYTE(v169._tskFormat) = v163;
      v19 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v33, v34, context, &v170, &v169);
      objc_msgSend_setIsOutputOfAFunction_(v19, v35, 1, v36);
      sub_221256020(&v171, &v164);
      TSCEFormat::TSCEFormat(&v169, &v164);
      objc_msgSend_setFormat_(v19, v37, &v169, v38);
      goto LABEL_58;
    }

    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "+[TSCEFunction_INTERSECT_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v32);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 1697, 0, "Bad reference should have been detected earlier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
    v14 = objc_msgSend_invalidReferenceError(TSCEError, v69, v70, v71);
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v72, v14, v73);
LABEL_6:

    goto LABEL_58;
  }

LABEL_38:
  v39 = v8;
  if (!v20)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction_INTERSECT_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", spec);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 1680, 0, "Should have detected bad reference during loop");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
  }

  memset(&v169, 0, 24);
  v49 = v39 - 1;
  if (v39 < 1)
  {
    v59 = 0;
    v58 = 0;
LABEL_49:
    memset(v165, 0, sizeof(v165));
    sub_221478AC0(v165, v58, v59, v59 - v58);
    v77 = objc_msgSend_containingTable(context, v74, v75, v76);
    v81 = objc_msgSend_calcEngine(context, v78, v79, v80);
    v83 = objc_msgSend_invalidIntersectionError_hostTableUID_calcEngine_(TSCEError, v82, v165, v77, v81);
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85);

    v174[0] = v165;
    sub_22107C2C0(v174);
  }

  else
  {
    v50 = 0;
    if (v21 < v49)
    {
      v49 = v21;
    }

    v51 = v49 + 1;
    while (1)
    {
      v52 = *(*arguments + 8 * v50);
      v166 = 0;
      v54 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v52, v53, context, spec, v50, &v166);
      v57 = v166;
      v174[0] = v54;
      if (v57)
      {
        break;
      }

      sub_22146EC88(&v169, v174);

      if (v51 == ++v50)
      {
        v58 = v169._tskFormat;
        v59 = *&v169._formatType;
        goto LABEL_49;
      }
    }

    v19 = objc_msgSend_raiseErrorOrConvert_(context, v55, v57, v56);
  }

  v174[0] = &v169;
  sub_22107C2C0(v174);
LABEL_58:
  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  return v19;
}

@end