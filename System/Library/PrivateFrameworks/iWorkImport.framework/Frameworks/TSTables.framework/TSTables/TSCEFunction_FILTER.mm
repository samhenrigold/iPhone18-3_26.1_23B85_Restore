@interface TSCEFunction_FILTER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FILTER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  contextCopy = context;
  v8 = **arguments;
  v154[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, v154);
  v10 = v154[0];
  v11 = *(*arguments + 8);
  v153 = v10;
  v13 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v11, v12, contextCopy, spec, 1, 0, &v153);
  v14 = v153;

  if (v14)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v15, v14, v17);
    goto LABEL_64;
  }

  v19 = objc_msgSend_dimensions(v9, v15, v16, v17);
  v23 = objc_msgSend_dimensions(v13, v20, v21, v22);
  v27 = v23;
  v28 = HIDWORD(v19);
  v29 = HIDWORD(v19) == HIDWORD(v23) && v23 == 1;
  v30 = v29;
  if (v29 || (v19 == v23 ? (v31 = HIDWORD(v23) == 1) : (v31 = 0), v31))
  {
    argumentsCopy = arguments;
    v129 = HIDWORD(v23);
    if (HIDWORD(v19) * v19)
    {
      v38 = HIDWORD(v23) * v23 == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38;
    v32 = objc_opt_new();
    v128 = objc_msgSend_gridKind(v9, v40, v41, v42);
    v127 = v19;
    v118 = v30;
    v133 = v39;
    if (v128 == 2)
    {
      v131 = v13;
      v152 = 0;
      v46 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v43, contextCopy, spec, 0, &v152);
      v14 = v152;
      v50 = objc_msgSend_calcEngine(contextCopy, v47, v48, v49);
      *&v136 = objc_msgSend_tableUID(v46, v51, v52, v53);
      *(&v136 + 1) = v54;
      v56 = objc_msgSend_tableResolverForTableUID_(v50, v54, &v136, v55);

      v62 = objc_msgSend_argumentSpecForIndex_(spec, v57, 0, v58);
      if (v46)
      {
        objc_msgSend_rangeRef(v46, v59, v60, v61);
      }

      else
      {
        v136 = 0u;
        v137 = 0u;
      }

      v64 = objc_msgSend_rangeContext(v62, v59, v60, v61);
      v66 = objc_msgSend_apparentRangeForRange_rangeContext_(v56, v65, &v136, v64);
      v123 = v67;
      v63 = v66;
      v125 = objc_msgSend_tableUID(v46, v67, v68, v69);
      v126 = v70;
      v117 = HIDWORD(v63);
      v124 = HIWORD(v63);

      v13 = v131;
    }

    else
    {
      v125 = 0;
      v126 = 0;
      v14 = 0;
      LOWORD(v117) = 0x7FFF;
      LODWORD(v63) = 0x7FFFFFFF;
      v123 = 0x7FFF7FFFFFFFLL;
      LOWORD(v124) = 0;
    }

    if (v133)
    {
      goto LABEL_58;
    }

    v134 = contextCopy;
    v146[0] = v134;
    v146[1] = spec;
    v147 = 0;
    v148[0] = 1;
    *(v148 + 7) = 0;
    v149 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v150 = 0;
    v151 = 0;
    v122 = contextCopy;
    if (v118)
    {
      v145 = 0;
      if (!v129)
      {
        v72 = v14;
LABEL_53:
        v14 = v72;
        goto LABEL_56;
      }

      v120 = v63;
      v85 = 0;
      v86 = 0;
      v132 = v13;
      while (1)
      {
        v74 = objc_msgSend_valueAtGridCoord_accessContext_(v13, v71, v86 << 32, v146);
        v144 = v14;
        v88 = objc_msgSend_asStrictBoolean_functionSpec_argumentIndex_outError_(v74, v87, v134, spec, 1, &v144);
        v77 = v144;

        if (v77)
        {
          break;
        }

        if (v88)
        {
          if (v128 == 2)
          {
            LOWORD(v136) = 1;
            DWORD2(v136) = v120 + v86;
            WORD6(v136) = v117;
            HIWORD(v136) = v124;
            LODWORD(v137) = v120 + v86;
            DWORD1(v137) = HIDWORD(v123);
            *(&v137 + 1) = v125;
            v138 = v126;
            v139 = 0;
            v143 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            objc_msgSend_addCalculatedPrecedent_(v134, v89, &v136, v90);
          }

          if (v127)
          {
            v91 = v127;
            v92 = v85;
            do
            {
              LODWORD(v145) = v92;
              v93 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v89, v92, v146);
              objc_msgSend_setValue_atCoord_(v32, v94, v93, &v145);

              ++v92;
              --v91;
            }

            while (v91);
          }

          ++HIDWORD(v145);
          contextCopy = v122;
        }

        v72 = 0;
        v14 = 0;
        ++v86;
        v85 += 0x100000000;
        v13 = v132;
        if (v86 == v129)
        {
          goto LABEL_53;
        }
      }

      v116 = objc_msgSend_raiseErrorOrConvert_(v134, v89, v77, v90);
    }

    else
    {
      v145 = 0;
      if (!v27)
      {
        v84 = v14;
LABEL_55:
        v14 = v84;
LABEL_56:

        if (objc_msgSend_count(v32, v95, v96, v97))
        {
          v98 = [TSCEDenseGrid alloc];
          v101 = objc_msgSend_initWithValueGrid_(v98, v99, v32, v100);
          v104 = objc_msgSend_gridValue_(TSCEGridValue, v102, v101, v103);
          goto LABEL_62;
        }

LABEL_58:
        if (argumentsCopy[1] - *argumentsCopy >= 0x11uLL)
        {
          v101 = *(*argumentsCopy + 16);
          if ((objc_msgSend_isTokenOrEmptyArg(v101, v105, v106, v107) & 1) == 0)
          {
            v113 = objc_msgSend_deepType_(v101, v108, contextCopy, v109);
            if (v113 != 10 && v113)
            {
              v104 = v101;
            }

            else
            {
              v104 = objc_msgSend_stringValue_(TSCEStringValue, v114, &stru_2834BADA0, v115);
            }

            goto LABEL_62;
          }
        }

        v101 = objc_msgSend_emptyArrayError(TSCEError, v43, v44, v45);
        v104 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v110, v101, v111);
LABEL_62:
        v18 = v104;

        goto LABEL_63;
      }

      v119 = v63;
      v73 = 0;
      v130 = v27;
      v132 = v13;
      while (1)
      {
        v74 = objc_msgSend_valueAtGridCoord_accessContext_(v13, v71, v73, v146);
        v135 = v14;
        v76 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v74, v75, v134, spec, 1, &v135);
        v77 = v135;

        if (v77)
        {
          break;
        }

        if (v76)
        {
          if (v128 == 2)
          {
            LOWORD(v136) = 1;
            DWORD2(v136) = v119;
            WORD6(v136) = v73;
            HIWORD(v136) = v124;
            LODWORD(v137) = v123;
            WORD2(v137) = v73;
            WORD3(v137) = HIWORD(v123);
            *(&v137 + 1) = v125;
            v138 = v126;
            v139 = 0;
            v143 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            objc_msgSend_addCalculatedPrecedent_(v134, v78, &v136, v79);
          }

          if (v28)
          {
            v80 = 0;
            v81 = v73;
            do
            {
              HIDWORD(v145) = v80;
              v82 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v78, v81, v146);
              objc_msgSend_setValue_atCoord_(v32, v83, v82, &v145);

              ++v80;
              v81 += 0x100000000;
            }

            while (v28 != v80);
          }

          LODWORD(v145) = v145 + 1;
        }

        v84 = 0;
        v14 = 0;
        ++v73;
        v13 = v132;
        if (v73 == v130)
        {
          goto LABEL_55;
        }
      }

      v116 = objc_msgSend_raiseErrorOrConvert_(v134, v78, v77, v79);
    }

    v18 = v116;

    v13 = v132;
    v14 = v77;
    goto LABEL_63;
  }

  v32 = objc_msgSend_functionName(spec, v24, v25, v26);
  v35 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v33, v32, v34);
  v18 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v36, v35, v37);

  v14 = 0;
LABEL_63:

LABEL_64:

  return v18;
}

@end