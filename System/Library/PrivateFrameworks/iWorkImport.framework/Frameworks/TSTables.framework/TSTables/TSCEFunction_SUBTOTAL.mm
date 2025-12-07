@interface TSCEFunction_SUBTOTAL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUBTOTAL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if ((objc_msgSend_deepType_(v8, v9, context, v10) & 0xFFFFFFFD) != 5)
  {
    v15 = objc_msgSend_functionName(spec, v11, v12, v13);
    v25 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v24, v15, 1);
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27);

    goto LABEL_5;
  }

  v142 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v11, context, spec, 0, &v142);
  v15 = v142;
  v19 = objc_msgSend_integer(v14, v16, v17, v18);

  if (v15)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v22);
LABEL_5:

    goto LABEL_6;
  }

  if (v19 >= 1 && v19 <= 0x6F && (v19 - 12) > 0x58)
  {
    v29 = *(*arguments + 8);
    v141 = 0;
    v117 = v29;
    v31 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v29, v30, context, spec, 1, 1, &v141);
    v32 = v141;
    v118 = v31;
    if (v32)
    {
      v15 = v32;
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v35);
LABEL_83:

      goto LABEL_5;
    }

    v116 = objc_msgSend_hidingActionMask(context, v33, v34, v35);
    if (v19 <= 0x64)
    {
      objc_msgSend_setHidingActionMask_(context, v41, 66, v42);
    }

    else
    {
      objc_msgSend_setHidingActionMask_(context, v41, 67, v42);
    }

    v140[0] = 0;
    v140[1] = 0;
    v139 = v140;
    v46 = objc_msgSend_count(v31, v43, v44, v45);
    contextCopy = context;
    v133[0] = contextCopy;
    v133[1] = spec;
    v134 = 0;
    v135[0] = 1;
    *(v135 + 7) = 0;
    v136 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v137 = 0;
    v138 = 0;
    if (v46)
    {
      for (i = 0; i != v46; ++i)
      {
        v50 = objc_msgSend_valueAtIndex_accessContext_(v31, v47, i, v133);
        if (objc_msgSend_isReferenceValue(v50, v51, v52, v53))
        {
          v132 = 0;
          v55 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v50, v54, contextCopy, spec, 1, &v132);
          v56 = v132;
          if (v56)
          {
            v15 = v56;
            v23 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v57, v56, v59);

            v31 = v118;
            goto LABEL_82;
          }

          v60 = objc_msgSend_tableUID(v55, v57, v58, v59);
          for (j = v140[0]; j; j = *j)
          {
            if (__PAIR128__(v61, v60) >= *(j + 2))
            {
              if (j[5] >= v61 && j[4] >= v60)
              {
                goto LABEL_30;
              }

              ++j;
            }
          }

          *v125 = objc_msgSend_tableUID(v55, v61, v62, v63);
          *&v125[8] = v65;
          sub_2216CDCE0(&v139, v125, v125);
          *v125 = objc_msgSend_tableUID(v55, v66, v67, v68);
          *&v125[8] = v69;
          objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v69, v125, v70);
          *v125 = 0;
          TSCERangeRef::TSCERangeRef(&v143, &v131);
          *&v125[8] = v143;
          v126 = 0;
          v130 = 0;
          v127 = 0;
          v128 = 0;
          v129 = 0;
          objc_msgSend_addCalculatedPrecedent_(contextCopy, v71, v125, v72);

          if (v19 >= 0x65)
          {
            *v125 = objc_msgSend_tableUID(v55, v73, v74, v75);
            *&v125[8] = v76;
            objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v76, v125, v77);
            *v125 = 0;
            TSCERangeRef::TSCERangeRef(&v143, &v124);
            *&v125[8] = v143;
            v126 = 0;
            v130 = 0;
            v127 = 0;
            v128 = 0;
            v129 = 0;
            objc_msgSend_addCalculatedPrecedent_(contextCopy, v78, v125, v79);
          }

