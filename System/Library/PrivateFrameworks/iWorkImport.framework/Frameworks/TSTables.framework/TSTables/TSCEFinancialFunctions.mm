@interface TSCEFinancialFunctions
+ (TSUDecimal)getDurationInPeriodsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity couponRate:(const TSUDecimal *)rate yield:(const TSUDecimal *)yield numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)self0;
+ (TSUDecimal)getFixedPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)error;
+ (TSUDecimal)getInterestPortionOfPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 per:(const TSUDecimal *)per nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)self0;
+ (TSUDecimal)getYieldDiscWithSettlementDate:(id)date maturity:(id)maturity price:(const TSUDecimal *)price redemptionValue:(const TSUDecimal *)value dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getCouponDaysBeforeSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getCouponDaysSinceSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getCouponDaysWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (double)getNumFutureCouponsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error;
+ (id)getCoupDateAfterEOMWithCoupDate:(id)date maturityDate:(id)maturityDate;
+ (id)nextCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error;
+ (id)prevCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error;
+ (int64_t)compareMonthAndDay:(id)day date2:(id)date2;
@end

@implementation TSCEFinancialFunctions

+ (int64_t)compareMonthAndDay:(id)day date2:(id)date2
{
  dayCopy = day;
  date2Copy = date2;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v10 = objc_msgSend_gregorianCalendar(TSCECalendar, v7, v8, v9);
  objc_msgSend_extractComponentsFromDate_year_month_day_(v10, v11, dayCopy, 0, &v19, &v18);
  objc_msgSend_extractComponentsFromDate_year_month_day_(v10, v12, date2Copy, 0, &v17, &v16);
  if (v19 <= v17)
  {
    if (v19 >= v17)
    {
      if (v18 >= v16)
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      if (v18 <= v16)
      {
        v13 = v14;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (id)prevCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error
{
  v11 = a4;
  maturityCopy = maturity;
  if (objc_msgSend_compare_(v11, v13, maturityCopy, v14) == 1)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSCEFinancialFunctions prevCoupDateWithSettlement:settlement:maturity:frequency:outError:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 127, 0, "Setlement date should not be larger than maturity date");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    v30 = objc_msgSend_functionName(settlement, v27, v28, v29);
    *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v31, v30, v32);

    v33 = 0;
    goto LABEL_33;
  }

  v34 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17);
  Year = objc_msgSend_extractYear_(v34, v35, v11, v36);
  v85 = 0;
  v86 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v34, v38, maturityCopy, 0, &v86, &v85);
  v40 = objc_msgSend_compareMonthAndDay_date2_(TSCEFinancialFunctions, v39, v11, maturityCopy);
  v43 = (12 / frequency);
  v44 = v86;
  if (v40 == 1)
  {
    v47 = v85;
    if (v86 == 2 && v85 == 29)
    {
      if (Year == 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = objc_msgSend_functionName(settlement, v41, v42, 2, 29);
        v51 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v49, v48, v50);
LABEL_25:
        v33 = 0;
        *error = v51;
        goto LABEL_32;
      }

      v68 = Year + 1;
      v69 = Year - 0x7FFFFFFFFFFFFFFFLL;
      while ((objc_msgSend_isLeapYear_(TSCECalendar, v41, v68, v44, v47) & 1) == 0)
      {
        ++v68;
        if (__CFADD__(v69++, 1))
        {
          v48 = objc_msgSend_functionName(settlement, v41, v70, v44);
          v51 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v72, v48, v73);
          goto LABEL_25;
        }
      }

      v56 = objc_msgSend_dateWithYear_month_day_(v34, v41, v68, v86, v85);
    }

    else
    {
      v56 = objc_msgSend_dateWithYear_month_day_(v34, v41, Year + 1, v86, v85);
    }

    v52 = v56;
    v58 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v74, v52, maturityCopy);
    v75 = -1;
    v54 = v52;
    for (i = objc_msgSend_compare_(v58, v76, v11, v77); i == 1; i = objc_msgSend_compare_(v81, v82, v11, v83))
    {
      v79 = sub_2214A3CE8(v52, (v43 * v75));

      v81 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v80, v79, maturityCopy);

      --v75;
      v54 = v79;
      v58 = v81;
    }

    goto LABEL_30;
  }

  if (v40 == -1)
  {
    if (v86 == 2 && v85 == 29)
    {
      for (j = objc_msgSend_isLeapYear_(TSCECalendar, v41, Year, 2); (j & 1) == 0; j = objc_msgSend_isLeapYear_(TSCECalendar, v41, Year, v46))
      {
        ++Year;
      }
    }

    v52 = objc_msgSend_dateWithYear_month_day_(v34, v41, Year, v86, v85);
    v58 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v57, v52, maturityCopy);
    v59 = -1;
    v54 = v52;
    for (k = objc_msgSend_compare_(v58, v60, v11, v61); k == 1; k = objc_msgSend_compare_(v65, v66, v11, v67))
    {
      v63 = sub_2214A3CE8(v52, (v43 * v59));

      v65 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v64, v63, maturityCopy);

      --v59;
      v54 = v63;
      v58 = v65;
    }

