@interface TSCEFunction_OFFSET
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)offsetReferenceValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments outError:(id *)error;
@end

@implementation TSCEFunction_OFFSET

+ (id)offsetReferenceValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments outError:(id *)error
{
  contextCopy = context;
  if (!error)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSCEFunction_OFFSET offsetReferenceValueWithContext:functionSpec:arguments:outError:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2213, 0, "invalid nil value for '%{public}s'", "outError");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = **arguments;
  v23 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v21, v22, contextCopy, spec, 0, error);
  v24 = v23;
  if (*error)
  {
    v25 = v23;
    goto LABEL_10;
  }

  v26 = *(*arguments + 8);
  v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, contextCopy, spec, 1, error);
  v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
  v134._decimal.w[1] = v32;
  v33 = TSUDecimal::truncateWithRounding(&v134);
  if (*error)
  {
    goto LABEL_8;
  }

  v37 = v33;
  if (v33 <= 999999)
  {
    v132 = *(*arguments + 16);
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v132, v41, contextCopy, spec, 2, error);
    v131 = v42;
    if (*error)
    {
LABEL_82:
      v104 = v24;
LABEL_83:
      v25 = v104;
LABEL_84:

      goto LABEL_9;
    }

    v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45);
    v134._decimal.w[1] = v46;
    v47 = TSUDecimal::truncateWithRounding(&v134);
    if (v47 >= 1000)
    {
      v51 = objc_msgSend_functionName(spec, v48, v49, v50);
      *error = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v52, 3, v51, 1, 1, -999.0, 999.0);

      goto LABEL_82;
    }

    v126 = v47;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v129 = 0;
      goto LABEL_24;
    }

    v127 = *(*arguments + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v127, v53, v54, v55))
    {
      v129 = 0;
      goto LABEL_19;
    }

    v124 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v127, v56, contextCopy, spec, 3, error);
    v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v124, v75, v76, v77);
    v134._decimal.w[1] = v78;
    v129 = TSUDecimal::truncateWithRounding(&v134);
    if (*error)
    {
      goto LABEL_99;
    }

    if (v129)
    {
      if (v129 <= 0xF4240)
      {

LABEL_19:
        if (*(arguments + 1) - *arguments >= 0x21uLL)
        {
          v57 = *(*arguments + 32);
          v127 = v57;
          if (objc_msgSend_isTokenOrEmptyArg(v57, v58, v59, v60))
          {
            v62 = 0;
LABEL_22:

            goto LABEL_25;
          }

          v124 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v57, v61, contextCopy, spec, 4, error);
          v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v124, v87, v88, v89);
          v134._decimal.w[1] = v90;
          v91 = TSUDecimal::truncateWithRounding(&v134);
          if (!*error)
          {
            v62 = v91;
            if (v91)
            {
              if (v91 < 0x3E9u)
              {

                goto LABEL_22;
              }

              v95 = objc_msgSend_functionName(spec, v92, v93, v94);
              v97 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v96, 5, v95, 1, 1, 1.0, 1000.0);
            }

            else
            {
              v95 = objc_msgSend_functionName(spec, v92, v93, v94);
              v97 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v108, 5, v95, 1, 1.0);
            }

            *error = v97;
          }

LABEL_99:
          v25 = v24;

          goto LABEL_84;
        }

LABEL_24:
        v62 = 0;
