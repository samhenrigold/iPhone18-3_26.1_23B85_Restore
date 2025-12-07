@interface TSCEFunction_ROMAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ROMAN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v15 = 0;
  }

  else
  {
    v10 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v10, v11, v12, v13))
    {
      v15 = 0;
LABEL_4:

      goto LABEL_6;
    }

    v142 = 0;
    v34 = objc_msgSend_deepType_outError_(v10, v14, context, &v142);
    v35 = v142;
    v37 = v35;
    if (v34 == 2)
    {
      v141 = v35;
      v38 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v10, v36, context, spec, 1, &v141);
      v17 = v141;

      if (!v17)
      {
        if (v38)
        {
          v15 = 0;
        }

        else
        {
          v15 = 4;
        }

        goto LABEL_4;
      }

      v41 = objc_msgSend_raiseErrorOrConvert_(context, v39, v17, v40);
      goto LABEL_13;
    }

    v140 = v35;
    v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v36, context, spec, 1, &v140);
    v17 = v140;

    if (v17)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v48, v17, v50);
LABEL_29:

      goto LABEL_30;
    }

    if (objc_msgSend_hasUnits(v47, v48, v49, v50))
    {
      v55 = objc_msgSend_functionName(spec, v52, v53, v54);
      v57 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v56, v55, 2);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v58, v57, v59);

      goto LABEL_29;
    }

    v137._decimal.w[0] = objc_msgSend_decimalRepresentation(v47, v52, v53, v54);
    v137._decimal.w[1] = v63;
    if (TSUDecimal::isNegative(&v137))
    {

LABEL_103:
      v17 = objc_msgSend_functionName(spec, v8, v64, v65);
      v10 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v88, 2, v17, 1, 0.0);
      v41 = objc_msgSend_raiseErrorOrConvert_(context, v89, v10, v90);
LABEL_13:
      v33 = v41;
LABEL_30:

      goto LABEL_279;
    }

    v15 = TSUDecimal::truncateWithRounding(&v137);

    if (v15 < 0)
    {
      goto LABEL_103;
    }
  }