LABEL_30:
    v53 = v58;
    v55 = v53;
    goto LABEL_31;
  }

  v52 = 0;
  v53 = objc_msgSend_dateWithYear_month_day_(v34, v41, Year, v86, v85);
  v54 = 0;
  v55 = 0;
LABEL_31:
  v48 = v53;

  v33 = v48;
LABEL_32:

LABEL_33:

  return v33;
}

+ (id)nextCoupDateWithSettlement:(id)settlement settlement:(id)a4 maturity:(id)maturity frequency:(int)frequency outError:(id *)error
{
  v11 = a4;
  maturityCopy = maturity;
  if (objc_msgSend_compare_(v11, v13, maturityCopy, v14) == 1)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSCEFinancialFunctions nextCoupDateWithSettlement:settlement:maturity:frequency:outError:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 207, 0, "Setlement date should not be larger than maturity date");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    v30 = objc_msgSend_functionName(settlement, v27, v28, v29);
    *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v31, v30, v32);

    v33 = 0;
    goto LABEL_33;
  }

  v34 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17);
  Year = objc_msgSend_extractYear_(v34, v35, v11, v36);
  v88 = 0;
  v89 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v34, v38, maturityCopy, 0, &v89, &v88);
  v40 = objc_msgSend_compareMonthAndDay_date2_(TSCEFinancialFunctions, v39, v11, maturityCopy);
  v43 = (12 / frequency);
  v44 = v89;
  if (v40 == 1)
  {
    if (v89 == 2 && v88 == 29)
    {
      for (i = objc_msgSend_isLeapYear_(TSCECalendar, v41, Year, 2); (i & 1) == 0; i = objc_msgSend_isLeapYear_(TSCECalendar, v41, Year, v51))
      {
        --Year;
      }
    }

    v57 = objc_msgSend_dateWithYear_month_day_(v34, v41, Year, v89, v88);
    v59 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v58, v57, maturityCopy);
    v60 = 1;
    v53 = v57;
    for (j = objc_msgSend_compare_(v59, v61, v11, v62); j == -1 || !objc_msgSend_compare_(v59, v64, v11, v65); j = objc_msgSend_compare_(v68, v69, v11, v70))
    {
      v66 = sub_2214A3CE8(v57, (v43 * v60));

      v68 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v67, v66, maturityCopy);

      ++v60;
      v53 = v66;
      v59 = v68;
    }

