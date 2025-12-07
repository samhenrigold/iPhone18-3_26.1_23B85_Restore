@interface TSCELogicalTest
+ (id)logicalTestWithCriterion:(id)criterion evaluationContext:(id)context functionSpec:(id)spec outError:(id *)error;
- (BOOL)compare:(id)compare outError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (TSCELogicalTest)initWithCriterion:(id)criterion evaluationContext:(id)context functionSpec:(id)spec outError:(id *)error;
- (id)description;
- (int)parseRaconCriteriaString:(id)string;
- (unint64_t)cost;
@end

@implementation TSCELogicalTest

+ (id)logicalTestWithCriterion:(id)criterion evaluationContext:(id)context functionSpec:(id)spec outError:(id *)error
{
  criterionCopy = criterion;
  contextCopy = context;
  specCopy = spec;
  v12 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_initWithCriterion_evaluationContext_functionSpec_outError_(v12, v13, criterionCopy, contextCopy, specCopy, error);

  return v14;
}

- (TSCELogicalTest)initWithCriterion:(id)criterion evaluationContext:(id)context functionSpec:(id)spec outError:(id *)error
{
  criterionCopy = criterion;
  contextCopy = context;
  specCopy = spec;
  v83.receiver = self;
  v83.super_class = TSCELogicalTest;
  v13 = [(TSCELogicalTest *)&v83 init];
  objc_storeStrong(&v13->_evaluationContext, context);
  v13->_operation = 0;
  if (objc_msgSend_isThunk(criterionCopy, v14, v15, v16))
  {
    v19 = objc_msgSend_unwrapThunk_(v13->_evaluationContext, v17, criterionCopy, v18);

    criterionCopy = v19;
  }

  evaluationContext = v13->_evaluationContext;
  v82 = 0;
  v21 = objc_msgSend_deepType_outError_(criterionCopy, v17, evaluationContext, &v82);
  v22 = v82;
  v26 = v22;
  v27 = 0;
  if (v21 <= 8u)
  {
    if (v21 > 2u)
    {
      if (v21 != 3)
      {
        if (v21 != 5)
        {
          if (v21 == 7)
          {
            v76 = v22;
            v28 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(criterionCopy, v23, contextCopy, specCopy, 1, &v76);
            v29 = v76;

            if (objc_msgSend_isRegexString(criterionCopy, v30, v31, v32))
            {
              v13->_operation = 31;
              isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(criterionCopy, v33, v34, v35);
              v75 = v29;
              v38 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v37, v28, isCaseSensitiveRegexString, &v75);
              v26 = v75;

              objc_msgSend_setMatcher_(v13, v39, v38, v40);
            }

            else
            {
              v13->_operation = objc_msgSend_parseRaconCriteriaString_(v13, v33, v28, v35);
              v26 = v29;
            }

            if (!v26)
            {
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v81 = v22;
        v57 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(criterionCopy, v23, contextCopy, specCopy, 0xFFFFFFFFLL, &v81);
        v48 = v81;

        isDuration = objc_msgSend_isDuration(v57, v58, v59, v60);
        if (isDuration)
        {
          v27 = 24;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_29;
      }

      v13->_operation = 12;
      v77 = v22;
      v41 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(criterionCopy, v23, contextCopy, specCopy, 1, &v77);
      v43 = v77;

      objc_msgSend_setDate_(v13, v55, v41, v56);
LABEL_24:

      v26 = v43;
      if (!v43)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v21)
    {
      if (v21 == 2)
      {
        v13->_operation = 18;
        v79 = v22;
        objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(criterionCopy, v23, contextCopy, specCopy, 1, &v79);
        v41 = v79;

        TSUDecimal::operator=();
        v46 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v44, v78, v45);
        value = v13->_value;
        v13->_value = v46;

        goto LABEL_32;
      }

LABEL_34:
      v64 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSCELogicalTest initWithCriterion:evaluationContext:functionSpec:outError:]", v25);
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELogicalTest.mm", v67);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 201, 0, "type not handled: %d", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
      if (!v26)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

LABEL_20:
    v48 = v22;
LABEL_29:
    v13->_operation = v27;
    v80 = v48;
    v62 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(criterionCopy, v23, contextCopy, specCopy, 1, &v80);
    v26 = v80;

    v63 = v13->_value;
    v13->_value = v62;

    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v21 <= 0xBu)
  {
    if (v21 != 9)
    {
      if (v21 != 10)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    v41 = objc_msgSend_errorWithContext_(criterionCopy, v23, contextCopy, v25);

    v51 = objc_msgSend_errorWithContext_(criterionCopy, v49, contextCopy, v50);

    if (!v51)
    {
      v43 = objc_msgSend_numberError(TSCEError, v52, v53, v54);
      goto LABEL_24;
    }
  }

  else
  {
    if (v21 == 12)
    {
      goto LABEL_20;
    }

    if (v21 != 16)
    {
      if (v21 == 19)
      {
        v41 = objc_msgSend_functionName(specCopy, v23, v24, v25);
        v43 = objc_msgSend_cannotAcceptLambdaError_argIndex_(TSCEError, v42, v41, 1);

        goto LABEL_24;
      }

      goto LABEL_34;
    }

    v41 = objc_msgSend_invalidReferenceError(TSCEError, v23, v24, v25);
  }

LABEL_32:
  v26 = v41;
  if (!v41)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (error)
  {
    v73 = v26;
    *error = v26;
  }

  v13 = 0;
LABEL_38:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  operation = self->_operation;
  value = self->_value;
  v10 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v7, v8, v9);
  v13 = objc_msgSend_asStringWithLocale_(value, v11, v10, v12);
  string = self->_string;
  date = self->_date;
  v19 = objc_msgSend_cost(self, v16, v17, v18);
  v22 = objc_msgSend_stringWithFormat_(v3, v20, @"<%@: %p>: operation: %d value: %@ string: %@ date: %@ -> cost: %lu", v21, v4, self, operation, v13, string, date, v19);

  return v22;
}

- (int)parseRaconCriteriaString:(id)string
{
  stringCopy = string;
  v8 = objc_msgSend_zero(TSCENumberValue, v5, v6, v7);
  value = self->_value;
  self->_value = v8;

  objc_msgSend_setString_(self, v10, 0, v11);
  objc_msgSend_setDate_(self, v12, 0, v13);
  if ((objc_msgSend_isEqualToString_(stringCopy, v14, @"=", v15) & 1) == 0 && (objc_msgSend_isEqualToString_(stringCopy, v16, &stru_2834BADA0, v17) & 1) == 0)
  {
    LODWORD(v21) = objc_msgSend_hasPrefix_(stringCopy, v18, @"=", v19);
    if (objc_msgSend_hasPrefix_(stringCopy, v22, @"<", v23))
    {
      if (objc_msgSend_hasPrefix_(stringCopy, v24, @"<=", v25))
      {
        v26 = 5;
        v21 = 2;
      }

      else
      {
        hasPrefix = objc_msgSend_hasPrefix_(stringCopy, v24, @"<>", v25);
        if (hasPrefix)
        {
          v26 = 1;
        }

        else
        {
          v26 = 4;
        }

        if (hasPrefix)
        {
          v21 = 2;
        }

        else
        {
          v21 = 1;
        }
      }
    }

    else
    {
      v26 = 0;
      v21 = v21;
    }

    if (objc_msgSend_hasPrefix_(stringCopy, v24, @">", v25))
    {
      v30 = objc_msgSend_hasPrefix_(stringCopy, v28, @">=", v29);
      if (v30)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      if (v30)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }
    }

    if (objc_msgSend_hasPrefix_(stringCopy, v28, @"≤", v29))
    {
      v20 = 5;
    }

    else if (objc_msgSend_hasPrefix_(stringCopy, v31, @"≥", v32))
    {
      v20 = 3;
    }

    else
    {
      v33 = objc_msgSend_hasPrefix_(stringCopy, v31, @"≠", v32);
      if (v33)
      {
        v20 = 1;
      }

      else
      {
        v20 = v26;
      }

      if (!v33)
      {
        objc_msgSend_substringFromIndex_(stringCopy, v31, v21, v32);
        goto LABEL_31;
      }
    }

    objc_msgSend_substringFromIndex_(stringCopy, v31, 1, v32);
    v34 = LABEL_31:;
    v38 = objc_msgSend_locale(self->_evaluationContext, v35, v36, v37);
    v42 = TSUCreateDateFromString();
    if (v42)
    {
      objc_msgSend_setDate_(self, v39, v42, v41);
      v20 += 12;
LABEL_48:

      goto LABEL_49;
    }

    v43 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v39, v40, v41);
    v88 = objc_msgSend_stringByTrimmingCharactersInSet_(v34, v44, v43, v45);

    MEMORY[0x223D9F8D0](v96, v38);
    TSUUnivNumberParser::parseAsNumber(&v94, v96, v88);
    if (v95 == -999)
    {
      v92 = 0;
      v91 = 0;
      if (TSUDurationFormatterTimeIntervalFromString())
      {
        v91 = TSUDurationFormatterMaxDurationUnitInUnits();
        v49 = sub_221387C78(v91);
        v50 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v52 = objc_msgSend_initWithDecimal_baseUnit_(v50, v51, v93, v49);
        v53 = self->_value;
        self->_value = v52;

        v20 += 24;
      }

      else
      {
        v58 = objc_msgSend_localizedTrueString(v38, v46, v47, v48);
        v61 = objc_msgSend_caseInsensitiveCompare_(v34, v59, v58, v60);

        if (!v61)
        {
          TSUDecimal::operator=();
          v67 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v65, v93, v66);
          v68 = self->_value;
          self->_value = v67;
        }

        v69 = objc_msgSend_localizedFalseString(v38, v62, v63, v64);
        v72 = objc_msgSend_caseInsensitiveCompare_(v34, v70, v69, v71);

        if (v72)
        {
          if (v61)
          {
            objc_msgSend_setString_(self, v73, v34, v75);
            if (v20 > 2)
            {
              if (v20 == 3)
              {
                v20 = 9;
              }

              else if (v20 == 4)
              {
                v20 = 10;
              }

              else
              {
                v20 = 11;
              }
            }

            else if (v20)
            {
              if (v20 == 1)
              {
                v89 = 0;
                v77 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v76, v34, &v89);
                v78 = v89;
                objc_msgSend_setMatcher_(self, v79, v77, v80);

                v20 = 7;
              }

              else
              {
                v20 = 8;
              }
            }

            else
            {
              v90 = 0;
              v84 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v76, v34, &v90);
              v85 = v90;
              objc_msgSend_setMatcher_(self, v86, v84, v87);

              v20 = 6;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v81 = objc_msgSend_zero(TSCENumberValue, v73, v74, v75);
          v82 = self->_value;
          self->_value = v81;
        }

        v20 += 18;
      }
    }

    else
    {
      TSUDecimal::operator=();
      v56 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v54, v93, v55);
      v57 = self->_value;
      self->_value = v56;
    }