LABEL_6:
  v139 = 0;
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v8, context, spec, 0, &v139);
  v17 = v139;
  v137._decimal.w[0] = objc_msgSend_decimalRepresentation(v16, v18, v19, v20);
  v137._decimal.w[1] = v21;
  TSUDecimal::truncateToDoubleWithRounding(&v137);
  v23 = v22;

  if (!v17)
  {
    if (v15 >= 5)
    {
      v28 = objc_msgSend_functionName(spec, v24, v25, v26);
      v30 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v29, 2, v28, 1, 4.0);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);

      v17 = v28;
      goto LABEL_279;
    }

    v42 = objc_msgSend_string(MEMORY[0x277CCACA8], v24, v25, v26);
    v45 = v42;
    if (v15 <= 1)
    {
      if (v15)
      {
        if (v23 >= 1000.0)
        {
          do
          {
            v46 = objc_msgSend_stringByAppendingString_(v45, v43, @"M", v44);

            v23 = v23 + -1000.0;
            v45 = v46;
          }

          while (v23 >= 1000.0);
        }

        else
        {
          v46 = v42;
        }

        if (v23 >= 950.0)
        {
          v68 = objc_msgSend_stringByAppendingString_(v46, v43, @"LM", v44);
          v69 = -950.0;
        }

        else
        {
          if (v23 < 900.0)
          {
            goto LABEL_71;
          }

          v68 = objc_msgSend_stringByAppendingString_(v46, v43, @"CM", v44);
          v69 = -900.0;
        }

        v23 = v23 + v69;
        v46 = v68;
LABEL_71:
        if (v23 >= 500.0)
        {
          v77 = objc_msgSend_stringByAppendingString_(v46, v43, @"D", v44);

          v23 = v23 + -500.0;
          v46 = v77;
        }

        if (v23 >= 450.0)
        {
          v78 = objc_msgSend_stringByAppendingString_(v46, v43, @"LD", v44);
          v80 = -450.0;
        }

        else
        {
          if (v23 < 400.0)
          {
            v78 = v46;
            goto LABEL_117;
          }

          v78 = objc_msgSend_stringByAppendingString_(v46, v43, @"CD", v44);
          v80 = -400.0;
        }

        v23 = v23 + v80;
LABEL_117:
        if (v23 >= 100.0)
        {
          do
          {
            v94 = objc_msgSend_stringByAppendingString_(v78, v43, @"C", v44);

            v23 = v23 + -100.0;
            v78 = v94;
          }

          while (v23 >= 100.0);
        }

        else
        {
          v94 = v78;
        }

        if (v23 >= 95.0)
        {
          v95 = objc_msgSend_stringByAppendingString_(v94, v43, @"VC", v44);
          v96 = -95.0;
        }

        else
        {
          if (v23 < 90.0)
          {
            goto LABEL_125;
          }

          v95 = objc_msgSend_stringByAppendingString_(v94, v43, @"XC", v44);
          v96 = -90.0;
        }

        v23 = v23 + v96;
        v94 = v95;
LABEL_125:
        if (v23 >= 50.0)
        {
          v97 = objc_msgSend_stringByAppendingString_(v94, v43, @"L", v44);

          v23 = v23 + -50.0;
          v94 = v97;
        }

        if (v23 >= 45.0)
        {
          v98 = objc_msgSend_stringByAppendingString_(v94, v43, @"VL", v44);
          v99 = -45.0;
        }

        else
        {
          if (v23 < 40.0)
          {
            v98 = v94;
            goto LABEL_134;
          }

          v98 = objc_msgSend_stringByAppendingString_(v94, v43, @"XL", v44);
          v99 = -40.0;
        }

        v23 = v23 + v99;
LABEL_134:
        if (v23 >= 10.0)
        {
          do
          {
            v84 = objc_msgSend_stringByAppendingString_(v98, v43, @"X", v44);

            v23 = v23 + -10.0;
            v98 = v84;
          }

          while (v23 >= 10.0);
        }

        else
        {
          v84 = v98;
        }

        if (v23 >= 9.0)
        {
          v100 = objc_msgSend_stringByAppendingString_(v84, v43, @"IX", v44);

          v23 = v23 + -9.0;
          v84 = v100;
        }

        if (v23 >= 5.0)
        {
          v101 = objc_msgSend_stringByAppendingString_(v84, v43, @"V", v44);

          v23 = v23 + -5.0;
          v84 = v101;
        }

        if (v23 >= 4.0)
        {
          v102 = objc_msgSend_stringByAppendingString_(v84, v43, @"IV", v44);

          v23 = v23 + -4.0;
          v84 = v102;
        }

        if (v23 >= 1.0)
        {
          do
          {
            v17 = objc_msgSend_stringByAppendingString_(v84, v43, @"I", v44);

            v23 = v23 + -1.0;
            v84 = v17;
          }

          while (v23 >= 1.0);
          goto LABEL_274;
        }

LABEL_273:
        v17 = v84;
        goto LABEL_274;
      }

      if (v23 >= 1000.0)
      {
        do
        {
          v61 = objc_msgSend_stringByAppendingString_(v45, v43, @"M", v44);

          v23 = v23 + -1000.0;
          v45 = v61;
        }

        while (v23 >= 1000.0);
      }

      else
      {
        v61 = v42;
      }

      if (v23 >= 900.0)
      {
        v72 = objc_msgSend_stringByAppendingString_(v61, v43, @"CM", v44);

        v23 = v23 + -900.0;
        v61 = v72;
      }

      if (v23 >= 500.0)
      {
        v73 = objc_msgSend_stringByAppendingString_(v61, v43, @"D", v44);

        v23 = v23 + -500.0;
        v61 = v73;
      }

      if (v23 >= 400.0)
      {
        v74 = objc_msgSend_stringByAppendingString_(v61, v43, @"CD", v44);

        v23 = v23 + -400.0;
      }

      else
      {
        v74 = v61;
      }

      if (v23 >= 100.0)
      {
        do
        {
          v79 = objc_msgSend_stringByAppendingString_(v74, v43, @"C", v44);

          v23 = v23 + -100.0;
          v74 = v79;
        }

        while (v23 >= 100.0);
      }

      else
      {
        v79 = v74;
      }

      if (v23 >= 90.0)
      {
        v81 = objc_msgSend_stringByAppendingString_(v79, v43, @"XC", v44);

        v23 = v23 + -90.0;
        v79 = v81;
      }

      if (v23 >= 50.0)
      {
        v82 = objc_msgSend_stringByAppendingString_(v79, v43, @"L", v44);

        v23 = v23 + -50.0;
        v79 = v82;
      }

      if (v23 >= 40.0)
      {
        v83 = objc_msgSend_stringByAppendingString_(v79, v43, @"XL", v44);

        v23 = v23 + -40.0;
      }

      else
      {
        v83 = v79;
      }

      if (v23 >= 10.0)
      {
        do
        {
          v84 = objc_msgSend_stringByAppendingString_(v83, v43, @"X", v44);

          v23 = v23 + -10.0;
          v83 = v84;
        }

        while (v23 >= 10.0);
      }

      else
      {
        v84 = v83;
      }

      if (v23 >= 9.0)
      {
        v85 = objc_msgSend_stringByAppendingString_(v84, v43, @"IX", v44);

        v23 = v23 + -9.0;
        v84 = v85;
      }

      if (v23 >= 5.0)
      {
        v86 = objc_msgSend_stringByAppendingString_(v84, v43, @"V", v44);

        v23 = v23 + -5.0;
        v84 = v86;
      }

      if (v23 >= 4.0)
      {
        v87 = objc_msgSend_stringByAppendingString_(v84, v43, @"IV", v44);

        v23 = v23 + -4.0;
        v84 = v87;
      }

      if (v23 < 1.0)
      {
        goto LABEL_273;
      }

      do
      {
        v17 = objc_msgSend_stringByAppendingString_(v84, v43, @"I", v44);

        v23 = v23 + -1.0;
        v84 = v17;
      }

      while (v23 >= 1.0);
LABEL_274:
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v43, context, v44);
      }

      else
      {
        v137 = 0;
        v138 = 0u;
      }

      v27 = objc_msgSend_stringValue_format_(TSCEStringValue, v43, v17, &v137);
      goto LABEL_278;
    }

    if (v15 != 2)
    {
      if (v15 == 3)
      {
        if (v23 >= 1000.0)
        {
          do
          {
            v51 = objc_msgSend_stringByAppendingString_(v45, v43, @"M", v44);

            v23 = v23 + -1000.0;
            v45 = v51;
          }

          while (v23 >= 1000.0);
        }

        else
        {
          v51 = v42;
        }

        if (v23 >= 995.0)
        {
          v70 = objc_msgSend_stringByAppendingString_(v51, v43, @"VM", v44);
          v71 = -995.0;
        }

        else if (v23 >= 990.0)
        {
          v70 = objc_msgSend_stringByAppendingString_(v51, v43, @"XM", v44);
          v71 = -990.0;
        }

        else if (v23 >= 950.0)
        {
          v70 = objc_msgSend_stringByAppendingString_(v51, v43, @"LM", v44);
          v71 = -950.0;
        }

        else
        {
          if (v23 < 900.0)
          {
            goto LABEL_149;
          }

          v70 = objc_msgSend_stringByAppendingString_(v51, v43, @"CM", v44);
          v71 = -900.0;
        }

        v23 = v23 + v71;
        v51 = v70;
LABEL_149:
        if (v23 >= 500.0)
        {
          v103 = objc_msgSend_stringByAppendingString_(v51, v43, @"D", v44);

          v23 = v23 + -500.0;
          v51 = v103;
        }

        if (v23 >= 495.0)
        {
          v104 = objc_msgSend_stringByAppendingString_(v51, v43, @"VD", v44);
          v105 = -495.0;
        }

        else if (v23 >= 490.0)
        {
          v104 = objc_msgSend_stringByAppendingString_(v51, v43, @"XD", v44);
          v105 = -490.0;
        }

        else if (v23 >= 450.0)
        {
          v104 = objc_msgSend_stringByAppendingString_(v51, v43, @"LD", v44);
          v105 = -450.0;
        }

        else
        {
          if (v23 < 400.0)
          {
            v104 = v51;
            goto LABEL_208;
          }

          v104 = objc_msgSend_stringByAppendingString_(v51, v43, @"CD", v44);
          v105 = -400.0;
        }

        v23 = v23 + v105;
LABEL_208:
        if (v23 >= 100.0)
        {
          do
          {
            v118 = objc_msgSend_stringByAppendingString_(v104, v43, @"C", v44);

            v23 = v23 + -100.0;
            v104 = v118;
          }

          while (v23 >= 100.0);
        }

        else
        {
          v118 = v104;
        }

        if (v23 >= 99.0)
        {
          v119 = objc_msgSend_stringByAppendingString_(v118, v43, @"IC", v44);
          v120 = -99.0;
        }

        else if (v23 >= 95.0)
        {
          v119 = objc_msgSend_stringByAppendingString_(v118, v43, @"VC", v44);
          v120 = -95.0;
        }

        else
        {
          if (v23 < 90.0)
          {
            goto LABEL_218;
          }

          v119 = objc_msgSend_stringByAppendingString_(v118, v43, @"XC", v44);
          v120 = -90.0;
        }

        v23 = v23 + v120;
        v118 = v119;
LABEL_218:
        if (v23 >= 50.0)
        {
          v121 = objc_msgSend_stringByAppendingString_(v118, v43, @"L", v44);

          v23 = v23 + -50.0;
          v118 = v121;
        }

        if (v23 >= 49.0)
        {
          v122 = objc_msgSend_stringByAppendingString_(v118, v43, @"IL", v44);
          v123 = -49.0;
        }

        else if (v23 >= 45.0)
        {
          v122 = objc_msgSend_stringByAppendingString_(v118, v43, @"VL", v44);
          v123 = -45.0;
        }

        else
        {
          if (v23 < 40.0)
          {
            v122 = v118;
LABEL_228:
            if (v23 >= 10.0)
            {
              do
              {
                v84 = objc_msgSend_stringByAppendingString_(v122, v43, @"X", v44);

                v23 = v23 + -10.0;
                v122 = v84;
              }

              while (v23 >= 10.0);
            }

            else
            {
              v84 = v122;
            }

            if (v23 >= 9.0)
            {
              v124 = objc_msgSend_stringByAppendingString_(v84, v43, @"IX", v44);

              v23 = v23 + -9.0;
              v84 = v124;
            }

            if (v23 >= 5.0)
            {
              v125 = objc_msgSend_stringByAppendingString_(v84, v43, @"V", v44);

              v23 = v23 + -5.0;
              v84 = v125;
            }

            if (v23 >= 4.0)
            {
              v126 = objc_msgSend_stringByAppendingString_(v84, v43, @"IV", v44);

              v23 = v23 + -4.0;
              v84 = v126;
            }

            if (v23 < 1.0)
            {
              goto LABEL_273;
            }

            do
            {
              v17 = objc_msgSend_stringByAppendingString_(v84, v43, @"I", v44);

              v23 = v23 + -1.0;
              v84 = v17;
            }

            while (v23 >= 1.0);
            goto LABEL_274;
          }

          v122 = objc_msgSend_stringByAppendingString_(v118, v43, @"XL", v44);
          v123 = -40.0;
        }

        v23 = v23 + v123;
        goto LABEL_228;
      }

      if (v23 >= 1000.0)
      {
        do
        {
          v60 = objc_msgSend_stringByAppendingString_(v45, v43, @"M", v44);

          v23 = v23 + -1000.0;
          v45 = v60;
        }

        while (v23 >= 1000.0);
      }

      else
      {
        v60 = v42;
      }

      if (v23 >= 999.0)
      {
        v66 = objc_msgSend_stringByAppendingString_(v60, v43, @"IM", v44);
        v67 = -999.0;
      }

      else if (v23 >= 995.0)
      {
        v66 = objc_msgSend_stringByAppendingString_(v60, v43, @"VM", v44);
        v67 = -995.0;
      }

      else if (v23 >= 990.0)
      {
        v66 = objc_msgSend_stringByAppendingString_(v60, v43, @"XM", v44);
        v67 = -990.0;
      }

      else if (v23 >= 950.0)
      {
        v66 = objc_msgSend_stringByAppendingString_(v60, v43, @"LM", v44);
        v67 = -950.0;
      }

      else
      {
        if (v23 < 900.0)
        {
          goto LABEL_195;
        }

        v66 = objc_msgSend_stringByAppendingString_(v60, v43, @"CM", v44);
        v67 = -900.0;
      }

      v23 = v23 + v67;
      v60 = v66;
LABEL_195:
      if (v23 >= 500.0)
      {
        v115 = objc_msgSend_stringByAppendingString_(v60, v43, @"D", v44);

        v23 = v23 + -500.0;
        v60 = v115;
      }

      if (v23 >= 499.0)
      {
        v116 = objc_msgSend_stringByAppendingString_(v60, v43, @"ID", v44);
        v117 = -499.0;
      }

      else if (v23 >= 495.0)
      {
        v116 = objc_msgSend_stringByAppendingString_(v60, v43, @"VD", v44);
        v117 = -495.0;
      }

      else if (v23 >= 490.0)
      {
        v116 = objc_msgSend_stringByAppendingString_(v60, v43, @"XD", v44);
        v117 = -490.0;
      }

      else if (v23 >= 450.0)
      {
        v116 = objc_msgSend_stringByAppendingString_(v60, v43, @"LD", v44);
        v117 = -450.0;
      }

      else
      {
        if (v23 < 400.0)
        {
          v116 = v60;
          goto LABEL_243;
        }

        v116 = objc_msgSend_stringByAppendingString_(v60, v43, @"CD", v44);
        v117 = -400.0;
      }

      v23 = v23 + v117;
LABEL_243:
      if (v23 >= 100.0)
      {
        do
        {
          v127 = objc_msgSend_stringByAppendingString_(v116, v43, @"C", v44);

          v23 = v23 + -100.0;
          v116 = v127;
        }

        while (v23 >= 100.0);
      }

      else
      {
        v127 = v116;
      }

      if (v23 >= 99.0)
      {
        v128 = objc_msgSend_stringByAppendingString_(v127, v43, @"IC", v44);
        v129 = -99.0;
      }

      else if (v23 >= 95.0)
      {
        v128 = objc_msgSend_stringByAppendingString_(v127, v43, @"VC", v44);
        v129 = -95.0;
      }

      else
      {
        if (v23 < 90.0)
        {
          goto LABEL_253;
        }

        v128 = objc_msgSend_stringByAppendingString_(v127, v43, @"XC", v44);
        v129 = -90.0;
      }

      v23 = v23 + v129;
      v127 = v128;
LABEL_253:
      if (v23 >= 50.0)
      {
        v130 = objc_msgSend_stringByAppendingString_(v127, v43, @"L", v44);

        v23 = v23 + -50.0;
        v127 = v130;
      }

      if (v23 >= 49.0)
      {
        v131 = objc_msgSend_stringByAppendingString_(v127, v43, @"IL", v44);
        v132 = -49.0;
      }

      else if (v23 >= 45.0)
      {
        v131 = objc_msgSend_stringByAppendingString_(v127, v43, @"VL", v44);
        v132 = -45.0;
      }

      else
      {
        if (v23 < 40.0)
        {
          v131 = v127;
LABEL_263:
          if (v23 >= 10.0)
          {
            do
            {
              v84 = objc_msgSend_stringByAppendingString_(v131, v43, @"X", v44);

              v23 = v23 + -10.0;
              v131 = v84;
            }

            while (v23 >= 10.0);
          }

          else
          {
            v84 = v131;
          }

          if (v23 >= 9.0)
          {
            v133 = objc_msgSend_stringByAppendingString_(v84, v43, @"IX", v44);

            v23 = v23 + -9.0;
            v84 = v133;
          }

          if (v23 >= 5.0)
          {
            v134 = objc_msgSend_stringByAppendingString_(v84, v43, @"V", v44);

            v23 = v23 + -5.0;
            v84 = v134;
          }

          if (v23 >= 4.0)
          {
            v135 = objc_msgSend_stringByAppendingString_(v84, v43, @"IV", v44);

            v23 = v23 + -4.0;
            v84 = v135;
          }

          if (v23 < 1.0)
          {
            goto LABEL_273;
          }

          do
          {
            v17 = objc_msgSend_stringByAppendingString_(v84, v43, @"I", v44);

            v23 = v23 + -1.0;
            v84 = v17;
          }

          while (v23 >= 1.0);
          goto LABEL_274;
        }

        v131 = objc_msgSend_stringByAppendingString_(v127, v43, @"XL", v44);
        v132 = -40.0;
      }

      v23 = v23 + v132;
      goto LABEL_263;
    }

    if (v23 >= 1000.0)
    {
      do
      {
        v62 = objc_msgSend_stringByAppendingString_(v45, v43, @"M", v44);

        v23 = v23 + -1000.0;
        v45 = v62;
      }

      while (v23 >= 1000.0);
    }

    else
    {
      v62 = v42;
    }

    if (v23 >= 990.0)
    {
      v75 = objc_msgSend_stringByAppendingString_(v62, v43, @"XM", v44);
      v76 = -990.0;
    }

    else if (v23 >= 950.0)
    {
      v75 = objc_msgSend_stringByAppendingString_(v62, v43, @"LM", v44);
      v76 = -950.0;
    }

    else
    {
      if (v23 < 900.0)
      {
        goto LABEL_108;
      }

      v75 = objc_msgSend_stringByAppendingString_(v62, v43, @"CM", v44);
      v76 = -900.0;
    }

    v23 = v23 + v76;
    v62 = v75;