LABEL_30:
    v54 = v59;
    v52 = v57;
    v55 = v54;
    goto LABEL_31;
  }

  if (v40 == -1)
  {
    v45 = v88;
    if (v89 == 2 && v88 == 29)
    {
      if (Year == 0x8000000000000000)
      {
        v46 = objc_msgSend_functionName(settlement, v41, v42, 2, 29);
        v49 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v47, v46, v48);
LABEL_24:
        v33 = 0;
        *error = v49;
        goto LABEL_32;
      }

      v71 = Year - 1;
      while ((objc_msgSend_isLeapYear_(TSCECalendar, v41, v71, v44, v45) & 1) == 0)
      {
        if (--v71 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v46 = objc_msgSend_functionName(settlement, v41, v72, v44);
          v49 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v73, v46, v74);
          goto LABEL_24;
        }
      }

      v56 = objc_msgSend_dateWithYear_month_day_(v34, v41, v71, v89, v88);
    }

    else
    {
      v56 = objc_msgSend_dateWithYear_month_day_(v34, v41, Year - 1, v89, v88);
    }

    v57 = v56;
    v59 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v75, v57, maturityCopy);
    v76 = 1;
    v53 = v57;
    for (k = objc_msgSend_compare_(v59, v77, v11, v78); k == -1 || !objc_msgSend_compare_(v59, v80, v11, v81); k = objc_msgSend_compare_(v84, v85, v11, v86))
    {
      v82 = sub_2214A3CE8(v57, (v43 * v76));

      v84 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v83, v82, maturityCopy);

      ++v76;
      v53 = v82;
      v59 = v84;
    }

    goto LABEL_30;
  }

  v52 = objc_msgSend_dateWithYear_month_day_(v34, v41, Year, v89, v88);
  v53 = 0;
  v54 = sub_2214A3CE8(v52, 12 / frequency);
  v55 = 0;
LABEL_31:
  v46 = v54;

  v33 = v46;
LABEL_32:

LABEL_33:

  return v33;
}

+ (id)getCoupDateAfterEOMWithCoupDate:(id)date maturityDate:(id)maturityDate
{
  dateCopy = date;
  maturityDateCopy = maturityDate;
  v10 = objc_msgSend_gregorianCalendar(TSCECalendar, v7, v8, v9);
  if (objc_msgSend_extractDay_(v10, v11, dateCopy, v12) <= 27)
  {
    goto LABEL_10;
  }

  v29 = 0;
  v30 = 0;
  v28 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v10, v13, maturityDateCopy, &v30, &v29, &v28);
  isLeapYear = objc_msgSend_isLeapYear_(TSCECalendar, v14, v30, v15);
  if (v29 > 0xC)
  {
    goto LABEL_18;
  }

  if (((1 << v29) & 0x15AA) != 0)
  {
    if (v28 == 31)
    {
      goto LABEL_5;
    }

LABEL_10:
    v23 = dateCopy;
    goto LABEL_15;
  }

  if (((1 << v29) & 0xA50) != 0)
  {
    if (v28 != 30)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_18:
    if (isLeapYear)
    {
      if (v28 != 29)
      {
        goto LABEL_10;
      }
    }

    else if (v28 != 28)
    {
      goto LABEL_10;
    }
  }

LABEL_5:
  v26 = 0;
  v27 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_(v10, v17, dateCopy, &v27, &v26, 0);
  v20 = objc_msgSend_isLeapYear_(TSCECalendar, v18, v27, v19);
  v22 = v26 - 1;
  if (v26 - 1) < 0xC && ((0xFFDu >> v22))
  {
    objc_msgSend_dateWithYear_month_day_(v10, v21, v27, v26, qword_2217E1450[v22]);
  }

  else if (v20)
  {
    objc_msgSend_dateWithYear_month_day_(v10, v21, v27, v26, 29);
  }

  else
  {
    objc_msgSend_dateWithYear_month_day_(v10, v21, v27, v26, 28);
  }
  v23 = ;
LABEL_15:
  v24 = v23;

  return v24;
}

+ (double)getCouponDaysBeforeSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  v15 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v14, date, settlementCopy, maturity, coupons, error);
  v16 = v15;
  v17 = 0.0;
  if (!*error)
  {
    v17 = sub_2214A452C(v15, settlementCopy, mode, error);
  }

  return v17;
}