LABEL_47:
    MEMORY[0x223D9F890](&v94);

    goto LABEL_48;
  }

  v20 = 30;
LABEL_49:

  return v20;
}

- (BOOL)compare:(id)compare outError:(id *)error
{
  compareCopy = compare;
  v9 = objc_msgSend_deepType_(compareCopy, v7, self->_evaluationContext, v8);
  LODWORD(v15) = objc_msgSend_valueIsEmptyWithContext_(compareCopy, v10, self->_evaluationContext, v11);
  if (v9 == 5)
  {
    evaluationContext = self->_evaluationContext;
    v269 = 0;
    v40 = objc_msgSend_asNumber_outError_(compareCopy, v12, evaluationContext, &v269);
    v41 = v269;
    isDuration = objc_msgSend_isDuration(v40, v42, v43, v44);
    if (v41)
    {
      v46 = v41;
      *error = v41;

      goto LABEL_15;
    }

    v48 = isDuration;

    v9 = 5;
  }

  else
  {
    if (v9 != 7)
    {
      if (v9 == 9)
      {
        if (objc_msgSend_isReferenceValue(compareCopy, v12, v13, v14))
        {
          v16 = objc_msgSend_asReferenceValue(compareCopy, v12, v13, v14);
          v20 = v16;
          if (v16 && (objc_msgSend_isNil(v16, v17, v18, v19) & 1) == 0)
          {
            v23 = objc_msgSend_errorWithContext_(v20, v21, self->_evaluationContext, v22);
            if (objc_msgSend_isCircularReferenceError(v23, v24, v25, v26))
            {
              v27 = v23;
              *error = v23;
LABEL_25:

              goto LABEL_15;
            }
          }
        }

        v48 = 0;
        v9 = 9;
      }

      else
      {
        v48 = 0;
      }

      goto LABEL_30;
    }

    operation = self->_operation;
    if (operation > 0x1F)
    {
      goto LABEL_23;
    }

    v29 = 1 << operation;
    if ((v29 & 0xFC0000) != 0)
    {
      v30 = objc_msgSend_locale(self->_evaluationContext, v12, v13, v14);
      v31 = self->_evaluationContext;
      v268 = 0;
      v33 = objc_msgSend_asString_outError_(compareCopy, v32, v31, &v268);
      v34 = v268;
      if (v34)
      {
        v38 = v34;
        *error = v34;

LABEL_15:
        LOBYTE(v15) = 0;
        v47 = compareCopy;
        goto LABEL_199;
      }

      v49 = objc_msgSend_localizedTrueString(v30, v35, v36, v37);
      v52 = objc_msgSend_caseInsensitiveCompare_(v33, v50, v49, v51);

      if (v52)
      {
        v56 = objc_msgSend_localizedFalseString(v30, v53, v54, v55);
        v59 = objc_msgSend_caseInsensitiveCompare_(v33, v57, v56, v58);

        if (v59)
        {
          v9 = 7;
          v47 = compareCopy;
LABEL_146:

          v48 = 0;
          goto LABEL_31;
        }

        v70 = objc_msgSend_zero(TSCENumberValue, v60, v61, v62);
      }

      else
      {
        TSUDecimal::operator=();
        v70 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v68, v265, v69);
      }

      v47 = v70;

      v9 = 2;
      goto LABEL_146;
    }

    if ((v29 & 0x800000C0) == 0)
    {
LABEL_23:
      v63 = self->_evaluationContext;
      v267 = 0;
      v23 = objc_msgSend_asString_outError_(compareCopy, v12, v63, &v267);
      v64 = v267;
      if (v64)
      {
        v20 = v64;
        *error = v64;
        goto LABEL_25;
      }

      v194 = objc_msgSend_locale(self->_evaluationContext, v65, v66, v67);
      TSUDecimal::operator=();
      v195 = MEMORY[0x223D9F8D0](v265, v194);
      TSUUnivNumberParser::parseAsNumber(&v263, v195, v23);
      v198 = v264;
      if (v264 == -999)
      {
        v199 = 1;
      }

      else
      {
        v199 = TSUFormatTypeFromTSUNumberValueType() == 262;
        TSUDecimal::operator=();
      }

      if (self->_date && v199 && (v207 = objc_msgSend_newDateConversionOfString_context_(TSCEEvaluationContext, v196, v23, self->_evaluationContext)) != 0)
      {
        v47 = objc_msgSend_dateValue_(TSCEDateValue, v196, v207, v197);

        v48 = 0;
      }

      else if (v198 == -999)
      {
        v262 = 0;
        v261 = 0;
        v48 = TSUDurationFormatterTimeIntervalFromString();
        v47 = compareCopy;
        if (v48)
        {
          v261 = TSUDurationFormatterMaxDurationUnitInUnits();
          v210 = sub_221387C78(v261);
          v211 = [TSCENumberValue alloc];
          TSUDecimal::operator=();
          v47 = objc_msgSend_initWithDecimal_baseUnit_(v211, v212, v260, v210);
        }
      }

      else
      {
        v222 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v196, v266, v197);

        v48 = 0;
        v47 = v222;
      }

      v9 = objc_msgSend_deepType_(v47, v208, self->_evaluationContext, v209);
      MEMORY[0x223D9F890](&v263);
      sub_2211AF274(v265);

      goto LABEL_31;
    }

    v48 = 0;
    v9 = 7;
  }