LABEL_108:
    if (v23 >= 500.0)
    {
      v91 = objc_msgSend_stringByAppendingString_(v62, v43, @"D", v44);

      v23 = v23 + -500.0;
      v62 = v91;
    }

    if (v23 >= 490.0)
    {
      v92 = objc_msgSend_stringByAppendingString_(v62, v43, @"XD", v44);
      v93 = -490.0;
    }

    else if (v23 >= 450.0)
    {
      v92 = objc_msgSend_stringByAppendingString_(v62, v43, @"LD", v44);
      v93 = -450.0;
    }

    else
    {
      if (v23 < 400.0)
      {
        v92 = v62;
        goto LABEL_160;
      }

      v92 = objc_msgSend_stringByAppendingString_(v62, v43, @"CD", v44);
      v93 = -400.0;
    }

    v23 = v23 + v93;
LABEL_160:
    if (v23 >= 100.0)
    {
      do
      {
        v106 = objc_msgSend_stringByAppendingString_(v92, v43, @"C", v44);

        v23 = v23 + -100.0;
        v92 = v106;
      }

      while (v23 >= 100.0);
    }

    else
    {
      v106 = v92;
    }

    if (v23 >= 99.0)
    {
      v107 = objc_msgSend_stringByAppendingString_(v106, v43, @"IC", v44);
      v108 = -99.0;
    }

    else if (v23 >= 95.0)
    {
      v107 = objc_msgSend_stringByAppendingString_(v106, v43, @"VC", v44);
      v108 = -95.0;
    }

    else
    {
      if (v23 < 90.0)
      {
        goto LABEL_170;
      }

      v107 = objc_msgSend_stringByAppendingString_(v106, v43, @"XC", v44);
      v108 = -90.0;
    }

    v23 = v23 + v108;
    v106 = v107;