+ (double)getCouponDaysWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  maturityCopy = maturity;
  if (mode <= 2)
  {
    if (mode && mode != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (mode == 3)
  {
    v21 = 365.0;
    goto LABEL_12;
  }

  if (mode == 4)
  {
LABEL_10:
    v21 = 360.0;
LABEL_12:
    v20 = v21 / coupons;
    goto LABEL_13;
  }

LABEL_4:
  v17 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v14, date, settlementCopy, maturityCopy, coupons, error);
  if (!*error)
  {
    v18 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v16, date, settlementCopy, maturityCopy, coupons, error);
    v19 = v18;
    if (!*error)
    {
      v20 = sub_2214A452C(v17, v18, mode, error);

      goto LABEL_13;
    }
  }

  v20 = 0.0;
LABEL_13:

  return v20;
}

+ (double)getCouponDaysSinceSettlementDateWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  v15 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v14, date, settlementCopy, maturity, coupons, error);
  v16 = 0.0;
  if (!*error)
  {
    v16 = sub_2214A452C(settlementCopy, v15, mode, error);
  }

  return v16;
}

+ (double)getNumFutureCouponsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)error
{
  settlementCopy = settlement;
  maturityCopy = maturity;
  v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v14, v15, v16);
  v18 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setMonth_(v18, v19, (12.0 / coupons), v20);
  Year = objc_msgSend_extractYear_(v17, v21, settlementCopy, v22);
  v27 = objc_msgSend_extractYear_(v17, v23, maturityCopy, v24);
  couponsCopy = coupons;
  if (Year == v27)
  {
    v30 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v26, date, settlementCopy, maturityCopy, couponsCopy, error);
    if (!*error)
    {
      v31 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v29, v30, maturityCopy);
      v32 = v30;
      v33 = 0.0;
      v34 = 12;
      v35 = v32;
      for (i = objc_msgSend_compare_(v31, v36, maturityCopy, v37); i != 1; i = objc_msgSend_compare_(v44, v45, maturityCopy, v46))
      {
        objc_msgSend_setMonth_(v18, v39, (v34 / coupons), v40);
        v42 = objc_msgSend_dateByAddingComponents_toDate_options_(v17, v41, v18, v32, 0);

        v44 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v43, v42, maturityCopy);
        v33 = v33 + 1.0;

        v34 += 12;
        v35 = v42;
        v31 = v44;
      }

LABEL_18:

      v30 = v35;
      goto LABEL_19;
    }
  }

  else
  {
    v30 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v26, date, settlementCopy, maturityCopy, couponsCopy, error);
    if (!*error)
    {
      v31 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v47, v30, maturityCopy);
      v48 = v30;
      v49 = 0.0;
      v50 = 12;
      v35 = v48;
      v78 = settlementCopy;
      for (j = objc_msgSend_extractYear_(v17, v51, v31, v52); j == Year; j = objc_msgSend_extractYear_(v17, v60, v59, v61))
      {
        objc_msgSend_setMonth_(v18, v54, (v50 / coupons), v55);
        v57 = objc_msgSend_dateByAddingComponents_toDate_options_(v17, v56, v18, v48, 0);

        v59 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v58, v57, maturityCopy);
        v49 = v49 + 1.0;

        v50 += 12;
        v35 = v57;
        v31 = v59;
      }

      v62 = v27 - Year + -1.0;
      if (v62 <= 0.0)
      {
        v33 = v49;
      }

      else
      {
        v33 = v49 + coupons * v62;
      }

      v63 = maturityCopy;

      v32 = v63;
      v64 = -12;
      v65 = v32;
      for (k = objc_msgSend_extractYear_(v17, v66, v32, v67); k == v27; k = objc_msgSend_extractYear_(v17, v75, v74, v76))
      {
        objc_msgSend_setMonth_(v18, v69, (v64 / coupons), v70);
        v72 = objc_msgSend_dateByAddingComponents_toDate_options_(v17, v71, v18, v32, 0);
        v74 = objc_msgSend_getCoupDateAfterEOMWithCoupDate_maturityDate_(TSCEFinancialFunctions, v73, v72, v32);
        v33 = v33 + 1.0;

        v64 -= 12;
        v65 = v74;
      }

      settlementCopy = v78;
      goto LABEL_18;
    }
  }

  v32 = 0;
  v33 = 0.0;