LABEL_30:
  v47 = compareCopy;
LABEL_31:
  switch(self->_operation)
  {
    case 0:
      if ((v9 != 5) | (v48 | v15) & 1)
      {
        goto LABEL_198;
      }

      v71 = self->_evaluationContext;
      v259 = 0;
      v72 = objc_msgSend_asNumber_outError_(v47, v12, v71, &v259);
      v73 = v259;
      v75 = objc_msgSend_eq_outError_(v72, v74, self->_value, error);
      goto LABEL_62;
    case 1:
      if ((v9 != 5) | (v48 | v15) & 1)
      {
        goto LABEL_180;
      }

      v114 = self->_evaluationContext;
      v258 = 0;
      v72 = objc_msgSend_asNumber_outError_(v47, v12, v114, &v258);
      v73 = v258;
      v75 = objc_msgSend_ne_outError_(v72, v115, self->_value, error);
      goto LABEL_62;
    case 2:
      if (v48)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
        goto LABEL_164;
      }

      if (v9 != 5 || (v15 & 1) != 0)
      {
        goto LABEL_198;
      }

      v185 = self->_evaluationContext;
      v257 = 0;
      v72 = objc_msgSend_asNumber_outError_(v47, v12, v185, &v257);
      v73 = v257;
      v75 = objc_msgSend_gt_(v72, v186, self->_value, v187);
      goto LABEL_62;
    case 3:
      if (v48)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
        goto LABEL_164;
      }

      if (v9 != 5 || (v15 & 1) != 0)
      {
        goto LABEL_198;
      }

      v182 = self->_evaluationContext;
      v256 = 0;
      v72 = objc_msgSend_asNumber_outError_(v47, v12, v182, &v256);
      v73 = v256;
      v75 = objc_msgSend_ge_(v72, v183, self->_value, v184);
      goto LABEL_62;
    case 4:
      if (v48)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
        goto LABEL_164;
      }

      if (v9 != 5 || (v15 & 1) != 0)
      {
        goto LABEL_198;
      }

      v188 = self->_evaluationContext;
      v255 = 0;
      v72 = objc_msgSend_asNumber_outError_(v47, v12, v188, &v255);
      v73 = v255;
      v75 = objc_msgSend_lt_(v72, v189, self->_value, v190);
      goto LABEL_62;
    case 5:
      if (v48)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
