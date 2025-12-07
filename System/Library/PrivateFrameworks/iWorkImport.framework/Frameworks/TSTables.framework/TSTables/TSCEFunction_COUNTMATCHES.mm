@interface TSCEFunction_COUNTMATCHES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTMATCHES

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  isRegexString = objc_msgSend_isRegexString(v9, v10, v11, v12);
  v48 = 0;
  v15 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v48);
  v16 = v48;
  v47 = v16;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v17, context, spec, 1, &v47);
  v19 = v47;

  if (v19)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22);
LABEL_3:

    goto LABEL_12;
  }

  if (isRegexString)
  {
    v24 = objc_msgSend_asStringValue(v9, v20, v21, v22);
    isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v24, v25, v26, v27);
    v46 = 0;
    v30 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v29, v18, isCaseSensitiveRegex, &v46);
    v19 = v46;
    if (v19)
    {
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v31, v19, v33);

      goto LABEL_3;
    }

    v40 = objc_msgSend_length(v15, v31, v32, v33);
    objc_msgSend_numberOfMatchesInString_options_range_(v30, v41, v15, 0, 0, v40);
  }

  else
  {
    v34 = 0;
    for (i = objc_msgSend_rangeOfString_options_(v15, v20, v18, 1); i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_rangeOfString_options_(v38, v39, v18, 1))
    {
      v38 = objc_msgSend_substringFromIndex_(v15, v36, i + 1, v37);
      ++v34;

      v15 = v38;
    }
  }

  TSUDecimal::operator=();
  TSCEFormat::TSCEFormat(v44, 256);
  v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v42, v45, v44);
LABEL_12:

  return v23;
}

@end