LABEL_19:

  return v33;
}

+ (TSUDecimal)getYieldDiscWithSettlementDate:(id)date maturity:(id)maturity price:(const TSUDecimal *)price redemptionValue:(const TSUDecimal *)value dayBasisMode:(int64_t)mode outError:(id *)error
{
  dateCopy = date;
  maturityCopy = maturity;
  sub_2214A45C0(dateCopy, maturityCopy, mode, error);
  TSUDecimal::operator=();
  sub_2214A452C(dateCopy, maturityCopy, mode, error);
  TSUDecimal::operator=();
  v16 = *value;
  TSUDecimal::operator-=();
  TSUDecimal::operator/=();
  TSUDecimal::operator*=();
  TSUDecimal::operator/=();

  v15 = v16._decimal.w[1];
  v14 = v16._decimal.w[0];
  result._decimal.w[1] = v15;
  result._decimal.w[0] = v14;
  return result;
}

+ (TSUDecimal)getFixedPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)error
{
  beginningCopy = beginning;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  if (!TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v37 = *a4;
    TSUDecimal::operator+=();
    TSUDecimal::doubleValue(&v37);
    v15 = v14;
    TSUDecimal::doubleValue(nper);
    pow(v15, v16);
    TSUDecimal::operator=();
    if (TSUDecimal::isInf(&v32))
    {
      v20 = objc_msgSend_functionName(rate, v17, v18, v19);
      *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v21, v20, v22);
    }

    else
    {
      v37._decimal.w[0] = TSUDecimal::operator-();
      v37._decimal.w[1] = v23;
      TSUDecimal::operator*=();
      TSUDecimal::operator-=();
      TSUDecimal::operator*=();
      v34 = v37;
      TSUDecimal::operator=();
      if (beginningCopy)
      {
        v37 = v31;
        TSUDecimal::operator+=();
        v24 = v37._decimal.w[0];
        v25 = v37._decimal.w[1];
        TSUDecimal::operator=();
        v37 = v32;
        TSUDecimal::operator-=();
        v37._decimal.w[0] = v24;
        v37._decimal.w[1] = v25;
        TSUDecimal::operator*=();
      }

      else
      {
        v37 = v32;
        TSUDecimal::operator-=();
      }

      v33 = v37;
      if (!TSUDecimal::isZero(&v33))
      {
        v37 = v34;
        goto LABEL_3;
      }

      *error = objc_msgSend_divideByZeroError(TSCEError, v26, v27, v28);
    }

    TSUDecimal::operator=();
    goto LABEL_12;
  }

  v37._decimal.w[0] = TSUDecimal::operator-();
  v37._decimal.w[1] = v13;
  TSUDecimal::operator-=();
LABEL_3:
  TSUDecimal::operator/=();
  v35 = v37;
  v36 = v37;
LABEL_12:
  v30 = v36._decimal.w[1];
  v29 = v36._decimal.w[0];
  result._decimal.w[1] = v30;
  result._decimal.w[0] = v29;
  return result;
}