LABEL_164:
        v148 = 5;
        goto LABEL_165;
      }

      if (v9 != 5 || (v15 & 1) != 0)
      {
        goto LABEL_198;
      }

      v191 = self->_evaluationContext;
      v254 = 0;
      v72 = objc_msgSend_asNumber_outError_(v47, v12, v191, &v254);
      v73 = v254;
      v75 = objc_msgSend_le_(v72, v192, self->_value, v193);
LABEL_62:
      LOBYTE(v15) = v75;

      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 6:
      if ((v9 != 7) | v15 & 1)
      {
        goto LABEL_198;
      }

      matcher = self->_matcher;
      v121 = self->_evaluationContext;
      v253 = 0;
      v123 = objc_msgSend_asString_outError_(v47, v12, v121, &v253);
      v73 = v253;
      v126 = objc_msgSend_containsMatchInString_(matcher, v124, v123, v125);
      goto LABEL_73;
    case 7:
      if (v9 != 7)
      {
        if (!v9)
        {
          LOBYTE(v15) = objc_msgSend_length(self->_string, v12, v13, v14) != 0;
          goto LABEL_199;
        }

        goto LABEL_180;
      }

      if (v15)
      {
LABEL_180:
        LOBYTE(v15) = 1;
        goto LABEL_199;
      }

      v214 = self->_matcher;
      v213 = self->_evaluationContext;
      v252 = 0;
      v123 = objc_msgSend_asString_outError_(v47, v12, v213, &v252);
      v73 = v252;
      LODWORD(v15) = objc_msgSend_containsMatchInString_(v214, v215, v123, v216) ^ 1;