LABEL_30:

          v31 = v118;
        }
      }
    }

    v23 = 0;
    v80 = 1;
    if (v19 > 100)
    {
      if (v19 > 105)
      {
        if (v19 <= 108)
        {
          if (v19 != 106)
          {
            if (v19 != 107)
            {
LABEL_42:
              v81 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 142, v48);
              v82 = sub_22121D2C8(contextCopy, v81, *(*arguments + 8), 1, 1, 0, 0, 0);
LABEL_67:
              v23 = v82;
              goto LABEL_68;
            }

LABEL_66:
            v100 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 140, v48);
            v82 = sub_22121D2C8(contextCopy, v100, *(*arguments + 8), 1, 0, 0, 0, 0);
            goto LABEL_67;
          }

LABEL_70:
          v103 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 113, v48);
          v23 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_PRODUCT, v104, v31, contextCopy, v103, 1);
          if (v117)
          {
            objc_msgSend_formatWithContext_(v117, v105, contextCopy, v106);
          }

          else
          {
            memset(&v121, 0, sizeof(v121));
          }

          TSCEFormat::TSCEFormat(v125, &v121);
          objc_msgSend_setFormat_(v23, v114, v125, v115);
          goto LABEL_68;
        }

        if (v19 != 109)
        {
          if (v19 != 110)
          {
LABEL_58:
            v85 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 162, v48);
            v87 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VARP, v86, v31, contextCopy, v85, 1);
LABEL_73:
            v23 = v87;
            goto LABEL_74;
          }

LABEL_69:
          v101 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 160, v48);
          v87 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VAR, v102, v31, contextCopy, v101, 1);
          goto LABEL_73;
        }

LABEL_72:
        v107 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 168, v48);
        v87 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_SUM, v108, v31, contextCopy, v107, 1);
        goto LABEL_73;
      }

      if (v19 > 102)
      {
        if (v19 != 103)
        {
          if (v19 != 104)
          {
LABEL_51:
            v83 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 88, v48);
            v82 = objc_msgSend_extremum_functionSpec_arg_index_isMax_isA_(TSCEFunction_MAX, v84, contextCopy, v83, *(*arguments + 8), 1, 0, 0);
            goto LABEL_67;
          }

LABEL_63:
          v92 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 84, v48);
          v82 = objc_msgSend_extremum_functionSpec_arg_index_isMax_isA_(TSCEFunction_MAX, v93, contextCopy, v92, *(*arguments + 8), 1, 1, 0);
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      if (v19 != 101)
      {
LABEL_62:
        v88 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 30, v48);
        v23 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v89, v31, contextCopy, v88, 1, 0);
        TSCEFormat::TSCEFormat(&v123, 256);
        TSCEFormat::TSCEFormat(v125, &v123);
        objc_msgSend_setFormat_(v23, v90, v125, v91);
LABEL_68:
        v80 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      if (v19 > 5)
      {
        if (v19 <= 8)
        {
          if (v19 != 6)
          {
            if (v19 != 7)
            {
              goto LABEL_42;
            }

            goto LABEL_66;
          }

          goto LABEL_70;
        }

        if (v19 != 9)
        {
          if (v19 != 10)
          {
            if (v19 != 11)
            {
LABEL_74:
              objc_msgSend_setHidingActionMask_(contextCopy, v47, v116, v48);
              if (!v23)
              {
                v23 = objc_msgSend_nilValue(TSCENilValue, v109, v110, v111);
              }

              if (v80)
              {
                if (v31)
                {
                  objc_msgSend_formatWithContext_(v31, v109, contextCopy, v111);
                }

                else
                {
                  memset(&v120, 0, sizeof(v120));
                }

                TSCEFormat::TSCEFormat(v125, &v120);
                objc_msgSend_setFormat_(v23, v112, v125, v113);
              }

              v15 = 0;
LABEL_82:

              sub_2210BC9F8(&v139, v140[0]);
              goto LABEL_83;
            }

            goto LABEL_58;
          }

          goto LABEL_69;
        }

        goto LABEL_72;
      }

      if (v19 > 2)
      {
        if (v19 != 3)
        {
          if (v19 != 4)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_64:
        v94 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 31, v48);
        v23 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v95, v31, contextCopy, v94, 1, 1);
        TSCEFormat::TSCEFormat(&v122, 256);
        TSCEFormat::TSCEFormat(v125, &v122);
        objc_msgSend_setFormat_(v23, v96, v125, v97);
        goto LABEL_68;
      }

      if (v19 != 1)
      {
        goto LABEL_62;
      }
    }

    v98 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v47, 15, v48);
    v87 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_(TSCEFunction_AVERAGE, v99, contextCopy, v98, v31, 1);
    goto LABEL_73;
  }

  v36 = objc_msgSend_functionName(spec, v20, v21, v22);
  v38 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v37, v36, 1);
  v23 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v40);

LABEL_6:

  return v23;
}

@end