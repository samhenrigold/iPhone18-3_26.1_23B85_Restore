@interface TSCEFunction_REFERENCE_NAME
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (void)addNameFragmentPrecedentsForHeaderRange:(id)range headerRangeRef:(const TSCERangeRef *)ref;
@end

@implementation TSCEFunction_REFERENCE_NAME

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  sub_2210F0C3C(&v239);
  columns.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  columns._tableUID._lower = 0;
  columns._tableUID._upper = 0;
  if (*(arguments + 1) == *arguments)
  {
    v18 = 1;
  }

  else
  {
    v11 = **arguments;
    if ((objc_msgSend_isTokenOrEmptyArg(v11, v12, v13, v14) & 1) != 0 || objc_msgSend_deepType_(v11, v15, context, v16) == 10)
    {
      v18 = 1;
    }

    else
    {
      v237 = 0;
      v102 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v11, v17, context, spec, 0, &v237);
      v63 = v237;
      if (v63)
      {
        v106 = objc_msgSend_functionName(spec, v103, v104, v105);
        v109 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v107, v106, v108);
        v62 = objc_msgSend_raiseErrorOrConvert_(context, v110, v109, v111);

        goto LABEL_103;
      }

      if (v102)
      {
        objc_msgSend_rangeRef(v102, v103, v104, v105);
      }

      else
      {
        memset(&v234, 0, 32);
      }

      columns = v234._columns;
      v161 = objc_msgSend_tractRef(v102, v103, v104, v105);
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      v162 = *(v161 + 64);
      *&v241[13] = *(v161 + 77);
      *v241 = v162;
      if (objc_msgSend_isOutputOfAFunction(v102, v163, v164, v165))
      {
        v235.range._topLeft = columns.range._topLeft;
        *&v235.range._bottomRight.row = columns._tableUID;
        *&v234._columns = 0;
        TSCERangeRef::TSCERangeRef(&v242, &v235);
        v234._columns._singleRange = v242.range;
        *&v234._columns._multipleRanges = v242._tableUID;
        LOBYTE(v234._rows._singleRange._begin) = 0;
        v234._tableUID._upper = 0;
        memset(&v234._rows._singleRange._end, 0, 18);
        objc_msgSend_addCalculatedPrecedent_(context, v166, &v234, v167);

        v235.range._topLeft = columns.range._bottomRight;
        *&v235.range._bottomRight.row = columns._tableUID;
        *&v234._columns = 0;
        TSCERangeRef::TSCERangeRef(&v242, &v235);
        v234._columns._singleRange = v242.range;
        *&v234._columns._multipleRanges = v242._tableUID;
        LOBYTE(v234._rows._singleRange._begin) = 0;
        v234._tableUID._upper = 0;
        memset(&v234._rows._singleRange._end, 0, 18);
        objc_msgSend_addCalculatedPrecedent_(context, v168, &v234, v169);
      }

      v18 = 0;
    }
  }

  v236.origin = 0;
  v236.size = 0;
  v236.origin = *objc_msgSend_containingCell(context, v8, v9, v10);
  v236.size = 0x100000001;
  v22 = objc_msgSend_containingTable(context, v19, v20, v21);
  TSCERangeRef::TSCERangeRef(&v235, &v236, v22);
  if (v18)
  {
    columns = v235;
    v26 = objc_msgSend_containingCell(context, v23, v24, v25);
    v30 = objc_msgSend_containingCell(context, v27, v28, v29);
    v34 = objc_msgSend_containingTable(context, v31, v32, v33);
    TSCECellTractRefCore::TSCECellTractRefCore(&v234, v26, v30, v34);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    *v241 = v234._tableUID;
    *&v241[13] = *(&v234._tableUID._upper + 5);
    TSUIndexSet::~TSUIndexSet(&v234._rows);
    TSUIndexSet::~TSUIndexSet(&v234._columns);
  }

  topLeft = columns.range._topLeft;
  tableUID = columns._tableUID;
  v35 = objc_msgSend_calcEngine(context, v23, v24, v25);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v35, v36, &columns, v37);

  if ((IsValidIncludingSheet & 1) == 0)
  {
    v59 = objc_msgSend_invalidReferenceError(TSCEError, v39, v40, v41);
    v62 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);

    v63 = 0;
    goto LABEL_103;
  }

  if (*v241 != 0)
  {
    objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v39, v241, v41);
    *&v234._columns = 0;
    TSCERangeRef::TSCERangeRef(&v242, &v228);
    v234._columns._singleRange = v242.range;
    *&v234._columns._multipleRanges = v242._tableUID;
    LOBYTE(v234._rows._singleRange._begin) = 0;
    v234._tableUID._upper = 0;
    memset(&v234._rows._singleRange._end, 0, 18);
    objc_msgSend_addCalculatedPrecedent_(context, v42, &v234, v43);
  }

  v231 = *v241;
  v225 = objc_msgSend_calcEngine(context, v39, v40, v41);
  v46 = objc_msgSend_tableResolverForTableUID_(v225, v44, &v231, v45);
  v227 = objc_msgSend_namer(v225, v47, v48, v49);
  v53 = objc_alloc_init(TSCERefNamingContext);
  if (v46)
  {
    v54 = objc_msgSend_sheetName(v46, v50, v51, v52);
    objc_msgSend_setContextSheetName_(v53, v55, v54, v56);
  }

  else
  {
    v54 = 0;
    objc_msgSend_setContextSheetName_(v53, v50, 0, v52);
  }

  if (v46)
  {
  }

  objc_msgSend_setAllowTableName_(v53, v57, 1, v58);
  objc_msgSend_setShowGeometricAsBase_(v53, v64, 1, v65);
  objc_msgSend_setQuoteComponents_(v53, v66, 1, v67);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v75 = 0;
    goto LABEL_28;
  }

  v68 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v68, v69, v70, v71) & 1) != 0 || objc_msgSend_deepType_(v68, v72, context, v73) == 10)
  {
    v75 = 0;
  }

  else
  {
    v230 = 0;
    v138 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v68, v74, context, spec, 1, &v230);
    v63 = v230;
    LODWORD(v75) = objc_msgSend_integer(v138, v139, v140, v141);

    if (v63)
    {
      goto LABEL_60;
    }

    if (v75 >= 3)
    {
LABEL_107:
      v215 = objc_msgSend_invalidReferenceNameAttributeError(TSCEError, v142, v143, v144);
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v223, v215, v224);
LABEL_101:

      goto LABEL_102;
    }

    v75 = v75;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