LABEL_74:

      if (v73)
      {
LABEL_197:
        v220 = v73;
        *error = v73;

LABEL_198:
        LOBYTE(v15) = 0;
      }

LABEL_199:

      return v15;
    case 8:
      if ((v9 != 7) | v15 & 1)
      {
        goto LABEL_198;
      }

      v101 = self->_evaluationContext;
      v251 = 0;
      v78 = objc_msgSend_asString_outError_(v47, v12, v101, &v251);
      v73 = v251;
      v80 = objc_msgSend_caseInsensitiveCompare_(v78, v102, self->_string, v103);
      goto LABEL_67;
    case 9:
      if ((v9 != 7) | v15 & 1)
      {
        goto LABEL_198;
      }

      v149 = self->_evaluationContext;
      v250 = 0;
      v82 = objc_msgSend_asString_outError_(v47, v12, v149, &v250);
      v73 = v250;
      v85 = objc_msgSend_caseInsensitiveCompare_(v82, v150, self->_string, v151);
      goto LABEL_103;
    case 0xA:
      if ((v9 != 7) | v15 & 1)
      {
        goto LABEL_198;
      }

      v91 = self->_evaluationContext;
      v249 = 0;
      v92 = objc_msgSend_asString_outError_(v47, v12, v91, &v249);
      v73 = v249;
      v95 = objc_msgSend_caseInsensitiveCompare_(v92, v93, self->_string, v94);
      goto LABEL_171;
    case 0xB:
      if ((v9 != 7) | v15 & 1)
      {
        goto LABEL_198;
      }

      v96 = self->_evaluationContext;
      v248 = 0;
      v97 = objc_msgSend_asString_outError_(v47, v12, v96, &v248);
      v73 = v248;
      v100 = objc_msgSend_caseInsensitiveCompare_(v97, v98, self->_string, v99);
      goto LABEL_192;
    case 0xC:
      if ((v9 != 3) | v15 & 1)
      {
        goto LABEL_198;
      }

      v144 = self->_evaluationContext;
      v247 = 0;
      v105 = objc_msgSend_asDate_outError_(v47, v12, v144, &v247);
      v73 = v247;
      v107 = objc_msgSend_compare_(v105, v145, self->_date, v146);
      goto LABEL_92;
    case 0xD:
      if ((v9 != 3) | v15 & 1)
      {
        goto LABEL_180;
      }

      v86 = self->_evaluationContext;
      v246 = 0;
      v87 = objc_msgSend_asDate_outError_(v47, v12, v86, &v246);
      v73 = v246;
      v90 = objc_msgSend_compare_(v87, v88, self->_date, v89);
      goto LABEL_141;
    case 0xE:
      if (v9 != 3)
      {
        goto LABEL_77;
      }

      if (v15)
      {
        goto LABEL_198;
      }

      v116 = self->_evaluationContext;
      v245 = 0;
      v78 = objc_msgSend_asDate_outError_(v47, v12, v116, &v245);
      v73 = v245;
      v80 = objc_msgSend_compare_(v78, v117, self->_date, v118);
      goto LABEL_67;
    case 0xF:
      if (v9 != 3)
      {
        goto LABEL_77;
      }

      if (v15)
      {
        goto LABEL_198;
      }

      v81 = self->_evaluationContext;
      v244 = 0;
      v82 = objc_msgSend_asDate_outError_(v47, v12, v81, &v244);
      v73 = v244;
      v85 = objc_msgSend_compare_(v82, v83, self->_date, v84);
      goto LABEL_103;
    case 0x10:
      if (v9 != 3)
      {
LABEL_77:
        if (v9 == 5)
        {
          if (v48)
          {
            v131 = 4;
          }

          else
          {
            v131 = 5;
          }

          objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v12, self->_evaluationContext, 3, v131);
        }

        goto LABEL_198;
      }

      if (v15)
      {
        goto LABEL_198;
      }

      v200 = self->_evaluationContext;
      v243 = 0;
      v92 = objc_msgSend_asDate_outError_(v47, v12, v200, &v243);
      v73 = v243;
      v95 = objc_msgSend_compare_(v92, v201, self->_date, v202);