LABEL_25:
        if (objc_msgSend_isRange(v24, v48, v49, v50))
        {
          v66 = objc_msgSend_range(v24, v63, v64, v65);
          v70 = v67;
        }

        else
        {
          v66 = objc_msgSend_range(v24, v63, v64, v65);
          v70 = 0x7FFF7FFFFFFFLL;
        }

        v71 = v66 & 0xFFFF00000000;
        v72 = v70 & 0xFFFF00000000;
        if (v66 != 0x7FFFFFFFLL && v71 == 0x7FFF00000000 && v72 == 0x7FFF00000000)
        {
          v73 = HIWORD(v66);
          if (v70 != 0x7FFFFFFF)
          {
            if (v129)
            {
              if (v129 + v66 - 1000001 < 0xFFF0BDC0)
              {
                goto LABEL_81;
              }

              v70 = v70 & 0xFFFF7FFF00000000 | (v129 + v66 - 1);
            }

            v128 = v62;
            if (v62)
            {
              LOWORD(v74) = 0;
              v70 = v70 & 0xFFFF0000FFFFFFFFLL | ((v62 - 1) << 32);
              v86 = 1;
            }

            else
            {
              v86 = 1;
              LOWORD(v74) = 0x7FFF;
            }

LABEL_78:
            v99 = (v66 + v37);
            if (v99 > 0xF423F)
            {
              goto LABEL_81;
            }

            v122 = (v74 << 32) | (v73 << 48);
            v100 = v70;
            v125 = v73;
            v130 = v70;
            v101 = v74;
            v123 = v86;
            v102 = sub_22110E12C(v122 | v66, v100);
            v103 = v99;
            LOWORD(v74) = v101;
            v73 = v125;
            if (v102 && (v37 + v130) > 0xF423F)
            {
              goto LABEL_81;
            }

            if (v130 == 0x7FFFFFFF)
            {
              v105 = 0;
            }

            else
            {
              v105 = v37;
            }

            v70 = v130 & 0xFFFFFFFF00000000 | (v105 + v130);
            if (v128)
            {
              v106 = 0;
            }

            else
            {
              v106 = v123;
            }

            if (v106 == 1)
            {
              if (v126)
              {
                goto LABEL_81;
              }

              v107 = v122;
LABEL_109:
              v114 = v107 | v103;
              v115 = v107 | v103;
              if ((sub_221471680(v107 | v103, v70) & 1) == 0)
              {
                if (v70 == 0x7FFFFFFF)
                {
                  if ((v70 & 0x101FFFF00000000) == 0x7FFF00000000)
                  {
                    v115 = v114;
                  }

                  else
                  {
                    v115 = v70;
                  }
                }

                else
                {
                  v115 = v70;
                }
              }

              v116 = [TSCEReferenceValue alloc];
              v120 = objc_msgSend_tableUID(v24, v117, v118, v119);
              v134._decimal.w[0] = v114;
              v134._decimal.w[1] = v115;
              v135 = v120;
              v136 = v121;
              v133 = 0;
              v104 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v116, v121, contextCopy, &v134, &v133);
              goto LABEL_83;
            }

LABEL_101:
            if (v126 + v74 > 0x3E7)
            {
              goto LABEL_81;
            }

            v109 = v73 << 48;
            v110 = v74;
            v111 = v103;
            v112 = sub_22110E12C((v73 << 48) | (v74 << 32) | v103, v70);
            v103 = v111;
            if (v112 && v126 + WORD2(v70) >= 1000)
            {
              goto LABEL_81;
            }

            if (WORD2(v70) == 0x7FFF)
            {
              v113 = 0;
            }

            else
            {
              v113 = v126;
            }

            v70 = v70 & 0xFFFF0000FFFFFFFFLL | ((v113 + WORD2(v70)) << 32);
            v107 = v109 | ((v110 + v126) << 32);
            goto LABEL_109;
          }

          LOWORD(v74) = 0x7FFF;
        }

        else
        {
          v74 = HIDWORD(v66);
          v73 = HIWORD(v66);
          if (v66 == 0x7FFFFFFFLL && v71 != 0x7FFF00000000 && v72 != 0x7FFF00000000)
          {
            if (v70 == 0x7FFFFFFF)
            {
              if (v129)
              {
                v70 = v70 & 0xFFFFFFFF00000000 | (v129 - 1);
              }

              if (v62)
              {
                if (WORD2(v66) + v62 >= 0x3E9)
                {
                  goto LABEL_81;
                }

                v70 = v70 & 0xFFFF00007FFFFFFFLL | ((v62 + WORD2(v66) - 1) << 32);
              }

              if (!v129)
              {
                if (v37)
                {
                  goto LABEL_81;
                }

                LODWORD(v103) = 0x7FFFFFFF;
                goto LABEL_101;
              }

              v128 = v62;
              LODWORD(v66) = 0;
              goto LABEL_77;
            }

            LODWORD(v66) = 0x7FFFFFFF;
          }
        }

        if (v129)
        {
          if (v66 + v129 - 1000001 < 0xFFF0BDC0)
          {
            goto LABEL_81;
          }

          v70 = v70 & 0xFFFFFFFF00000000 | (v66 + v129 - 1);
          if (!v62)
          {
            v128 = v62;
            if (v72 == 0x7FFF00000000)
            {
              v86 = 0;
              v70 = v70 & 0xFFFF00007FFFFFFFLL | (v74 << 32);
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        else if (!v62)
        {
          v128 = v62;
          goto LABEL_77;
        }

        v85 = v70;
        if (v74 + v62 < 0x3E9)
        {
          v70 = v70 & 0xFFFF0000FFFFFFFFLL | ((v62 + v74 - 1) << 32);
          v128 = v62;
          if (!v129 && ((v62 + v74 - 1) == 0x7FFF || v85 == 0x7FFFFFFFLL))
          {
            v86 = 0;
            v70 = v70 & 0xFFFFFFFF00000000 | v66;
            goto LABEL_78;
          }

LABEL_77:
          v86 = 0;
          goto LABEL_78;
        }

LABEL_81:
        *error = objc_msgSend_invalidReferenceError(TSCEError, v67, v68, v69);
        goto LABEL_82;
      }

      v82 = objc_msgSend_functionName(spec, v79, v80, v81);
      v84 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v83, 4, v82, 1, 1, 1.0, 1000000.0);
    }

    else
    {
      v82 = objc_msgSend_functionName(spec, v79, v80, v81);
      v84 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v98, 4, v82, 1, 1.0);
    }

    *error = v84;

    goto LABEL_99;
  }

  v38 = objc_msgSend_functionName(spec, v34, v35, v36);
  *error = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v39, 2, v38, 1, 1, 4293967300.0, 999999.0);

