@interface TSCEFunction_CONCATENATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)valueForArgumentRepeatingSingletonMode:(id)mode functionSpec:(id)spec arguments:(const void *)arguments argSpec:(id)argSpec outError:(id *)error;
@end

@implementation TSCEFunction_CONCATENATE

+ (id)valueForArgumentRepeatingSingletonMode:(id)mode functionSpec:(id)spec arguments:(const void *)arguments argSpec:(id)argSpec outError:(id *)error
{
  modeCopy = mode;
  argSpecCopy = argSpec;
  v13 = *arguments;
  v12 = *(arguments + 1);
  v85 = argSpecCopy;
  v17 = objc_msgSend_argumentType(argSpecCopy, v14, v15, v16);
  v18 = v12 - v13;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  __p = 0;
  v93 = 0;
  v94 = 0;
  if (((v12 - v13) >> 3) >= 1)
  {
    v19 = v17;
    v20 = 0;
    v21 = (v18 >> 3) & 0x7FFFFFFF;
    do
    {
      v22 = *(*arguments + 8 * v20);
      isFlattened = v22;
      if (v19 == 7 && (objc_msgSend_isRegexString(v22, v23, v24, v25) & 1) == 0)
      {
        if (isFlattened)
        {
          objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(isFlattened, v23, modeCopy, spec, 0, error);
        }

        else
        {
          memset(&v88, 0, 24);
        }

        if (*error)
        {
          v75 = objc_msgSend_emptyGrid(TSCEGridValue, v23, v24, v25);

          goto LABEL_72;
        }

        v27 = sub_2210789F4(&v88, v23, v24, v25);

        isFlattened = v27;
      }

      if (objc_msgSend_isReferenceValue(isFlattened, v23, v24, v25) && (!argSpecCopy || (objc_msgSend_referenceForGeometryOnly(argSpecCopy, v28, v29, v30) & 1) == 0))
      {
        v31 = objc_msgSend_asReferenceValue(isFlattened, v28, v29, v30);
        if (objc_msgSend_isOutputOfAFunction(v31, v32, v33, v34))
        {
          if (v31)
          {
            objc_msgSend_anyRef(v31, v35, v36, v37);
          }

          else
          {
            v90 = 0u;
            v91 = 0u;
            v89 = 0u;
            memset(&v88, 0, sizeof(v88));
          }

          objc_msgSend_addCalculatedPrecedent_(modeCopy, v35, &v88, v37);
        }
      }

      v38 = objc_msgSend_deepType_(isFlattened, v28, modeCopy, v30);
      v42 = objc_msgSend_nativeType(isFlattened, v39, v40, v41);
      if (!TSCEArgumentAccessor::valueSufficesForArgumentType(isFlattened, v19, v42, v38, modeCopy, 0) || argSpecCopy && objc_msgSend_typeIsDisallowed_value_(argSpecCopy, v43, v42, isFlattened))
      {
        if (v38 == 9)
        {
          objc_msgSend_errorWithContext_(isFlattened, v43, modeCopy, v45);
        }

        else
        {
          objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v43, isFlattened, modeCopy, spec, 0);
        }
        *error = ;
        v71 = objc_msgSend_emptyGrid(TSCEGridValue, v72, v73, v74);
        goto LABEL_71;
      }

      if (v38 == 2 && (v19 == 8 || v19 == 5))
      {
        objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, v43, modeCopy, v45);
      }

      if (v19 == 8)
      {
        errorCopy = error;
        v87 = 0;
        v47 = TSCEArgumentAccessor::coerceValueToNumberOrDate(isFlattened, modeCopy, spec, 0, v38, &v87);
        v48 = v87;

        if (v48)
        {
          v77 = v48;
          *errorCopy = v48;
          v75 = objc_msgSend_emptyGrid(TSCEGridValue, v78, v79, v80);

          isFlattened = v47;
          argSpecCopy = v85;
          goto LABEL_72;
        }

        isFlattened = v47;
        error = errorCopy;
        argSpecCopy = v85;
      }

      v50 = v19 == 8 && v38 == 5;
      if (v19 == 5 || v50)
      {
        v51 = TSCEArgumentAccessor::checkBoundsAndUnits(isFlattened, modeCopy, spec, argSpecCopy, 0, v38);
        v52 = v51;
        if (v51)
        {
          v81 = v51;
          *error = v52;
          v75 = objc_msgSend_emptyGrid(TSCEGridValue, v82, v83, v84);

          goto LABEL_72;
        }
      }

      if (objc_msgSend_isNil(isFlattened, v43, v44, v45))
      {
        v56 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v53, v54, v55);
        v59 = v96;
        if (v96 >= v97)
        {
          v65 = (v96 - v95) >> 3;
          if ((v65 + 1) >> 61)
          {
            sub_22107C148();
          }

          v66 = (v97 - v95) >> 2;
          if (v66 <= v65 + 1)
          {
            v66 = v65 + 1;
          }

          if (v97 - v95 >= 0x7FFFFFFFFFFFFFF8)
          {
            v67 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v66;
          }

          *&v89 = &v95;
          if (v67)
          {
            sub_22107C1F0(&v95, v67);
          }

          v88._tskFormat = 0;
          *&v88._formatType = 8 * v65;
          *&v88._numberFormat.decimalPlaces = 0;
          **&v88._formatType = v56;
          *&v88._durationFormat = 8 * v65 + 8;
          sub_22107C098(&v95, &v88);
LABEL_61:
          v60 = v96;
          sub_22107C26C(&v88);
          goto LABEL_62;
        }

        *v96 = v56;
        v60 = v59 + 1;
      }

      else
      {
        v61 = v96;
        if (v96 >= v97)
        {
          v62 = (v96 - v95) >> 3;
          if ((v62 + 1) >> 61)
          {
            sub_22107C148();
          }

          v63 = (v97 - v95) >> 2;
          if (v63 <= v62 + 1)
          {
            v63 = v62 + 1;
          }

          if (v97 - v95 >= 0x7FFFFFFFFFFFFFF8)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v63;
          }

          *&v89 = &v95;
          if (v64)
          {
            sub_22107C1F0(&v95, v64);
          }

          v88._tskFormat = 0;
          *&v88._formatType = 8 * v62;
          *&v88._numberFormat.decimalPlaces = 0;
          *(8 * v62) = isFlattened;
          *&v88._durationFormat = 8 * v62 + 8;
          sub_22107C098(&v95, &v88);
          goto LABEL_61;
        }

        *v61 = isFlattened;
        v60 = v61 + 1;
      }

