@interface TSCEFunction_ADDRESS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ADDRESS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v130, 0, sizeof(v130));
  }

  sub_22114F414(&v131, &v130);
  v129 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v129);
  v14 = v129;
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v17);
    goto LABEL_86;
  }

  v130._tskFormat = objc_msgSend_decimalRepresentation(v13, v15, v16, v17);
  *&v130._formatType = v20;
  v21 = TSUDecimal::truncateWithRounding(&v130);
  v22 = *(*arguments + 8);
  v25 = v22;
  if (v22)
  {
    objc_msgSend_formatWithContext_(v22, v23, context, v24);
  }

  else
  {
    memset(&v130, 0, sizeof(v130));
  }

  sub_22114F414(&v131, &v130);
  v128 = 0;
  v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 1, &v128);
  v28 = v128;
  if (!v28)
  {
    v122 = v27;
    v123 = v25;
    v130._tskFormat = objc_msgSend_decimalRepresentation(v27, v29, v30, v31);
    *&v130._formatType = v32;
    v121 = TSUDecimal::truncateWithRounding(&v130);
    v124 = v21;
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v36 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v36, v37, v38, v39) & 1) != 0 || objc_msgSend_nativeType(v36, v40, v41, v42) == 10)
      {
      }

      else
      {
        v127 = 0;
        v79 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v43, context, spec, 2, &v127);
        v18 = v127;
        v120 = objc_msgSend_trunc(v79, v80, v81, v82);

        if (v18)
        {
          v19 = objc_msgSend_raiseErrorOrConvert_(context, v83, v18, v84);

          goto LABEL_84;
        }

        if (v36)
        {
          objc_msgSend_formatWithContext_(v36, v83, context, v84);
        }

        else
        {
          memset(&v130, 0, sizeof(v130));
        }

        sub_22114F414(&v131, &v130);
        TSUDecimal::operator=();
        v118 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v89, &v130, v90);
        v116 = objc_msgSend_mod_(v120, v91, v118, v92);

        v96 = objc_msgSend_integer(v116, v93, v94, v95);
        v97 = v36;
        if (v96)
        {
          v98 = v96;
        }

        else
        {
          v98 = 4;
        }

        if (v98 <= 4)
        {
          v44 = 7u >> v98;
          v45 = 0xBu >> v98;
          goto LABEL_16;
        }
      }
    }

    LOBYTE(v44) = 1;
    LOBYTE(v45) = 1;
LABEL_16:
    v117 = v45;
    v119 = v44;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v53 = 1;
LABEL_22:
      if ((v44 | v53))
      {
        v54 = 1;
      }

      else
      {
        v54 = -999999;
      }

      if ((v44 | v53))
      {
        v55 = 1000000;
      }

      else
      {
        v55 = 999999;
      }

      if ((v45 | v53))
      {
        v56 = 1;
      }

      else
      {
        v56 = -999;
      }

      if ((v45 | v53))
      {
        v57 = 1000;
      }

      else
      {
        v57 = 999;
      }

      if (v124 < v54 || v124 > v55)
      {
        v69 = objc_msgSend_functionName(spec, v33, v34, v35);
        v70 = v55;
        v27 = v122;
        v36 = v69;
        v72 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v71, 1, v69, 1, 1, v54, v70);
        v25 = v123;
        v75 = objc_msgSend_raiseErrorOrConvert_(context, v73, v72, v74);
      }

      else
      {
        if (v121 >= v56 && v121 <= v57)
        {
          v36 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v33, 10, v35);
          v27 = v122;
          v25 = v123;
          if (*(arguments + 1) - *arguments >= 0x21uLL)
          {
            v60 = *(*arguments + 32);
            if ((objc_msgSend_isTokenOrEmptyArg(v60, v61, v62, v63) & 1) == 0 && objc_msgSend_nativeType(v60, v64, v65, v66) != 10)
            {
              if (v60)
              {
                objc_msgSend_formatWithContext_(v60, v67, context, v68);
              }

              else
              {
                memset(&v130, 0, sizeof(v130));
              }

              sub_22114F414(&v131, &v130);
              v125 = 0;
              v100 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v60, v99, context, spec, 4, &v125);
              v18 = v125;
              objc_msgSend_appendString_(v36, v101, v100, v102);

              if (v18)
              {
                v19 = objc_msgSend_raiseErrorOrConvert_(context, v103, v18, v104);

                goto LABEL_84;
              }

              objc_msgSend_appendString_(v36, v103, @"::", v104);
            }
          }

          if (v53)
          {
            v105 = NSStringFromTSUCellCoord();
            objc_msgSend_appendString_(v36, v106, v105, v107);
          }

          else
          {
            objc_msgSend_appendString_(v36, v58, @"R", v59);
            if (v124)
            {
              if (v119)
              {
                v110 = &stru_2834BADA0;
              }

              else
              {
                v110 = @"[";
              }

              if (v119)
              {
                objc_msgSend_appendFormat_(v36, v108, @"%@%i%@", v109, v110, v124, &stru_2834BADA0);
              }

              else
              {
                objc_msgSend_appendFormat_(v36, v108, @"%@%i%@", v109, v110, v124, @"]");
              }
            }

            objc_msgSend_appendString_(v36, v108, @"C", v109);
            if (v121)
            {
              if (v117)
              {
                v113 = &stru_2834BADA0;
              }

              else
              {
                v113 = @"[";
              }

              if (v117)
              {
                objc_msgSend_appendFormat_(v36, v111, @"%@%i%@", v112, v113, v121, &stru_2834BADA0);
              }

              else
              {
                objc_msgSend_appendFormat_(v36, v111, @"%@%i%@", v112, v113, v121, @"]");
              }
            }
          }

          sub_221256020(&v131, &v130);
          v19 = objc_msgSend_stringValue_format_(TSCEStringValue, v114, v36, &v130);
LABEL_83:
          v18 = 0;
          goto LABEL_84;
        }

        v36 = objc_msgSend_functionName(spec, v33, v34, v35);
        v25 = v123;
        v72 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v76, 2, v36, 1, 1, v56, v57);
        v27 = v122;
        v75 = objc_msgSend_raiseErrorOrConvert_(context, v77, v72, v78);
      }

      v19 = v75;

      goto LABEL_83;
    }

    v36 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v36, v46, v47, v48) & 1) != 0 || objc_msgSend_nativeType(v36, v49, v50, v51) == 10)
    {
      v53 = 1;
LABEL_20:

      LOBYTE(v45) = v117;
      LOBYTE(v44) = v119;
      goto LABEL_22;
    }

    v126 = 0;
    v53 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v36, v52, context, spec, 3, &v126);
    v18 = v126;
    if (v36)
    {
      objc_msgSend_formatWithContext_(v36, v85, context, v86);
    }

    else
    {
      memset(&v130, 0, sizeof(v130));
    }

    sub_22114F414(&v131, &v130);
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = objc_msgSend_raiseErrorOrConvert_(context, v87, v18, v88);
LABEL_84:

    goto LABEL_85;
  }

  v18 = v28;
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v31);
LABEL_85:

LABEL_86:
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  return v19;
}

@end