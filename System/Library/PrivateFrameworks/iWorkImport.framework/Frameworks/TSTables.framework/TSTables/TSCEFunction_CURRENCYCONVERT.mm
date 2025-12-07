@interface TSCEFunction_CURRENCYCONVERT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CURRENCYCONVERT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v135 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v135);
  v11 = v135;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_25;
  }

  v19 = sub_22119E890(context, v10);
  if (*(arguments + 1) - *arguments < 9uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 8), v16, v17, v18) & 1) != 0)
  {
    v20 = objc_msgSend_nilValue(TSCENilValue, v16, v17, v18);
    v21 = sub_22119E890(context, v20);
LABEL_6:

    v25 = objc_msgSend_locale(context, v22, v23, v24);
    v29 = objc_msgSend_locale(v25, v26, v27, v28);
    v32 = objc_msgSend_uppercaseStringWithLocale_(v19, v30, v29, v31);

    v36 = objc_msgSend_locale(context, v33, v34, v35);
    v40 = objc_msgSend_locale(v36, v37, v38, v39);
    v43 = objc_msgSend_uppercaseStringWithLocale_(v21, v41, v40, v42);

    if (objc_msgSend_isEqualToString_(v43, v44, v32, v45))
    {
      if (objc_msgSend_hasUnits(v10, v46, v47, v48) && objc_msgSend_dimension(v10, v49, v50, v51) == 4)
      {
        v53 = objc_msgSend_unit(v10, v49, v52, v51);
      }

      else
      {
        v53 = 0;
      }

      v85 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v49, v43, v51);
      if (v53 == v85)
      {
        v86 = v10;
      }

      else
      {
        v136 = objc_msgSend_decimalRepresentation(v10, v82, v83, v84);
        v137 = v91;
        v86 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v91, &v136, v85);
      }

      v15 = v86;
    }

    else
    {
      v131 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"%@%@=X", v48, v32, v43);
      v132 = objc_msgSend_specifierWithFunctionIndex_symbol_attribute_(TSCERemoteDataSpecifier, v54, 300, v131, 24);
      objc_msgSend_addRemoteDataSpecifierInterestedIn_(context, v55, v132, v56);
      v60 = objc_msgSend_calcEngine(context, v57, v58, v59);
      v64 = objc_msgSend_remoteDataStore(v60, v61, v62, v63);

      v130 = v64;
      v67 = objc_msgSend_valueForRemoteData_(v64, v65, v132, v66);
      v71 = objc_msgSend_asErrorValue(v67, v68, v69, v70);
      v75 = objc_msgSend_error(v71, v72, v73, v74);
      LODWORD(v64) = objc_msgSend_isNotReadyError(v75, v76, v77, v78);

      if (v64)
      {
        v15 = v67;
      }

      else if (objc_msgSend_nativeType(v67, v79, v80, v81) == 5)
      {
        v95 = objc_msgSend_number(v67, v92, v93, v94);
        v133[2] = objc_msgSend_decimalRepresentation(v95, v96, v97, v98);
        v133[3] = v99;

        v103 = objc_msgSend_decimalRepresentation(v10, v100, v101, v102);
        v105 = v104;
        v108 = objc_msgSend_locale(context, v104, v106, v107);
        v112 = objc_msgSend_locale(v108, v109, v110, v111);
        v115 = objc_msgSend_uppercaseStringWithLocale_(v43, v113, v112, v114);

        v118 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v116, v115, v117);
        v136 = v103;
        v137 = v105;
        TSUDecimal::operator*=();
        v133[0] = v136;
        v133[1] = v137;
        v15 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v119, v133, v118);
      }

      else
      {
        v120 = objc_msgSend_attribute(v132, v92, v93, v94);
        v123 = sub_22119DAB0(v120, spec, v121, v122);
        v126 = objc_msgSend_remoteDataUnavailableErrorWithAttribute_(TSCEError, v124, v123, v125);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v127, v126, v128);
      }
    }

    v14 = 0;
    goto LABEL_24;
  }

  v20 = *(*arguments + 8);
  v134 = 0;
  v43 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v20, v87, context, spec, 1, &v134);
  v88 = v134;
  if (!v88)
  {
    v21 = v43;
    goto LABEL_6;
  }

  v14 = v88;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v89, v88, v90);

  v32 = v19;
LABEL_24:

LABEL_25:

  return v15;
}

@end