+ (TSUDecimal)getInterestPortionOfPaymentWithRate:(id)rate rate:(const TSUDecimal *)a4 per:(const TSUDecimal *)per nper:(const TSUDecimal *)nper pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning outError:(id *)self0
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  if (!TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
    v71 = v66;
    TSUDecimal::operator+=();
    TSUDecimal::doubleValue(&v71);
    v17 = v16;
    TSUDecimal::doubleValue(nper);
    pow(v17, v18);
    TSUDecimal::operator=();
    if (TSUDecimal::isInf(&v67))
    {
      v22 = objc_msgSend_functionName(rate, v19, v20, v21);
      v25 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v23, v22, v24);
    }

    else
    {
      TSUDecimal::operator=();
      v71 = v64;
      TSUDecimal::operator+=();
      v65 = v71;
      TSUDecimal::operator=();
      v71 = *per;
      TSUDecimal::operator-=();
      TSUDecimal::doubleValue(&v65);
      v27 = v26;
      TSUDecimal::doubleValue(&v71);
      pow(v27, v28);
      TSUDecimal::operator=();
      if (!TSUDecimal::isInf(&v66))
      {
        if (beginning)
        {
          TSUDecimal::operator=();
          if (TSUDecimal::operator<())
          {
            goto LABEL_8;
          }

          TSUDecimal::operator=();
          v71 = v63;
          TSUDecimal::operator+=();
          v64 = v71;
          TSUDecimal::operator=();
          v71 = *nper;
          TSUDecimal::operator-=();
          TSUDecimal::doubleValue(&v64);
          v37 = v36;
          TSUDecimal::doubleValue(&v71);
          pow(v37, v38);
          TSUDecimal::operator=();
          if (TSUDecimal::isInf(&v65))
          {
            v22 = objc_msgSend_functionName(rate, v39, v40, v41);
            v25 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v42, v22, v43);
            goto LABEL_7;
          }

          TSUDecimal::operator=();
          v71 = v62;
          TSUDecimal::operator+=();
          v63 = v71;
          TSUDecimal::operator=();
          v71 = *per;
          TSUDecimal::operator-=();
          v64._decimal.w[0] = sub_2212B2BA4(&v63, &v71);
          v64._decimal.w[1] = v47;
          if (TSUDecimal::isInf(&v64))
          {
            v22 = objc_msgSend_functionName(rate, v48, v49, v50);
            v25 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v51, v22, v52);
            goto LABEL_7;
          }

          v71 = v65;
          TSUDecimal::operator-=();
          v53 = v71._decimal.w[0];
          v54 = v71._decimal.w[1];
          TSUDecimal::operator=();
          v71 = v67;
          TSUDecimal::operator-=();
          v71._decimal.w[0] = v53;
          v71._decimal.w[1] = v54;
          TSUDecimal::operator/=();
          v63 = v71;
          TSUDecimal::operator=();
          v71 = v66;
          TSUDecimal::operator-=();
          v55 = v71._decimal.w[0];
          v56 = v71._decimal.w[1];
          TSUDecimal::operator=();
          v71 = v67;
          TSUDecimal::operator-=();
          v71._decimal.w[0] = v55;
          v71._decimal.w[1] = v56;
          TSUDecimal::operator/=();
          v57 = v71._decimal.w[0];
          v58 = v71._decimal.w[1];
          TSUDecimal::operator=();
          v71 = v61;
          TSUDecimal::operator+=();
          v71._decimal.w[0] = v57;
          v71._decimal.w[1] = v58;
          TSUDecimal::operator/=();
          v71 = *pv;
          TSUDecimal::operator*=();
          v59 = v71._decimal.w[0];
          v60 = v71._decimal.w[1];
          v71 = *fv;
          TSUDecimal::operator*=();
          v71._decimal.w[0] = v59;
          v71._decimal.w[1] = v60;
          TSUDecimal::operator-=();
          v71 = *a4;
        }

        else
        {
          TSUDecimal::operator=();
          v71 = v66;
          TSUDecimal::operator-=();
          v44 = v71._decimal.w[0];
          v45 = v71._decimal.w[1];
          TSUDecimal::operator=();
          v71 = v67;
          TSUDecimal::operator-=();
          v63 = v71;
          v71._decimal.w[0] = v44;
          v71._decimal.w[1] = v45;
          TSUDecimal::operator/=();
          v65 = v71;
          v71 = *pv;
          TSUDecimal::operator+=();
          TSUDecimal::operator*=();
          v63 = v71;
          v71 = *pv;
          TSUDecimal::operator-=();
          v64 = v71;
          v71 = *a4;
        }

        TSUDecimal::operator*=();
        v68 = v71;
        v69 = TSUDecimal::operator-();
        v70 = v46;
        goto LABEL_9;
      }

      v22 = objc_msgSend_functionName(rate, v29, v30, v31);
      v25 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v32, v22, v33);
    }