LABEL_8:
  v25 = v24;
LABEL_9:

LABEL_10:

  return v25;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  __p = 0;
  v57 = 0;
  v58 = 0;
  v8 = **arguments;
  if (objc_msgSend_isReferenceValue(v8, v9, v10, v11))
  {
    v15 = objc_msgSend_asReferenceValue(v8, v12, v13, v14);
    v17 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v15, v16, context, 0);
    v20 = v17;
    if (v17)
    {
      objc_msgSend_formatWithContext_(v17, v18, context, v19);
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    sub_22114F414(&__p, &v55);
  }

  else
  {
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v12, context, v14);
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    sub_22114F414(&__p, &v55);
  }

  v21 = *(*arguments + 8);
  v24 = v21;
  if (v21)
  {
    objc_msgSend_formatWithContext_(v21, v22, context, v23);
  }

  else
  {
    memset(&v55, 0, sizeof(v55));
  }

  sub_22114F414(&__p, &v55);
  v25 = *(*arguments + 16);
  v28 = v25;
  if (v25)
  {
    objc_msgSend_formatWithContext_(v25, v26, context, v27);
  }

  else
  {
    memset(&v55, 0, sizeof(v55));
  }

  sub_22114F414(&__p, &v55);
  if (*(arguments + 1) - *arguments >= 0x19uLL)
  {
    v30 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v30, v31, v32, v33) & 1) == 0)
    {
      if (v30)
      {
        objc_msgSend_formatWithContext_(v30, v34, context, v35);
      }

      else
      {
        memset(&v55, 0, sizeof(v55));
      }

      sub_22114F414(&__p, &v55);
    }

    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v36 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v36, v37, v38, v39) & 1) == 0)
      {
        if (v36)
        {
          objc_msgSend_formatWithContext_(v36, v40, context, v41);
        }

        else
        {
          memset(&v55, 0, sizeof(v55));
        }

        sub_22114F414(&__p, &v55);
      }
    }
  }

  v54 = 0;
  v42 = objc_msgSend_offsetReferenceValueWithContext_functionSpec_arguments_outError_(TSCEFunction_OFFSET, v29, context, spec, arguments, &v54);
  v43 = v54;
  objc_msgSend_setIsOutputOfAFunction_(v42, v44, 1, v45);
  if (v43)
  {
    v48 = objc_msgSend_raiseErrorOrConvert_(context, v46, v43, v47);
  }

  else
  {
    sub_221256020(&__p, &v53);
    TSCEFormat::TSCEFormat(&v55, &v53);
    objc_msgSend_setFormat_(v42, v49, &v55, v50);
    v48 = v42;
  }

  v51 = v48;

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  return v51;
}

@end