LABEL_170:
    if (v23 >= 50.0)
    {
      v109 = objc_msgSend_stringByAppendingString_(v106, v43, @"L", v44);

      v23 = v23 + -50.0;
      v106 = v109;
    }

    if (v23 >= 49.0)
    {
      v110 = objc_msgSend_stringByAppendingString_(v106, v43, @"IL", v44);
      v111 = -49.0;
    }

    else if (v23 >= 45.0)
    {
      v110 = objc_msgSend_stringByAppendingString_(v106, v43, @"VL", v44);
      v111 = -45.0;
    }

    else
    {
      if (v23 < 40.0)
      {
        v110 = v106;
LABEL_181:
        if (v23 >= 10.0)
        {
          do
          {
            v84 = objc_msgSend_stringByAppendingString_(v110, v43, @"X", v44);

            v23 = v23 + -10.0;
            v110 = v84;
          }

          while (v23 >= 10.0);
        }

        else
        {
          v84 = v110;
        }

        if (v23 >= 9.0)
        {
          v112 = objc_msgSend_stringByAppendingString_(v84, v43, @"IX", v44);

          v23 = v23 + -9.0;
          v84 = v112;
        }

        if (v23 >= 5.0)
        {
          v113 = objc_msgSend_stringByAppendingString_(v84, v43, @"V", v44);

          v23 = v23 + -5.0;
          v84 = v113;
        }

        if (v23 >= 4.0)
        {
          v114 = objc_msgSend_stringByAppendingString_(v84, v43, @"IV", v44);

          v23 = v23 + -4.0;
          v84 = v114;
        }

        if (v23 < 1.0)
        {
          goto LABEL_273;
        }

        do
        {
          v17 = objc_msgSend_stringByAppendingString_(v84, v43, @"I", v44);

          v23 = v23 + -1.0;
          v84 = v17;
        }

        while (v23 >= 1.0);
        goto LABEL_274;
      }

      v110 = objc_msgSend_stringByAppendingString_(v106, v43, @"XL", v44);
      v111 = -40.0;
    }

    v23 = v23 + v111;
    goto LABEL_181;
  }

  v27 = objc_msgSend_raiseErrorOrConvert_(context, v24, v17, v26);
LABEL_278:
  v33 = v27;
LABEL_279:

  return v33;
}

@end