LABEL_28:
    v83 = 1;
LABEL_29:
    v84 = v46;
    v88 = v84;
    if (v46 && (v89 = objc_msgSend_tableUID(v84, v85, v86, v87), v91 = v90, v94 = objc_msgSend_containingTable(context, v90, v92, v93), v89 == *v94) && (v68 = v88, v91 == v94[1]) || (v95 = objc_msgSend_containingTable(context, v85, v86, v87), objc_msgSend_tableResolverForTableUID_(v225, v96, v95, v97), v68 = objc_claimAutoreleasedReturnValue(), v88, v68))
    {
      v98 = objc_msgSend_containingCell(context, v85, v86, v87);
      isHeaderCell = objc_msgSend_isHeaderCell_(v68, v99, v98, v100);
    }

    else
    {
      isHeaderCell = 1;
    }

    if (TSCERangeRef::isSpanningAllColumns(&columns) || TSCERangeRef::isSpanningAllRows(&columns))
    {
      isSingleCell = 1;
      if (v46)
      {
        goto LABEL_40;
      }
    }

    else
    {
      isSingleCell = TSCERangeRef::isSingleCell(&columns);
      if (v46)
      {
LABEL_40:
        *&v234._columns = topLeft;
        v116 = objc_msgSend_isHeaderCell_(v88, v112, &v234, v114);
        if (v116)
        {
          LOBYTE(v116) = TSCERangeRef::isSingleCell(&columns);
        }

LABEL_44:
        v117 = (isHeaderCell ^ 1) & v83;
        if (v117 & isSingleCell) != 1 || (v116)
        {
          goto LABEL_91;
        }

        v242.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v242._tableUID._lower = 0;
        v242._tableUID._upper = 0;
        v228.range = v242.range;
        v228._tableUID._lower = 0;
        v228._tableUID._upper = 0;
        if (TSCERangeRef::isSpanningAllRows(&columns))
        {
          v121 = objc_msgSend_calcEngine(context, v118, v119, v120);
          v125 = objc_msgSend_headerNameMgr(v121, v122, v123, v124);
          v128 = v125;
          if (v125)
          {
LABEL_48:
            objc_msgSend_baseHeaderRowsForCell_(v125, v126, &topLeft, v127);
LABEL_73:
            v242 = v234._columns;
LABEL_74:

LABEL_75:
            if (TSCERangeRef::isValid(&v242))
            {
              if (context)
              {
                objc_msgSend_containingCellRef(context, v176, v177, v178);
              }

              else
              {
                memset(&v234, 0, 24);
              }

              if (!TSCERangeRef::containsCellRef(&v242, &v234))
              {
                *&v234._columns = 1;
                v234._columns._singleRange = v242.range;
                *&v234._columns._multipleRanges = v242._tableUID;
                LOBYTE(v234._rows._singleRange._begin) = 0;
                v234._tableUID._upper = 0;
                memset(&v234._rows._singleRange._end, 0, 18);
                objc_msgSend_addCalculatedPrecedent_(context, v179, &v234, v180);
              }
            }

            if (TSCERangeRef::isValid(&v228))
            {
              if (context)
              {
                objc_msgSend_containingCellRef(context, v181, v182, v183);
              }

              else
              {
                memset(&v234, 0, 24);
              }

              if (!TSCERangeRef::containsCellRef(&v228, &v234))
              {
                *&v234._columns = 1;
                v234._columns._singleRange = v228.range;
                *&v234._columns._multipleRanges = v228._tableUID;
                LOBYTE(v234._rows._singleRange._begin) = 0;
                v234._tableUID._upper = 0;
                memset(&v234._rows._singleRange._end, 0, 18);
                objc_msgSend_addCalculatedPrecedent_(context, v184, &v234, v185);
              }
            }

            if (TSCERangeRef::isValid(&v242))
            {
              objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(self, v186, context, &v242);
            }

            if (TSCERangeRef::isValid(&v228))
            {
              objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(self, v112, context, &v228);
            }

LABEL_91:
            if (v75 == 2)
            {
              objc_msgSend_setForceSheetName_(v53, v112, 1, v114);
            }

            else if (v75 != 1)
            {
              v187 = objc_msgSend_containingTable(context, v112, v113, v114);
              objc_msgSend_setHostTableUID_(v53, v188, *v187, v187[1]);
              objc_msgSend_setAllowTableName_(v53, v189, 0, v190);
              goto LABEL_96;
            }

            objc_msgSend_setForceTableName_(v53, v112, 1, v114);
            v193 = TSKMakeUIDStructRandom();
            objc_msgSend_setHostTableUID_(v53, v194, v193, v194);
LABEL_96:
            objc_msgSend_setSuppressIdenticalEndReference_(v53, v191, 1, v192);
            objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v53, v195, 1, v196);
            objc_msgSend_setUseSymbolicNames_(v53, v197, v117, v198);
            if (v46 && objc_msgSend_isPivotTable(v88, v199, v200, v201))
            {
              v202 = [TSCECellTractRef alloc];
              v205 = objc_msgSend_initWithCppCellTractRef_(v202, v203, &v239, v204);
              objc_msgSend_setUseSymbolicNames_(v53, v206, 0, v207);
              objc_msgSend_setShowGeometricAsBase_(v53, v208, 0, v209);
              v213 = objc_msgSend_coordMapper(v88, v210, v211, v212);
              v215 = objc_msgSend_nameForViewTractRef_namingContext_coordMapper_(v227, v214, v205, v53, v213);
            }

            else
            {
              v216 = [TSCECellTractRef alloc];
              v205 = objc_msgSend_initWithCppCellTractRef_(v216, v217, &v239, v218);
              v215 = objc_msgSend_nameForBaseTractRef_namingContext_(v227, v219, v205, v53);
            }

            v62 = objc_msgSend_stringValue_(TSCEStringValue, v220, v215, v221);
            v63 = 0;
            goto LABEL_101;
          }
        }

        else
        {
          if (TSCERangeRef::isSpanningAllColumns(&columns))
          {
            v121 = objc_msgSend_calcEngine(context, v129, v130, v131);
            v135 = objc_msgSend_headerNameMgr(v121, v132, v133, v134);
            v128 = v135;
            if (v135)
            {
              objc_msgSend_baseHeaderColumnsForCell_(v135, v136, &topLeft, v137);
            }

            else
            {
              memset(&v234, 0, 32);
            }

            v228 = v234._columns;
            goto LABEL_74;
          }

          if (!TSCERangeRef::isSingleCell(&columns))
          {
            goto LABEL_75;
          }

          v148 = objc_msgSend_calcEngine(context, v145, v146, v147);
          v152 = objc_msgSend_headerNameMgr(v148, v149, v150, v151);
          v155 = v152;
          if (v152)
          {
            objc_msgSend_baseHeaderColumnsForCell_(v152, v153, &topLeft, v154);
          }

          else
          {
            memset(&v234, 0, 32);
          }

          v228 = v234._columns;

          v121 = objc_msgSend_calcEngine(context, v170, v171, v172);
          v125 = objc_msgSend_headerNameMgr(v121, v173, v174, v175);
          v128 = v125;
          if (v125)
          {
            goto LABEL_48;
          }
        }

        memset(&v234, 0, 32);
        goto LABEL_73;
      }
    }

    LOBYTE(v116) = 0;
    goto LABEL_44;
  }

  v68 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v68, v76, v77, v78) & 1) != 0 || objc_msgSend_deepType_(v68, v79, context, v80) == 10)
  {
    v82 = 0;
LABEL_26:

    v83 = v82 == 0;
    goto LABEL_29;
  }

  v229 = 0;
  v156 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v68, v81, context, spec, 2, &v229);
  v63 = v229;
  v160 = objc_msgSend_integer(v156, v157, v158, v159);

  if (!v63)
  {
    if (v160 < 2)
    {
      v82 = v160;
      goto LABEL_26;
    }

    goto LABEL_107;
  }

LABEL_60:
  v62 = objc_msgSend_raiseErrorOrConvert_(context, v142, v63, v144);
LABEL_102:

LABEL_103:
  TSUIndexSet::~TSUIndexSet(&v240);
  TSUIndexSet::~TSUIndexSet(&v239);

  return v62;
}

+ (void)addNameFragmentPrecedentsForHeaderRange:(id)range headerRangeRef:(const TSCERangeRef *)ref
{
  rangeCopy = range;
  tableUID = ref->_tableUID;
  v9 = objc_msgSend_calcEngine(rangeCopy, v6, v7, v8);
  v15 = objc_msgSend_tableResolverForTableUID_(v9, v10, &tableUID, v11);
  if (v15)
  {
    v16 = objc_msgSend_headerNameMgr(v9, v12, v13, v14);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_221472920;
    v18[3] = &unk_278465918;
    v19 = v15;
    v20 = rangeCopy;
    v21 = v16;
    v17 = v16;
    TSCERangeRef::enumerateCoordinatesUsingBlock(ref, v18);
  }
}

@end