LABEL_62:
      v96 = v60;
      if (isFlattened)
      {
        objc_msgSend_formatWithContext_(isFlattened, v57, modeCopy, v58);
      }

      else
      {
        memset(&v88, 0, sizeof(v88));
      }

      sub_22114F414(&__p, &v88);

      ++v20;
    }

    while (v21 != v20);
  }

  v68 = [TSCEDenseGrid alloc];
  isFlattened = objc_msgSend_initWithValues_gridKind_isFlattened_(v68, v69, &v95, 0, 0);
  sub_221256020(&__p, &v88);
  v71 = objc_msgSend_gridValue_format_(TSCEGridValue, v70, isFlattened, &v88);
LABEL_71:
  v75 = v71;
LABEL_72:

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  v88._tskFormat = &v95;
  sub_22107C2C0(&v88);

  return v75;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = objc_msgSend_argumentSpecForIndex_(spec, a2, 0, spec);
  v51 = 0;
  v11 = objc_msgSend_valueForArgumentRepeatingSingletonMode_functionSpec_arguments_argSpec_outError_(self, v10, context, spec, arguments, v9, &v51);
  v12 = v51;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15);
    goto LABEL_23;
  }

  v49 = 0;
  v50[0] = 0;
  *(v50 + 7) = 0;
  v18 = objc_msgSend_count(v11, v13, v14, v15);
  contextCopy = context;
  v43[0] = contextCopy;
  v43[1] = spec;
  v44 = 0;
  v45[0] = 0;
  *(v45 + 7) = 0;
  v46 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v47 = 0;
  v48 = 0;
  if (v18)
  {
    v23 = 0;
    v24 = 0;
    isRegexString = 1;
    do
    {
      v26 = objc_msgSend_valueAtIndex_accessContext_(v11, v19, v23, v43);
      if ((objc_msgSend_isNil(v26, v27, v28, v29) & 1) == 0)
      {
        v42 = 0;
        if (v26)
        {
          objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v26, v30, contextCopy, spec, 0, &v42);
          v16 = v42;
        }

        else
        {
          v16 = 0;
          memset(&v41, 0, 24);
        }

        sub_221077424(&v49, &v41, contextCopy);

        if (v16)
        {
          v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v31, v16, v33);

          goto LABEL_22;
        }

        if (isRegexString)
        {
          isRegexString = objc_msgSend_isRegexString(v26, v31, v32, v33);
          v24 |= isRegexString;
        }

        else
        {
          isRegexString = 0;
        }
      }

      ++v23;
    }

    while (v18 != v23);
    v34 = isRegexString & v24;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = 0;
    if (!v11)
    {
LABEL_18:
      memset(&v41, 0, sizeof(v41));
      if (v34)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  objc_msgSend_formatWithContext_(v11, v19, contextCopy, v21);
  if (v34)
  {
LABEL_16:
    v35 = sub_2210772BC(&v49, v19, v20, v21);
    v17 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v36, v35, &v41, 1, 0, 0);

    goto LABEL_20;
  }

LABEL_19:
  v17 = sub_2210789F4(&v49, v19, v20, v21);
  TSCEFormat::TSCEFormat(&v40, &v41);
  objc_msgSend_setFormat_(v17, v37, &v40, v38);
LABEL_20:
  v16 = 0;
LABEL_22:

LABEL_23:

  return v17;
}

@end