@interface TSCEFunction_COLUMN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COLUMN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = MEMORY[0x277D80680];
  v9 = objc_msgSend_locale(context, a2, context, spec);
  v11 = objc_msgSend_defaultFormatWithFormatType_locale_(v8, v10, 256, v9);

  if (*(arguments + 1) == *arguments)
  {
    objc_msgSend_containingCell(context, v12, v13, v14);
    goto LABEL_6;
  }

  v15 = **arguments;
  if (objc_msgSend_isTokenOrEmptyArg(v15, v16, v17, v18))
  {
    objc_msgSend_containingCell(context, v19, v20, v21);
LABEL_4:

LABEL_6:
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v86, v11, 0);
    v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v22, &v89, &v86);
    goto LABEL_27;
  }

  v90 = 0;
  v24 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v15, v19, context, spec, 0, &v90);
  v28 = v90;
  if (!v28)
  {
    if (objc_msgSend_isNil(v24, v25, v26, v27))
    {
      v32 = objc_msgSend_functionName(spec, v29, v30, v31);
      v35 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v33, v32, v34);
      v38 = objc_msgSend_raiseErrorOrConvert_(context, v36, v35, v37);
LABEL_11:
      v23 = v38;
LABEL_25:

      goto LABEL_26;
    }

    v39 = objc_msgSend_calcEngine(context, v29, v30, v31);
    v86._tskFormat = objc_msgSend_tableUID(v24, v40, v41, v42);
    *&v86._formatType = v43;
    v32 = objc_msgSend_tableResolverForTableUID_(v39, v43, &v86, v44);

    v89 = 0uLL;
    v89.i64[0] = objc_msgSend_range(v24, v45, v46, v47);
    v89.i64[1] = v48;
    if (v32)
    {
      objc_msgSend_tableRangeCoordinate(v32, v48, v49, v50);
      v54 = WORD2(v51);
      v55.i64[0] = 0xFFFFFFFFLL;
      v55.i64[1] = 0xFFFFFFFFLL;
      v56.i64[0] = 0xFFFF00000000;
      v56.i64[1] = 0xFFFF00000000;
      v57 = vmovn_s64(vceqq_s64(vandq_s8(v89, v56), vdupq_n_s64(0x7FFF00000000uLL)));
      v58 = vuzp1_s16(v57, v57);
      v58.i32[1] = vuzp1_s16(v58, vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v89, v55), vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1];
      if (vminv_u16(v58))
      {
        if (objc_msgSend_isPivotTable(v32, v51, v52, v53))
        {
          v62 = objc_msgSend_viewBodyRangeCoordinate(v32, v59, v60, v61);
        }

        else
        {
          v63 = objc_msgSend_argumentSpecForIndex_(spec, v59, 0, v61);
          v67 = objc_msgSend_rangeContext(v63, v64, v65, v66);
          v62 = objc_msgSend_apparentRangeForRange_rangeContext_(v32, v68, &v89, v67);
        }

        v89.i64[0] = v62;
        v89.i64[1] = v51;
      }

      if (objc_msgSend_isPivotTable(v32, v51, v52, v53))
      {
        objc_msgSend_viewTableRangeCoordinate(v32, v48, v49, v50);
        v54 = WORD2(v48);
      }
    }

    else
    {
      v54 = 0x7FFF;
    }

    v69 = v89.u16[2];
    if (v89.u16[6] - v89.u16[2] + 1 >= 2)
    {
      v35 = objc_opt_new();
      v88 = 0;
      if (v69 <= v89.u16[6])
      {
        do
        {
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(&v86, v11, 0);
          v71 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v70, v87, &v86);
          objc_msgSend_setValue_atCoord_(v35, v72, v71, &v88);
          LODWORD(v88) = v88 + 1;

          ++v69;
        }

        while (v89.u16[6] >= v69);
      }

      v73 = [TSCEDenseGrid alloc];
      v76 = objc_msgSend_initWithValueGrid_(v73, v74, v35, v75);
      v23 = objc_msgSend_gridValue_(TSCEGridValue, v77, v76, v78);

      goto LABEL_25;
    }

    v80 = v89.i64[0] & 0xFFFF00000000;
    v81 = v89.i64[1] & 0xFFFF00000000;
    if ((v89.u32[0] != 0x7FFFFFFFLL || v80 == 0x7FFF00000000 || v81 == 0x7FFF00000000) && v89.u32[0] != 0x7FFFFFFFLL && v80 == 0x7FFF00000000 && v81 == 0x7FFF00000000 && v89.u32[2] != 0x7FFFFFFFLL)
    {
      if (v24)
      {
LABEL_35:
        objc_msgSend_rangeRef(v24, v48, v49, v50);
LABEL_44:
        v82 = objc_msgSend_containingTable(context, v48, v49, v50, *&v86._tskFormat, *&v86._durationFormat);
        v35 = objc_msgSend_errorForInvalidReference_orString_contextEntityUID_(TSCEError, v83, &v86, 0, v82);
        v38 = objc_msgSend_raiseErrorOrConvert_(context, v84, v35, v85);
        goto LABEL_11;
      }
    }

    else
    {
      if (v89.u16[2] <= v54)
      {

        goto LABEL_4;
      }

      if (v24)
      {
        goto LABEL_35;
      }
    }

    memset(&v86, 0, sizeof(v86));
    goto LABEL_44;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(context, v25, v28, v27);
LABEL_26:

LABEL_27:

  return v23;
}

@end