@interface TSCETaggedDecimalListObject
+ (id)createFromGridValue:(id)value functionSpec:(id)spec argumentIndex:(int)index evaluationContext:(id)context ignoreError:(BOOL)error ignoreDuplicates:(BOOL)duplicates outError:(id *)outError;
- (id).cxx_construct;
@end

@implementation TSCETaggedDecimalListObject

+ (id)createFromGridValue:(id)value functionSpec:(id)spec argumentIndex:(int)index evaluationContext:(id)context ignoreError:(BOOL)error ignoreDuplicates:(BOOL)duplicates outError:(id *)outError
{
  duplicatesCopy = duplicates;
  errorCopy = error;
  v98 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  specCopy = spec;
  contextCopy = context;
  v79 = contextCopy;
  v82 = objc_opt_new();
  v17 = objc_msgSend_count(valueCopy, v14, v15, v16);
  v80 = objc_msgSend_taggedDecimalList(v82, v18, v19, v20);
  v83 = objc_msgSend_zero(TSCENumberValue, v21, v22, v23);
  if (!outError)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "+[TSCETaggedDecimalListObject createFromGridValue:functionSpec:argumentIndex:evaluationContext:ignoreError:ignoreDuplicates:outError:]", v25);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 197, 0, "outError is required to be non-nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
  }

  memset(v94, 0, sizeof(v94));
  v95 = 1065353216;
  v36 = contextCopy;
  v88[0] = v36;
  v88[1] = specCopy;
  v89 = 0;
  v90[0] = 0;
  *(v90 + 7) = 0;
  v91 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v92 = 0;
  v93 = 0;
  if (!v17)
  {
    v86 = 0;
LABEL_40:
    v72 = v82;
    goto LABEL_41;
  }

  v84 = 0;
  v86 = 0;
  v37 = 0;
  while (1)
  {
    v38 = objc_msgSend_valueAtIndex_accessContext_(valueCopy, v35, v37, v88);
    v42 = v38;
    if (errorCopy && (objc_msgSend_isError(v38, v39, v40, v41) & 1) != 0 || (objc_msgSend_isNil(v42, v39, v40, v41) & 1) != 0)
    {
      goto LABEL_8;
    }

    v48 = objc_msgSend_deepType_(v42, v43, v36, v44);
    if (v48 <= 8u)
    {
      break;
    }

    if (v48 != 9)
    {
      if (v48 == 10 || v48 == 12)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

    if (!errorCopy)
    {
      v56 = objc_msgSend_errorWithContext_(v42, v45, v36, v47);
      *outError = v56;
      if (v56)
      {
        goto LABEL_48;
      }
    }

LABEL_8:

    if (v17 == ++v37)
    {
      goto LABEL_40;
    }
  }

  if (v48 == 3)
  {
    if (v84)
    {
LABEL_44:
      v52 = objc_msgSend_functionName(specCopy, v45, v46, v47);
      *outError = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v74, v52, v75);
      goto LABEL_47;
    }

    v57 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v42, v45, v36, specCopy, 0, outError);

    if (*outError)
    {
      v86 = v57;
      goto LABEL_48;
    }

    objc_msgSend_timeIntervalSinceReferenceDate(v57, v58, v59, v60);
    if (duplicatesCopy)
    {
      TSUDecimal::operator=();
      if (!sub_2214031D4(v94, &v96))
      {
        TSUDecimal::operator=();
        sub_221403524(v94, &v96, &v96);
        TSUDecimal::operator=();
        v96 = v87;
        v97 = v37;
        sub_221402320(v80, &v96);
      }
    }

    else
    {
      TSUDecimal::operator=();
      v96 = v87;
      v97 = v37;
      sub_221402320(v80, &v96);
    }

    v84 = 0;
    v86 = v57;
    goto LABEL_8;
  }

  if (v48 != 5)
  {
LABEL_30:
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "+[TSCETaggedDecimalListObject createFromGridValue:functionSpec:argumentIndex:evaluationContext:ignoreError:ignoreDuplicates:outError:]", v47);
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v66, v62, v65, 289, 0, "Have to set the type of vector appropriately. currentType = %d", v48, v79);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69);
    goto LABEL_8;
  }

  if (v86)
  {
    goto LABEL_44;
  }

  v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v45, v36, specCopy, 0, outError);
  v52 = v49;
  if (*outError)
  {
    goto LABEL_46;
  }

  if ((v84 & 1) == 0)
  {
    v70 = v49;

    v83 = v70;
    goto LABEL_32;
  }

  if (objc_msgSend_dimensionsMatchModuloCurrency_(v83, v50, v49, v51))
  {
LABEL_32:
    v71 = objc_msgSend_rawDecimalValue(v52, v53, v54, v55);
    v87 = *v71;
    if (duplicatesCopy)
    {
      if (!sub_2214031D4(v94, &v87))
      {
        sub_2214032D4(v94, &v87, &v87);
        v96 = v87;
        v97 = v37;
        sub_221402320(v80, &v96);
      }
    }

    else
    {
      v96 = *v71;
      v97 = v37;
      sub_221402320(v80, &v96);
    }

    v86 = 0;
    v84 = 1;
    goto LABEL_8;
  }

  v76 = objc_msgSend_functionName(specCopy, v53, v54, v55);
  *outError = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v77, v76, v78);

LABEL_46:
  v86 = 0;
LABEL_47:

LABEL_48:
  v72 = 0;
LABEL_41:

  sub_2210BDEC0(v94);

  return v72;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end