@interface TSCEFunction_SUBSTITUTE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUBSTITUTE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v10 = v8;
  v131 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v131);
    v11 = v131;
  }

  else
  {
    v11 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
  }

  v130 = v11;
  v12 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v10, v9, context, spec, 0, &v130);
  v13 = v130;

  if (v13)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v14, v13, v15);
    goto LABEL_43;
  }

  v17 = *(*arguments + 8);
  v129 = 0;
  v119 = v17;
  v120 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v17, v18, context, spec, 1, &v129);
  v13 = v129;
  isRegexString = objc_msgSend_isRegexString(v17, v19, v20, v21);
  if (!v13)
  {
    v25 = isRegexString;
    v118 = *(*arguments + 16);
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v36 = 0;
LABEL_13:
      v40 = objc_msgSend_length(v12, v26, v27, v28);
      memset(v127, 0, 19);
      if (v25)
      {
        v41 = objc_msgSend_asStringValue(v119, v37, v38, v39);
        isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v41, v42, v43, v44);
        v126 = 0;
        v47 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v46, v120, isCaseSensitiveRegex, &v126);
        v48 = v126;
        if (v48)
        {
          v13 = v48;
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v49, v48, v50);
LABEL_36:

          goto LABEL_37;
        }

        v125 = 0;
        v85 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v118, v49, context, spec, 2, &v125);
        v13 = v125;
        if (v13)
        {
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v86, v13, v87);

          goto LABEL_36;
        }

        v92 = objc_msgSend_matchesInString_options_range_(v47, v86, v12, 0, 0, v40);
        if (objc_msgSend_count(v92, v93, v94, v95) >= v36)
        {
          if (v36)
          {
            v104 = objc_msgSend_objectAtIndex_(v92, v96, v36 - 1, v98);
            v108 = objc_msgSend_range(v104, v105, v106, v107);
            v110 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v47, v109, v12, 0, v108, v109, v85);
          }

          else
          {
            v111 = objc_msgSend_length(v12, v96, v97, v98);
            v110 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v47, v112, v12, 0, 0, v111, v85);
          }

          sub_221077074(&v122, v110);
          v113 = v122;
          v122 = 0;
          v114 = v127[0]._decimal.w[0];
          v127[0]._decimal.w[0] = v113;

          v115 = v123;
          v123 = 0;
          v116 = v127[0]._decimal.w[1];
          v127[0]._decimal.w[1] = v115;

          LOWORD(v127[1]._decimal.w[0]) = v124;
          BYTE2(v127[1]._decimal.w[0]) = BYTE2(v124);
        }

        else
        {
          sub_221077078(&v132, &v122, v96, v97, v98);
          v99 = v122;
          v122 = 0;
          v100 = v127[0]._decimal.w[0];
          v127[0]._decimal.w[0] = v99;

          v101 = v123;
          v123 = 0;
          v102 = v127[0]._decimal.w[1];
          v127[0]._decimal.w[1] = v101;

          LOWORD(v127[1]._decimal.w[0]) = v124;
          BYTE2(v127[1]._decimal.w[0]) = BYTE2(v124);
        }
      }

      else
      {
        sub_221077078(&v132, &v122, v37, v38, v39);
        v51 = v122;
        v122 = 0;
        v52 = v127[0]._decimal.w[0];
        v127[0]._decimal.w[0] = v51;

        v53 = v123;
        v123 = 0;
        v54 = v127[0]._decimal.w[1];
        v127[0]._decimal.w[1] = v53;

        LOWORD(v127[1]._decimal.w[0]) = v124;
        BYTE2(v127[1]._decimal.w[0]) = BYTE2(v124);

        v121 = 0;
        if (v118)
        {
          objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v118, v55, context, spec, 2, &v121);
          v58 = v121;
          if (v58)
          {
            v13 = v58;
            v16 = objc_msgSend_raiseErrorOrConvert_(context, v55, v58, v57);

LABEL_37:
LABEL_41:

            goto LABEL_42;
          }
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
        }

        v67 = sub_221078910(&v122, v55, v56, v57);
        v71 = objc_msgSend_length(v120, v68, v69, v70);
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v117 = v67 - v71;
        if (v36)
        {
LABEL_23:
          if (v74 < v36)
          {
            goto LABEL_24;
          }
        }

        else
        {
LABEL_24:
          while (v40)
          {
            v79 = objc_msgSend_rangeOfString_options_range_(v12, v72, v120, 0, v75, v40);
            if (v79 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v80 = v76;
            if (!v76)
            {
              break;
            }

            v81 = objc_msgSend_length(v12, v76, v77, v78);
            if (!v36 || v36 - 1 == v74)
            {
              sub_221077D90(v127, (v79 + v73), v80, &v122);
              v73 += v117;
            }

            v75 = v79 + v80;
            v40 = v81 - (v79 + v80);
            ++v74;
            if (v36)
            {
              goto LABEL_23;
            }
          }
        }
      }

      v16 = sub_2210789F4(v127, v82, v83, v84);
      v13 = 0;
      goto LABEL_37;
    }

    v29 = *(*arguments + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v29, v30, v31, v32))
    {
      v36 = 0;
LABEL_11:

      goto LABEL_13;
    }

    if (objc_msgSend_isEmptyArg(v29, v33, v34, v35))
    {
      v62 = objc_msgSend_functionName(spec, v59, v60, v61);
      v64 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v63, 4, v62, 1, 1.0);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v65, v64, v66);

      v13 = 0;
    }

    else
    {
      v128 = 0;
      v62 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v59, context, spec, 3, &v128);
      v13 = v128;
      if (!v13)
      {
        v127[0]._decimal.w[0] = objc_msgSend_decimalRepresentation(v62, v88, v89, v90);
        v127[0]._decimal.w[1] = v103;
        v36 = TSUDecimal::truncateWithRounding(v127);

        goto LABEL_11;
      }

      v16 = objc_msgSend_raiseErrorOrConvert_(context, v88, v13, v90);
    }

    goto LABEL_41;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v23, v13, v24);
LABEL_42:

LABEL_43:

  return v16;
}

@end