LABEL_7:
    *error = v25;

LABEL_8:
    TSUDecimal::operator=();
    goto LABEL_9;
  }

  TSUDecimal::operator=();
LABEL_9:
  v34 = v69;
  v35 = v70;
  result._decimal.w[1] = v35;
  result._decimal.w[0] = v34;
  return result;
}

+ (TSUDecimal)getDurationInPeriodsWithSettlementDate:(id)date settlement:(id)settlement maturity:(id)maturity couponRate:(const TSUDecimal *)rate yield:(const TSUDecimal *)yield numCoupons:(double)coupons dayBasisMode:(int64_t)mode outError:(id *)self0
{
  settlementCopy = settlement;
  maturityCopy = maturity;
  objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v18, date, settlementCopy, maturityCopy, mode, error, coupons);
  TSUDecimal::operator=();
  if (*error || (objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v19, date, settlementCopy, maturityCopy, mode, error, coupons), TSUDecimal::operator=(), *error) || (v44 = v42, TSUDecimal::operator-=(), objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v20, date, settlementCopy, maturityCopy, mode, error, coupons), *error))
  {
    TSUDecimal::operator=();
  }

  else
  {
    v22 = v21;
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v44 = *rate;
    TSUDecimal::operator*=();
    TSUDecimal::operator=();
    TSUDecimal::operator/=();
    v23 = v44;
    v44 = v42;
    TSUDecimal::operator/=();
    v39 = v42;
    if (v22 <= 0.0)
    {
LABEL_10:
      TSUDecimal::operator=();
      TSUDecimal::operator-=();
      TSUDecimal::operator=();
      v44 = v39;
      TSUDecimal::operator*=();
      TSUDecimal::operator/=();
      v38 = v44;
      TSUDecimal::operator+=();
      TSUDecimal::operator=();
      v44 = v37;
      TSUDecimal::operator/=();
      v38 = v44;
      TSUDecimal::operator+=();
      v44 = v41;
      TSUDecimal::operator/=();
      v43 = v44;
    }

    else
    {
      v24 = 1;
      while (1)
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v44 = *yield;
        TSUDecimal::operator/=();
        v44 = v37;
        TSUDecimal::operator+=();
        v38 = v44;
        TSUDecimal::doubleValue(&v38);
        v26 = v25;
        TSUDecimal::doubleValue(&v39);
        pow(v26, v27);
        TSUDecimal::operator=();
        v40 = v44;
        if (TSUDecimal::isInf(&v40))
        {
          break;
        }

        v44 = v23;
        TSUDecimal::operator*=();
        TSUDecimal::operator/=();
        v38 = v44;
        TSUDecimal::operator+=();
        v44 = v23;
        TSUDecimal::operator/=();
        v38 = v44;
        TSUDecimal::operator+=();
        TSUDecimal::operator=();
        TSUDecimal::operator+=();
        v31 = v24++;
        if (v22 <= v31)
        {
          goto LABEL_10;
        }
      }

      v32 = objc_msgSend_functionName(date, v28, v29, v30);
      *error = objc_msgSend_numberErrorForFunctionName_(TSCEError, v33, v32, v34);

      TSUDecimal::operator=();
    }
  }

  v36 = v43._decimal.w[1];
  v35 = v43._decimal.w[0];
  result._decimal.w[1] = v36;
  result._decimal.w[0] = v35;
  return result;
}

@end