LABEL_171:
      v203 = v95;

      v120 = v203 == -1;
LABEL_172:
      LOBYTE(v15) = v120;
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x11:
      if (v9 != 3)
      {
        if (v9 == 5)
        {
          if (v48)
          {
            v148 = 4;
          }

          else
          {
            v148 = 3;
          }

          LOBYTE(v9) = 5;
LABEL_165:
          objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v12, self->_evaluationContext, v148, v9);
        }

        goto LABEL_198;
      }

      if (v15)
      {
        goto LABEL_198;
      }

      v204 = self->_evaluationContext;
      v242 = 0;
      v97 = objc_msgSend_asDate_outError_(v47, v12, v204, &v242);
      v73 = v242;
      v100 = objc_msgSend_compare_(v97, v205, self->_date, v206);
      goto LABEL_192;
    case 0x12:
      if ((v9 != 2) | v15 & 1)
      {
        goto LABEL_198;
      }

      v161 = self->_evaluationContext;
      v241 = 0;
      v162 = objc_msgSend_asBoolean_outError_(v47, v12, v161, &v241);
      v15 = v241;
      value = self->_value;
      v164 = self->_evaluationContext;
      v240 = v15;
      v166 = objc_msgSend_asBoolean_outError_(value, v165, v164, &v240);
      v73 = v240;

      LOBYTE(v15) = v162 ^ v166 ^ 1;
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x13:
      if ((v9 != 2) | v15 & 1)
      {
        goto LABEL_180;
      }

      v132 = self->_evaluationContext;
      v239 = 0;
      v133 = objc_msgSend_asBoolean_outError_(v47, v12, v132, &v239);
      v15 = v239;
      v134 = self->_value;
      v135 = self->_evaluationContext;
      v238 = v15;
      v137 = objc_msgSend_asBoolean_outError_(v134, v136, v135, &v238);
      v73 = v238;

      LOBYTE(v15) = v133 ^ v137;
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x14:
      if ((v9 != 2) | v15 & 1)
      {
        goto LABEL_198;
      }

      v138 = self->_evaluationContext;
      v237 = 0;
      v139 = objc_msgSend_asBoolean_outError_(v47, v12, v138, &v237);
      v15 = v237;
      v140 = self->_value;
      v141 = self->_evaluationContext;
      v236 = v15;
      v143 = objc_msgSend_asBoolean_outError_(v140, v142, v141, &v236);
      v73 = v236;

      LOBYTE(v15) = v139 & (v143 ^ 1);
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x15:
      if ((v9 != 2) | v15 & 1)
      {
        goto LABEL_198;
      }

      v155 = self->_evaluationContext;
      v235 = 0;
      v156 = objc_msgSend_asBoolean_outError_(v47, v12, v155, &v235);
      v15 = v235;
      v157 = self->_value;
      v158 = self->_evaluationContext;
      v234 = v15;
      v160 = objc_msgSend_asBoolean_outError_(v157, v159, v158, &v234);
      v73 = v234;

      LOBYTE(v15) = v156 | v160 ^ 1;
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x16:
      if ((v9 != 2) | v15 & 1)
      {
        goto LABEL_198;
      }

      v167 = self->_evaluationContext;
      v233 = 0;
      v168 = objc_msgSend_asBoolean_outError_(v47, v12, v167, &v233);
      v15 = v233;
      v169 = self->_value;
      v170 = self->_evaluationContext;
      v232 = v15;
      v172 = objc_msgSend_asBoolean_outError_(v169, v171, v170, &v232);
      v73 = v232;

      LOBYTE(v15) = v172 & (v168 ^ 1);
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x17:
      if ((v9 != 2) | v15 & 1)
      {
        goto LABEL_198;
      }

      v108 = self->_evaluationContext;
      v231 = 0;
      v109 = objc_msgSend_asBoolean_outError_(v47, v12, v108, &v231);
      v15 = v231;
      v110 = self->_value;
      v111 = self->_evaluationContext;
      v230 = v15;
      v113 = objc_msgSend_asBoolean_outError_(v110, v112, v111, &v230);
      v73 = v230;

      LOBYTE(v15) = v113 | v109 ^ 1;
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x18:
      if ((v9 != 5 || (v48 & 1) == 0) | v15 & 1)
      {
        goto LABEL_198;
      }

      v104 = self->_evaluationContext;
      v229 = 0;
      v105 = objc_msgSend_asNumber_outError_(v47, v12, v104, &v229);
      v73 = v229;
      v107 = objc_msgSend_compare_outError_(v105, v106, self->_value, error);
