@interface TSCEFunction_SLOPE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SLOPE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  v9 = *(*arguments + 8);
  v89 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 1, &v89);
  v12 = v89;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_34;
  }

  v17 = **arguments;
  v88 = 0;
  v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v18, context, spec, 0, 1, &v88);
  v20 = v88;
  if (!v20)
  {
    v78 = v19;
    v24 = objc_msgSend_nilValue(TSCENilValue, v21, v22, v23);
    v28 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
    v86 = v28;
    v87 = v24;
    v15 = objc_msgSend_computeSlope_functionSpec_xs_xArgumentIndex_ys_yArgumentIndex_xAverageResult_yAverageResult_slopeResult_xExamplePtr_yExamplePtr_(self, v29, context, spec, v11, 1, v78, 0, 0, 0, v90, &v87, &v86);
    v30 = v87;

    v31 = v86;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v32, v15, v34);
      v35 = v30;
      v19 = v78;
LABEL_32:

      goto LABEL_33;
    }

    v77 = v30;
    v36 = objc_msgSend_nilValue(TSCENilValue, v32, v33, v34);
    v19 = v78;
    if (objc_msgSend_deepType_(v31, v37, context, v38) == 5 && objc_msgSend_deepType_(v77, v39, context, v40) == 5)
    {
      v85 = 0;
      v76 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v39, context, spec, 0, &v85);
      v41 = v85;
      v84 = v41;
      v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v77, v42, context, spec, 1, &v84);
      v15 = v84;

      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v44, v15, v46);

        v35 = v77;
LABEL_31:

        goto LABEL_32;
      }

      v50 = v76;
      if (objc_msgSend_hasUnits(v76, v44, v45, v46) && !objc_msgSend_dimension(v76, v54, v55, v56) && (objc_msgSend_hasUnits(v43, v57, v58, v59) & 1) == 0)
      {
        TSUDecimal::operator=();
        *&v82._tskFormat = v90[0];
        TSUDecimal::operator*=();
        v81._tskFormat = v82._tskFormat;
        *&v81._formatType = *&v82._formatType;
        v63 = objc_msgSend_unit(v76, v60, v61, v62);
        v65 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v64, &v81, v63);

        v36 = v65;
        v50 = v76;
      }
    }

    else
    {
      if (objc_msgSend_deepType_(v31, v39, context, v40) != 3 || objc_msgSend_deepType_(v77, v47, context, v49) != 5)
      {
LABEL_23:
        if (objc_msgSend_isNil(v36, v47, v48, v49))
        {
          v72 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v69, v90, v71);

          v36 = v72;
        }

        v35 = v77;
        if (v11)
        {
          objc_msgSend_formatWithContext_(v11, v69, context, v71);
          if (v78)
          {
LABEL_27:
            objc_msgSend_formatWithContext_(v78, v69, context, v71);
LABEL_30:
            TSCEFormat::formatByMergingWithFormat(&v79, &v81, &v80, v70, v71);
            TSCEFormat::TSCEFormat(&v82, &v79);
            objc_msgSend_setFormat_(v36, v73, &v82, v74);
            v36 = v36;
            v15 = 0;
            v16 = v36;
            goto LABEL_31;
          }
        }

        else
        {
          memset(&v81, 0, sizeof(v81));
          if (v78)
          {
            goto LABEL_27;
          }
        }

        memset(&v80, 0, sizeof(v80));
        goto LABEL_30;
      }

      v83 = 0;
      v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v77, v47, context, spec, 1, &v83);
      v15 = v83;
      if (v15)
      {
        v35 = v77;
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v51, v15, v53);

        goto LABEL_31;
      }

      if ((objc_msgSend_hasUnits(v50, v51, v52, v53) & 1) == 0)
      {
        v66 = v50;
        TSUDecimal::operator=();
        *&v82._tskFormat = v90[0];
        TSUDecimal::operator*=();
        v81._tskFormat = v82._tskFormat;
        *&v81._formatType = *&v82._formatType;
        v68 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v67, &v81, 3);

        v36 = v68;
        v50 = v66;
      }
    }

    goto LABEL_23;
  }

  v15 = v20;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v23);
LABEL_33:

LABEL_34:

  return v16;
}

@end