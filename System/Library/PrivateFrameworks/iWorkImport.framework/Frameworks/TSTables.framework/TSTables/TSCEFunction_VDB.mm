@interface TSCEFunction_VDB
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_VDB

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v154, spec, v8);

  v9 = **arguments;
  v153 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v153);
  v12 = v153;
  sub_2213188C0(v154, v11);
  v152._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v152._decimal.w[1] = v16;
  v17 = *(*arguments + 8);
  v151 = v12;
  v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v18, context, spec, 1, &v151);
  v20 = v151;

  sub_2213188C0(v154, v19);
  v150[1] = objc_msgSend_decimalRepresentation(v19, v21, v22, v23);
  v150[2] = v24;
  if (v20)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(context, v24, v20, v25);
    goto LABEL_29;
  }

  if (v155)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(context, v24, v155, v25);
    v20 = 0;
    goto LABEL_29;
  }

  v27 = *(*arguments + 16);
  v150[0] = 0;
  v129 = v17;
  v130 = v9;
  v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 2, v150);
  v30 = v27;
  v31 = v150[0];
  v132 = v29;
  v149._decimal.w[0] = objc_msgSend_decimalRepresentation(v29, v32, v33, v34);
  v149._decimal.w[1] = v35;
  v36 = *(*arguments + 24);
  v148 = v31;
  v128 = v36;
  v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v37, context, spec, 3, &v148);
  v39 = v148;

  v127 = v38;
  objc_msgSend_doubleRepresentation(v38, v40, v41, v42);
  v44 = v43;
  v45 = *(*arguments + 32);
  v147 = v39;
  v46 = v45;
  v48 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v47, context, spec, 4, &v147);
  v20 = v147;

  v131 = v48;
  v49 = v48;
  v50 = v132;
  v51 = v30;
  objc_msgSend_doubleRepresentation(v49, v52, v53, v54);
  if (v20)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(context, v55, v20, v56);
  }

  else
  {
    v58 = v57;
    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v70 = 0;
    }

    else
    {
      v59 = *(*arguments + 40);
      if ((objc_msgSend_isTokenOrEmptyArg(v59, v60, v61, v62) & 1) == 0)
      {
        v145 = 0;
        v64 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v59, v63, context, spec, 5, &v145);
        v20 = v145;
        v146._decimal.w[0] = objc_msgSend_decimalRepresentation(v64, v65, v66, v67);
        v146._decimal.w[1] = v68;
        if (v20)
        {
          v26 = objc_msgSend_raiseErrorOrConvert_(context, v68, v20, v69);

          v51 = v30;
          v50 = v132;
          goto LABEL_27;
        }

        v51 = v30;
      }

      if (*(arguments + 1) - *arguments < 0x31uLL)
      {
        v70 = 0;
        v50 = v132;
      }

      else
      {
        v71 = *(*arguments + 48);
        v50 = v132;
        if (objc_msgSend_isTokenOrEmptyArg(v71, v72, v73, v74))
        {
          v70 = 0;
        }

        else
        {
          v144 = 0;
          v70 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v71, v75, context, spec, 6, &v144);
          v76 = v144;
          if (v76)
          {
            v20 = v76;
            v26 = objc_msgSend_raiseErrorOrConvert_(context, v77, v76, v78);

            goto LABEL_27;
          }
        }
      }
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      v82 = objc_msgSend_functionName(spec, v79, v80, v81);
      v84 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v83, v82, 3, 5, 0, 1);
      v87 = objc_msgSend_raiseErrorOrConvert_(context, v85, v84, v86);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        v82 = objc_msgSend_functionName(spec, v88, v89, v90);
        v84 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v91, v82, 3, 4, 0, 1);
        v87 = objc_msgSend_raiseErrorOrConvert_(context, v92, v84, v93);
      }

      else
      {
        if (v44 <= v58)
        {
          v97 = v131;
          TSUDecimal::operator=();
          if (TSUDecimal::operator<())
          {
            if (!((v44 >= 1.0) | v70 & 1) && v44 != v58)
            {
              v156 = v152;
              TSUDecimal::operator-=();
              v143 = v156;
            }

            v99 = [TSCENumberValue alloc];
            v103 = sub_2213189D8(v154, v100, v101, v102);
            v105 = objc_msgSend_initWithDecimal_baseUnit_(v99, v104, &v143, v103);
          }

          else
          {
            v156 = v146;
            TSUDecimal::operator/=();
            v142 = v156;
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            if (v58 + 1.0 > 1.0)
            {
              v106 = 0;
              v107 = 0;
              v108 = ceil(v44);
              v109 = ceil(v58);
              v110 = 2;
              v111 = 1.0;
              v125 = v46;
              v126 = v51;
              do
              {
                if (v107)
                {
                  v107 = 1;
                }

                else
                {
                  v156 = v152;
                  TSUDecimal::operator-=();
                  TSUDecimal::operator-=();
                  v112 = v156;
                  TSUDecimal::operator=();
                  v156 = v149;
                  TSUDecimal::operator-=();
                  v113 = v156._decimal.w[1];
                  v114 = v156._decimal.w[0];
                  TSUDecimal::operator=();
                  v156 = __PAIR128__(v113, v114);
                  TSUDecimal::operator+=();
                  v136 = v156;
                  v156 = v112;
                  TSUDecimal::operator/=();
                  v137 = v156;
                  TSUDecimal::operator=();
                  v156 = v134;
                  TSUDecimal::operator-=();
                  v135 = v156;
                  v46 = v125;
                  v51 = v126;
                  v50 = v132;
                  TSUDecimal::operator=();
                  TSUDecimal::doubleValue(&v135);
                  v116 = v115;
                  TSUDecimal::doubleValue(&v133);
                  pow(v116, v117);
                  TSUDecimal::operator=();
                  v136 = v156;
                  v156 = v152;
                  TSUDecimal::operator*=();
                  TSUDecimal::operator*=();
                  v138 = v156;
                  TSUDecimal::operator=();
                  v156 = v134;
                  TSUDecimal::operator-=();
                  v135 = v156;
                  v156 = v152;
                  TSUDecimal::operator*=();
                  v139 = v156;
                  if (v106)
                  {
                    TSUDecimal::operator=();
                    v156 = v152;
                    TSUDecimal::operator-=();
                    v139 = v156;
                  }

                  v156 = v152;
                  TSUDecimal::operator-=();
                  TSUDecimal::operator-=();
                  v135 = v156;
                  if ((TSUDecimal::operator<=() & 1) == 0)
                  {
                    v156 = v152;
                    TSUDecimal::operator-=();
                    TSUDecimal::operator-=();
                    v138 = v156;
                    v106 = 1;
                  }

                  v118 = TSUDecimal::operator<=() | v70;
                  if ((v118 & 1) == 0)
                  {
                    v138 = v137;
                  }

                  v107 = v118 ^ 1;
                }

                if (v108 == v111)
                {
                  TSUDecimal::operator=();
                  v156 = v136;
                  TSUDecimal::operator*=();
                  v137 = v156;
                  v156 = v139;
                  TSUDecimal::operator+=();
                  v141 = v156;
                }

                if (v109 == v111)
                {
                  TSUDecimal::operator=();
                  v156 = v136;
                  TSUDecimal::operator*=();
                  v137 = v156;
                  v156 = v139;
                  TSUDecimal::operator+=();
                  v140 = v156;
                }

                TSUDecimal::operator+=();
                v111 = v110++;
              }

              while (v58 + 1.0 > v111);
            }

            v156 = v140;
            TSUDecimal::operator-=();
            v143 = v156;
            v97 = v131;
            v119 = [TSCENumberValue alloc];
            v123 = sub_2213189D8(v154, v120, v121, v122);
            v105 = objc_msgSend_initWithDecimal_baseUnit_(v119, v124, &v143, v123);
          }

          v26 = v105;
          v20 = 0;
          goto LABEL_28;
        }

        v82 = objc_msgSend_functionName(spec, v88, v89, v90);
        v84 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v94, v82, 4, 5, 1, 1);
        v87 = objc_msgSend_raiseErrorOrConvert_(context, v95, v84, v96);
      }
    }

    v26 = v87;

    v20 = 0;
  }

LABEL_27:
  v97 = v131;
LABEL_28:

  v17 = v129;
  v9 = v130;
LABEL_29:

  return v26;
}

@end