LABEL_92:
      v147 = v107;

      v120 = v147 == 0;
      goto LABEL_172;
    case 0x19:
      if ((v9 != 5 || (v48 & 1) == 0) | v15 & 1)
      {
        goto LABEL_180;
      }

      v179 = self->_evaluationContext;
      v228 = 0;
      v87 = objc_msgSend_asNumber_outError_(v47, v12, v179, &v228);
      v73 = v228;
      v90 = objc_msgSend_compare_outError_(v87, v180, self->_value, error);
LABEL_141:
      v181 = v90;

      LOBYTE(v15) = v181 != 0;
      if (!v73)
      {
        goto LABEL_199;
      }

      goto LABEL_197;
    case 0x1A:
      if (v9 == 5)
      {
        v76 = v48;
      }

      else
      {
        v76 = 1;
      }

      if ((v76 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
        goto LABEL_143;
      }

      if (v9 != 5 || v15 & 1 | ((v48 & 1) == 0))
      {
        goto LABEL_198;
      }

      v77 = self->_evaluationContext;
      v227 = 0;
      v78 = objc_msgSend_asNumber_outError_(v47, v12, v77, &v227);
      v73 = v227;
      v80 = objc_msgSend_compare_outError_(v78, v79, self->_value, error);
LABEL_67:
      v119 = v80;

      v120 = v119 == 1;
      goto LABEL_172;
    case 0x1B:
      if (v9 == 5)
      {
        v173 = v48;
      }

      else
      {
        v173 = 1;
      }

      if ((v173 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
        goto LABEL_143;
      }

      if (v9 != 5 || v15 & 1 | ((v48 & 1) == 0))
      {
        goto LABEL_198;
      }

      v174 = self->_evaluationContext;
      v226 = 0;
      v82 = objc_msgSend_asNumber_outError_(v47, v12, v174, &v226);
      v73 = v226;
      v85 = objc_msgSend_compare_outError_(v82, v175, self->_value, error);
LABEL_103:
      v152 = v85;

      v153 = v152 >= 2;
      goto LABEL_193;
    case 0x1C:
      if (v9 == 5)
      {
        v176 = v48;
      }

      else
      {
        v176 = 1;
      }

      if ((v176 & 1) == 0)
      {
        goto LABEL_166;
      }

      if (v9 == 3)
      {
        goto LABEL_143;
      }

      if (v9 != 5 || v15 & 1 | ((v48 & 1) == 0))
      {
        goto LABEL_198;
      }

      v177 = self->_evaluationContext;
      v225 = 0;
      v92 = objc_msgSend_asNumber_outError_(v47, v12, v177, &v225);
      v73 = v225;
      v95 = objc_msgSend_compare_outError_(v92, v178, self->_value, error);
      goto LABEL_171;
    case 0x1D:
      if (v9 == 5)
      {
        v154 = v48;
      }

      else
      {
        v154 = 1;
      }

      if ((v154 & 1) == 0)
      {
LABEL_166:
        objc_msgSend_invalidComparisonError(TSCEError, v12, v13, v14);
        *error = LOBYTE(v15) = 0;
        goto LABEL_199;
      }

      if (v9 != 5)
      {
        if (v9 == 3)
        {
LABEL_143:
          objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v12, self->_evaluationContext, 4, v9);
        }

        goto LABEL_198;
      }

      if (v15 & 1 | ((v48 & 1) == 0))
      {
        goto LABEL_198;
      }

      v217 = self->_evaluationContext;
      v224 = 0;
      v97 = objc_msgSend_asNumber_outError_(v47, v12, v217, &v224);
      v73 = v224;
      v100 = objc_msgSend_compare_outError_(v97, v218, self->_value, error);
LABEL_192:
      v219 = v100;

      v153 = (v219 + 1) >= 2;
LABEL_193:
      LOBYTE(v15) = !v153;
      if (v73)
      {
        goto LABEL_197;
      }

      goto LABEL_199;
    case 0x1E:
      goto LABEL_199;
    case 0x1F:
      v128 = self->_matcher;
      v127 = self->_evaluationContext;
      v223 = 0;
      v123 = objc_msgSend_asString_outError_(v47, v12, v127, &v223);
      v73 = v223;
      v126 = objc_msgSend_containsMatchInString_(v128, v129, v123, v130);
LABEL_73:
      LOBYTE(v15) = v126;
      goto LABEL_74;
    default:
      goto LABEL_198;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v21.receiver = self;
    v21.super_class = TSCELogicalTest;
    if ([(TSCELogicalTest *)&v21 isEqual:v5])
    {
      if (self->_operation == *(v5 + 8))
      {
        value = self->_value;
        v8 = *(v5 + 16);
        v20 = 0;
        v9 = objc_msgSend_eq_outError_(value, v6, v8, &v20);
        v12 = v20;
        if (v9)
        {
          string = self->_string;
          v14 = *(v5 + 24);
          if (string == v14 || (isEqualToString = objc_msgSend_isEqualToString_(string, v10, v14, v11)) != 0)
          {
            date = self->_date;
            v17 = *(v5 + 32);
            if (date == v17)
            {
              LOBYTE(isEqualToString) = 1;
            }

            else
            {
              LOBYTE(isEqualToString) = objc_msgSend_isEqual_(date, v10, v17, v11);
            }
          }

          goto LABEL_12;
        }
      }

      else
      {
        v12 = 0;
      }

      LOBYTE(isEqualToString) = 0;
LABEL_12:
      v18 = (v12 == 0) & isEqualToString;

      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (unint64_t)cost
{
  operation = self->_operation;
  if (operation > 0x20)
  {
    return 0;
  }

  else
  {
    return qword_2217E0648[operation];
  }
}

@end