@interface TSTRefNamer
- (TSCECalculationEngine)calcEngine;
- (TSTRefNamer)initWithCalcEngine:(id)engine;
- (id)cellRangeName:(id)name namingContext:(id)context;
- (id)cellRangeNameFromChromeRangeRef:(const void *)ref namingContext:(id)context;
- (id)chromeNameForBaseRangeRef:(const void *)ref namingContext:(id)context;
- (id)columnNameForCellCoord:(const TSUCellCoord *)coord restrictToBodyRange:(BOOL)range translator:(id)translator cellRangeContainingName:(TSUCellRect *)name;
- (id)columnNameForColumnIndex:(unsigned __int16)index withFallbackFormat:(id)format translator:(id)translator;
- (id)createNameComponentWithChromeRangeRef:(const void *)ref rowOrColumnName:(id)name isSticky:(BOOL)sticky namingContext:(id)context;
- (id)nameForBaseRangeRef:(const void *)ref namingContext:(id)context;
- (id)nameForBaseTractRef:(id)ref namingContext:(id)context;
- (id)nameForChromeColumnIndex:(const TSUChromeColumnIndex *)index inTable:(const TSKUIDStruct *)table useSymbolicNames:(BOOL)names;
- (id)nameForChromeRangeRef:(const void *)ref namingContext:(id)context;
- (id)nameForViewTractRef:(id)ref namingContext:(id)context coordMapper:(id)mapper;
- (id)nameForWrappedRangeRef:(id)ref namingContext:(id)context;
- (id)p_symbolicColumnNameForRefPair:(id)pair useTopLeft:(BOOL)left isSticky:(BOOL)sticky foundRange:(TSUModelCellRect *)range inTableModel:(id)model namingContext:(id)context;
- (id)p_symbolicRowNameForRefPair:(id)pair useTopLeft:(BOOL)left isSticky:(BOOL)sticky foundRange:(TSUModelCellRect *)range inTableModel:(id)model namingContext:(id)context;
- (id)rowNameForCellCoord:(const TSUCellCoord *)coord restrictToBodyRange:(BOOL)range translator:(id)translator cellRangeContainingName:(TSUCellRect *)name;
- (id)stringForRangeRefPair:(id)pair namingContext:(id)context;
- (id)stringValueAtCellCoord:(const TSUCellCoord *)coord translator:(id)translator;
@end

@implementation TSTRefNamer

- (TSTRefNamer)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v18.receiver = self;
  v18.super_class = TSTRefNamer;
  v5 = [(TSTRefNamer *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_calcEngine, engineCopy);
    v10 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
    whitespaceAndNewlineCharSet = v6->_whitespaceAndNewlineCharSet;
    v6->_whitespaceAndNewlineCharSet = v10;

    v15 = objc_msgSend_invertedSet(v6->_whitespaceAndNewlineCharSet, v12, v13, v14);
    nonWhitespaceAndNewlineCharSet = v6->_nonWhitespaceAndNewlineCharSet;
    v6->_nonWhitespaceAndNewlineCharSet = v15;
  }

  return v6;
}

- (id)nameForChromeRangeRef:(const void *)ref namingContext:(id)context
{
  contextCopy = context;
  v7 = [TSCECellTractRef alloc];
  v10 = objc_msgSend_initWithRangeRef_(v7, v8, ref, v9);
  v11 = [TSTRangeRefPair alloc];
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v14 = objc_msgSend_initWithChromeTractRef_calcEngine_(v11, v13, v10, WeakRetained);

  v16 = objc_msgSend_stringForRangeRefPair_namingContext_(self, v15, v14, contextCopy);

  return v16;
}

- (id)chromeNameForBaseRangeRef:(const void *)ref namingContext:(id)context
{
  contextCopy = context;
  v7 = *(ref + 2);
  v8 = *(ref + 3);
  if (*(ref + 1) == 0)
  {
    v26 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v11 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v10, v7, v8, WeakRetained);

    v15 = objc_msgSend_translator(v11, v12, v13, v14);
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v15, v16, *ref, v17);
      v22 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v18, v20, *(ref + 1), v21);
      v32._topLeft = v19;
      v32._bottomRight = v22;
      v31._flags = 0;
      TSCERangeCoordinate::fixInversions(&v32, &v31);
      v23 = *(ref + 1);
      v30[0] = v32;
      v30[1] = v23;
      v25 = objc_msgSend_nameForChromeRangeRef_namingContext_(self, v24, v30, contextCopy);
    }

    else
    {
      v25 = objc_msgSend_nameForBaseRangeRef_namingContext_(self, v16, ref, contextCopy);
    }

    v26 = v25;
  }

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = &stru_2834BADA0;
  }

  v28 = v27;

  return v27;
}

- (id)nameForBaseRangeRef:(const void *)ref namingContext:(id)context
{
  contextCopy = context;
  v7 = *(ref + 1);
  v37 = *ref;
  v38 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v11 = objc_msgSend_tableResolverForTableUID_(WeakRetained, v9, &v38, v10);

  if (v11)
  {
    v12 = [TSCECellTractRef alloc];
    v15 = objc_msgSend_initWithRangeRef_(v12, v13, ref, v14);
    v16 = [TSTRangeRefPair alloc];
    v17 = objc_loadWeakRetained(&self->_calcEngine);
    v19 = objc_msgSend_initWithBaseTractRef_calcEngine_(v16, v18, v15, v17);

    v21 = objc_msgSend_stringForRangeRefPair_namingContext_(self, v20, v19, contextCopy);
    goto LABEL_3;
  }

  v24 = v38;
  v25 = objc_loadWeakRetained(&self->_calcEngine);
  v15 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v26, v24, *(&v24 + 1), v25);

  if (v15)
  {
    v19 = objc_msgSend_categoryRefForAggregateRangeRef_(v15, v27, &v37, v28);
    if (!objc_msgSend_isValid(v19, v29, v30, v31))
    {
      v22 = &stru_2834BADA0;
      goto LABEL_4;
    }

    v36[0] = 0;
    v36[1] = objc_msgSend_hostTableUID(contextCopy, v32, v33, v34);
    v36[2] = v35;
    v21 = objc_msgSend_prettyStringForCategoryRef_forHostCellRef_namingContext_(v15, v35, v19, v36, contextCopy);
LABEL_3:
    v22 = v21;
LABEL_4:

    goto LABEL_5;
  }

  v22 = &stru_2834BADA0;
LABEL_5:

  return v22;
}

- (id)nameForBaseTractRef:(id)ref namingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  v11 = contextCopy;
  if (refCopy)
  {
    v12 = objc_msgSend_useSymbolicNames(contextCopy, v8, v9, v10);
    v16 = objc_msgSend_allowTableName(v11, v13, v14, v15);
    v17 = objc_opt_new();
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 0;
    if ((objc_msgSend_isRectangularRange(refCopy, v18, v19, v20) & 1) == 0)
    {
      objc_msgSend_setUseSymbolicNames_(v11, v21, 0, v22);
    }

    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = sub_2211CE4A4;
    v35 = &unk_278460E18;
    v39 = v40;
    v23 = v11;
    v36 = v23;
    selfCopy = self;
    v24 = v17;
    v38 = v24;
    objc_msgSend_foreachRangeRef_(refCopy, v25, &v32, v26);
    objc_msgSend_setUseSymbolicNames_(v23, v27, v12, v28, v32, v33, v34, v35);
    objc_msgSend_setAllowTableName_(v23, v29, v16, v30);

    _Block_object_dispose(v40, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)nameForViewTractRef:(id)ref namingContext:(id)context coordMapper:(id)mapper
{
  refCopy = ref;
  contextCopy = context;
  mapperCopy = mapper;
  v14 = mapperCopy;
  v15 = 0;
  if (refCopy && mapperCopy)
  {
    v16 = objc_msgSend_useSymbolicNames(contextCopy, v11, v12, v13);
    v20 = objc_msgSend_allowTableName(contextCopy, v17, v18, v19);
    v21 = objc_opt_new();
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v42 = 0;
    if ((objc_msgSend_isRectangularRange(refCopy, v22, v23, v24) & 1) == 0)
    {
      objc_msgSend_setUseSymbolicNames_(contextCopy, v25, 0, v26);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2211CE800;
    v35[3] = &unk_278460E40;
    v36 = v14;
    v40 = v41;
    v27 = contextCopy;
    v37 = v27;
    selfCopy = self;
    v15 = v21;
    v39 = v15;
    objc_msgSend_foreachRangeRef_(refCopy, v28, v35, v29);
    objc_msgSend_setUseSymbolicNames_(v27, v30, v16, v31);
    objc_msgSend_setAllowTableName_(v27, v32, v20, v33);

    _Block_object_dispose(v41, 8);
  }

  return v15;
}

- (id)stringForRangeRefPair:(id)pair namingContext:(id)context
{
  pairCopy = pair;
  contextCopy = context;
  if (pairCopy)
  {
    objc_msgSend_chromeRangeRef(pairCopy, v7, v8, v9);
  }

  else
  {
    memset(&v151, 0, sizeof(v151));
  }

  v152 = v151;
  if (!contextCopy)
  {
    contextCopy = objc_opt_new();
  }

  v11 = objc_msgSend_hostTableUID(contextCopy, v7, v8, v9);
  if (!(v11 | v12))
  {
    v15 = objc_msgSend_contextSheetName(contextCopy, v12, v13, v14);

    if (!v15)
    {
      objc_msgSend_setHostTableUID_(contextCopy, v12, v152._tableUID._lower, v152._tableUID._upper);
    }
  }

  if (pairCopy)
  {
    objc_msgSend_baseRangeRef(pairCopy, v12, v13, v14);
  }

  else
  {
    memset(&v151, 0, sizeof(v151));
  }

  if (TSCERangeRef::isValid(&v151))
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (pairCopy)
    {
      objc_msgSend_baseRangeRef(pairCopy, v16, v17, v18);
    }

    else
    {
      memset(v150, 0, sizeof(v150));
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(WeakRetained, v16, v150, v18);

    if ((IsWithinTable & 1) == 0)
    {
      v82 = 0;
      goto LABEL_57;
    }
  }

  v21 = objc_loadWeakRetained(&self->_calcEngine);
  v149 = objc_msgSend_headerNameMgr(v21, v22, v23, v24);

  v25 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v26 = objc_loadWeakRetained(&self->_calcEngine);
  v29 = objc_msgSend_tableResolverForTableUID_(v26, v27, &v152._tableUID, v28);

  v33 = objc_msgSend_quoteComponents(contextCopy, v30, v31, v32);
  v37 = objc_msgSend_forceEscaping(contextCopy, v34, v35, v36);
  v41 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(contextCopy, v38, v39, v40);
  objc_msgSend_setQuoteComponents_(contextCopy, v42, 1, v43);
  objc_msgSend_setForceEscaping_(contextCopy, v44, 0, v45);
  v47 = objc_msgSend_cellRangeName_namingContext_(self, v46, pairCopy, contextCopy);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(contextCopy, v48, 0, v49);
  v51 = objc_msgSend_cellRangeName_namingContext_(self, v50, pairCopy, contextCopy);
  objc_msgSend_setQuoteComponents_(contextCopy, v52, v33, v53);
  objc_msgSend_setForceEscaping_(contextCopy, v54, v37, v55);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(contextCopy, v56, v41, v57);
  if (!objc_msgSend_allowTableName(contextCopy, v58, v59, v60) || (v64 = objc_msgSend_hostTableUID(contextCopy, v61, v62, v63), v64 | v61) && (v65 = objc_msgSend_hostTableUID(contextCopy, v61, v62, v63), __PAIR128__(v61, v65) == *&v152._tableUID))
  {
LABEL_45:
    if (objc_msgSend_quoteComponents(contextCopy, v61, v62, v63))
    {
      if (!objc_msgSend_forceEscaping(contextCopy, v119, v120, v121))
      {
        if (v47)
        {
          objc_msgSend_appendString_(v25, v122, v47, v124);
        }

        goto LABEL_55;
      }

      v125 = objc_msgSend_copy(contextCopy, v122, v123, v124);
      objc_msgSend_setQuoteComponents_(v125, v126, 1, v127);
      objc_msgSend_setForceEscaping_(v125, v128, 1, v129);
      v131 = objc_msgSend_cellRangeName_namingContext_(self, v130, pairCopy, v125);
      objc_msgSend_appendString_(v25, v132, v131, v133);
    }

    else
    {
      v125 = objc_msgSend_copy(contextCopy, v119, v120, v121);
      objc_msgSend_setQuoteComponents_(v125, v134, 0, v135);
      objc_msgSend_setForceEscaping_(v125, v136, 0, v137);
      if (objc_msgSend_quoteComponents(contextCopy, v138, v139, v140))
      {
        v131 = 0;
      }

      else
      {
        v131 = objc_msgSend_cellRangeName_namingContext_(self, v141, pairCopy, v125);
        if (v131)
        {
          objc_msgSend_appendString_(v25, v142, v131, v143);
        }
      }
    }

LABEL_55:
    v82 = objc_msgSend_copy(v25, v122, v123, v124);
    goto LABEL_56;
  }

  v151 = v152;
  *&v150[0] = objc_msgSend_hostTableUID(contextCopy, v61, v62, v63);
  *(&v150[0] + 1) = v66;
  IsUnique_forReference_contextTable = objc_msgSend_referenceNameIsUnique_forReference_contextTable_(v149, v66, v51, &v151, v150);
  v68 = objc_loadWeakRetained(&self->_calcEngine);
  v151.range._topLeft = objc_msgSend_hostTableUID(contextCopy, v69, v70, v71);
  v151.range._bottomRight = v72;
  v74 = objc_msgSend_tableResolverForTableUID_(v68, v72, &v151, v73);

  if (IsUnique_forReference_contextTable && !objc_msgSend_forceTableName(contextCopy, v75, v76, v77))
  {
LABEL_44:

    goto LABEL_45;
  }

  if (!v29)
  {
    v78 = 0;
    if (v74)
    {
      goto LABEL_24;
    }

LABEL_27:
    v148 = objc_msgSend_contextSheetName(contextCopy, v75, v76, v77);
    goto LABEL_28;
  }

  v78 = objc_msgSend_tableName(v29, v75, v76, v77);
  if (!v74)
  {
    goto LABEL_27;
  }

LABEL_24:
  v148 = objc_msgSend_sheetName(v74, v75, v76, v77);
LABEL_28:
  if (v29)
  {
    v85 = objc_msgSend_sheetName(v29, v79, v80, v81);
    if (v85)
    {
      v147 = v78;
      if (!objc_msgSend_isEqualToString_(v148, v83, v85, v84) || objc_msgSend_forceSheetName(contextCopy, v86, v87, v88))
      {
        v146 = v85;
        v92 = objc_loadWeakRetained(&self->_calcEngine);
        v94 = objc_msgSend_resolverMatchingName_contextResolver_(v92, v93, v147, 0);

        v145 = v94;
        v95 = v94;
        v85 = v146;
        v99 = objc_msgSend_resolverUID(v95, v96, v97, v98);
        if (__PAIR128__(v100, v99) != *&v152._tableUID || objc_msgSend_forceSheetName(contextCopy, v100, v101, v102))
        {
          if (objc_msgSend_quoteComponents(contextCopy, v100, v101, v102))
          {
            v106 = objc_msgSend_forceEscaping(contextCopy, v103, v104, v105);
            v109 = objc_msgSend_tsce_stringByForcingSingleQuoteEscapes_(v146, v107, v106, v108);

            v85 = v109;
          }

          if ((objc_msgSend_isEqualToString_(v85, v103, &stru_2834BADA0, v105) & 1) == 0)
          {
            objc_msgSend_appendFormat_(v25, v110, @"%@::", v111, v85);
          }
        }
      }

      if (objc_msgSend_quoteComponents(contextCopy, v89, v90, v91))
      {
        v115 = objc_msgSend_forceEscaping(contextCopy, v112, v113, v114);
        v118 = objc_msgSend_tsce_stringByForcingSingleQuoteEscapes_(v147, v116, v115, v117);
      }

      else
      {
        v118 = v147;
      }

      objc_msgSend_appendFormat_(v25, v112, @"%@::", v114, v118);

      goto LABEL_44;
    }
  }

  v82 = 0;
LABEL_56:

LABEL_57:

  return v82;
}

- (id)nameForWrappedRangeRef:(id)ref namingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  if (refCopy)
  {
    objc_msgSend_rangeRef(refCopy, v7, v8, v9);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  v11 = objc_msgSend_nameForBaseRangeRef_namingContext_(self, v7, v15, contextCopy, v13, v14);

  return v11;
}

- (id)stringValueAtCellCoord:(const TSUCellCoord *)coord translator:(id)translator
{
  translatorCopy = translator;
  v22 = 0;
  objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(translatorCopy, v6, &v22, *coord, 0);
  v7 = v22;
  if ((objc_msgSend_isNil(v7, v8, v9, v10) & 1) == 0)
  {
    v14 = objc_msgSend_objectLocale(translatorCopy, v11, v12, v13);
    v17 = objc_msgSend_asStringWithLocale_(v7, v15, v14, v16);

    if (objc_msgSend_length(v17, v18, v19, v20))
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_5:

  return v17;
}

- (id)columnNameForCellCoord:(const TSUCellCoord *)coord restrictToBodyRange:(BOOL)range translator:(id)translator cellRangeContainingName:(TSUCellRect *)name
{
  rangeCopy = range;
  translatorCopy = translator;
  v14 = translatorCopy;
  if (rangeCopy)
  {
    v15 = objc_msgSend_bodyRange(translatorCopy, v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_range(translatorCopy, v11, v12, v13);
  }

  v19 = WORD2(v15);
  v20 = objc_msgSend_numberOfHeaderRows(v14, v16, v17, v18);
  isCategorized = objc_msgSend_isCategorized(v14, v21, v22, v23);
  column = coord->column;
  if (coord->column)
  {
    v29 = 0;
  }

  else
  {
    v29 = isCategorized;
  }

  if (v29 == 1)
  {
    v30 = sub_2214AAEA8(isCategorized, v25, v26, v27);
    v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"Categories", &stru_2834BADA0, @"TSTables");
  }

  else
  {
    v32 = 0;
    if (v20 && v19 <= column)
    {
      v32 = 0;
      v33 = (v20 - 1);
      do
      {
        if (v32)
        {
          v34 = objc_msgSend_stringByTrimmingCharactersInSet_(v32, v25, self->_whitespaceAndNewlineCharSet, v27);
          isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v35, v34, v36);

          if ((isEqualToString & 1) == 0)
          {
            break;
          }
        }

        v46.origin = 0;
        v46.size = 0;
        v46.origin = objc_msgSend_mergeRangeAtCellID_(v14, v25, v33 | (column << 32), v27);
        v46.size = v38;
        origin = __PAIR64__(column, v33);
        if (TSUCellRect::isValid(&v46))
        {
          origin = v46.origin;
          v41 = objc_msgSend_cellValueTypeAtCellID_(v14, v39, *&v46.origin, v40);
        }

        else
        {
          v41 = objc_msgSend_cellValueTypeAtCellID_(v14, v39, origin, v40);
        }

        if (v41 != 6)
        {
          v42 = objc_msgSend_stringValueAtCellCoord_translator_(self, v25, &origin, v14);

          v32 = v42;
        }

        if (name && v32)
        {
          if (TSUCellRect::isValid(&v46))
          {
            *name = v46;
          }

          else
          {
            name->origin = *coord;
            name->size = 0x100000001;
          }
        }
      }

      while (v33-- > 0);
    }
  }

  return v32;
}

- (id)rowNameForCellCoord:(const TSUCellCoord *)coord restrictToBodyRange:(BOOL)range translator:(id)translator cellRangeContainingName:(TSUCellRect *)name
{
  rangeCopy = range;
  translatorCopy = translator;
  v13 = translatorCopy;
  v39.origin = 0;
  v39.size = 0;
  if (rangeCopy)
  {
    v14 = objc_msgSend_bodyRange(translatorCopy, v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_range(translatorCopy, v10, v11, v12);
  }

  v39.origin = v14;
  v39.size = v15;
  v18 = objc_msgSend_numberOfHeaderColumns(v13, v15, v16, v17, coord);
  if (v18 && (v19 = TSUCellRect::firstRow(&v39), row = v36->row, v19 <= row))
  {
    v23 = 0;
    v24 = (v18 - 1);
    v25 = v24 << 32;
    while (1)
    {
      v26 = v23;
      if (v23)
      {
        v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v23, v20, self->_whitespaceAndNewlineCharSet, v21);
        isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v28, v27, v29);

        if ((isEqualToString & 1) == 0)
        {
          break;
        }
      }

      v38.origin = 0;
      v38.size = 0;
      v38.origin = objc_msgSend_mergeRangeAtCellID_(v13, v20, v25 & 0xFFFF00000000 | row, v21);
      v38.size = v31;
      origin.row = row;
      *&origin.column = v24;
      if (TSUCellRect::isValid(&v38))
      {
        origin = v38.origin;
      }

      v23 = objc_msgSend_stringValueAtCellCoord_translator_(self, v32, &origin, v13);

      if (name && v23)
      {
        if (TSUCellRect::isValid(&v38))
        {
          *name = v38;
        }

        else
        {
          name->origin = *v36;
          name->size = 0x100000001;
        }
      }

      v25 -= 0x100000000;
      if (v24-- <= 0)
      {
        goto LABEL_21;
      }
    }

    v23 = v26;
  }

  else
  {
    v23 = 0;
  }

LABEL_21:

  return v23;
}

- (id)columnNameForColumnIndex:(unsigned __int16)index withFallbackFormat:(id)format translator:(id)translator
{
  indexCopy = index;
  formatCopy = format;
  translatorCopy = translator;
  v29 = indexCopy << 32;
  v14 = objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v10, &v29, 0, translatorCopy, 0);
  if (!v14)
  {
    if (!formatCopy)
    {
      formatCopy = @"%@";
    }

    objc_msgSend_chromeColumnIndexForViewColumnIndex_(translatorCopy, v11, indexCopy, v13);
    v15 = MEMORY[0x277CCACA8];
    v16 = TSUColumnLabel();
    v14 = objc_msgSend_stringWithFormat_(v15, v17, formatCopy, v18, v16);
  }

  v19 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v11, v12, v13);
  if (objc_msgSend_rangeOfCharacterFromSet_(v14, v20, v19, v21) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = objc_msgSend_componentsSeparatedByCharactersInSet_(v14, v22, v19, v23);
    v27 = objc_msgSend_componentsJoinedByString_(v24, v25, @" ", v26);

    v14 = v27;
  }

  return v14;
}

- (id)createNameComponentWithChromeRangeRef:(const void *)ref rowOrColumnName:(id)name isSticky:(BOOL)sticky namingContext:(id)context
{
  stickyCopy = sticky;
  nameCopy = name;
  contextCopy = context;
  if (!objc_msgSend_length(nameCopy, v12, v13, v14) || objc_msgSend_rangeOfCharacterFromSet_(nameCopy, v15, self->_nonWhitespaceAndNewlineCharSet, v16) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
    goto LABEL_23;
  }

  if (stickyCopy)
  {
    v20 = objc_msgSend_stringByAppendingString_(@"$", v17, nameCopy, v18);
  }

  else
  {
    v20 = nameCopy;
  }

  v19 = v20;
  v24 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapesIfNecessary(nameCopy, v21, v22, v23);
  v27 = v24;
  if (stickyCopy)
  {
    v28 = objc_msgSend_stringByAppendingString_(@"$", v25, v24, v26);
  }

  else
  {
    v28 = v24;
  }

  v29 = v28;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v34 = objc_msgSend_headerNameMgr(WeakRetained, v31, v32, v33);

  v50 = *(ref + 1);
  if (!objc_msgSend_referenceNameIsUnique_forReference_contextTable_(v34, v35, v29, ref, &v50))
  {
    v46 = 0;
LABEL_21:

    v19 = v46;
    goto LABEL_22;
  }

  if (objc_msgSend_forceEscaping(contextCopy, v36, v37, v38))
  {
    v42 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(nameCopy, v39, 1, v41);

    if (stickyCopy)
    {
      v45 = objc_msgSend_stringByAppendingString_(@"$", v43, v42, v44);
LABEL_20:

      v29 = v45;
      v27 = v42;
      v46 = v29;
      goto LABEL_21;
    }

    v27 = v42;
    goto LABEL_19;
  }

  if (objc_msgSend_quoteComponents(contextCopy, v39, v40, v41))
  {
    if (stickyCopy)
    {
      v45 = objc_msgSend_stringByAppendingString_(@"$", v47, v27, v48);
      v42 = v27;
      goto LABEL_20;
    }

LABEL_19:
    v45 = v27;
    v42 = v45;
    goto LABEL_20;
  }

LABEL_22:

LABEL_23:

  return v19;
}

- (id)p_symbolicColumnNameForRefPair:(id)pair useTopLeft:(BOOL)left isSticky:(BOOL)sticky foundRange:(TSUModelCellRect *)range inTableModel:(id)model namingContext:(id)context
{
  stickyCopy = sticky;
  leftCopy = left;
  pairCopy = pair;
  modelCopy = model;
  contextCopy = context;
  if (leftCopy)
  {
    v20 = &v36;
    if (pairCopy)
    {
      objc_msgSend_baseRangeRef(pairCopy, v16, v17, v18);
      v21 = v35;
    }

    else
    {
      v21 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    v20 = &v34;
    if (pairCopy)
    {
      objc_msgSend_baseRangeRef(pairCopy, v16, v17, v18);
      v21 = *(&v33 + 1);
    }

    else
    {
      v21 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  v37 = v21;
  v38 = *v20;
  v23 = objc_msgSend_identityTranslator(modelCopy, v16, v17, v18);
  if (range)
  {
    objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v22, &v37, 1, v23, &v32);
  }

  else
  {
    objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v22, &v37, 1, v23, 0);
  }
  v24 = ;

  if (range)
  {
    *range = v32;
  }

  if (leftCopy)
  {
    if (pairCopy)
    {
      objc_msgSend_chromeRangeRef(pairCopy, v25, v26, v27);
      v28 = v35;
      v29 = v36;
      goto LABEL_19;
    }
  }

  else if (pairCopy)
  {
    objc_msgSend_chromeRangeRef(pairCopy, v25, v26, v27);
    v28 = *(&v33 + 1);
    v29 = v34;
    goto LABEL_19;
  }

  v28 = 0;
  v29 = 0uLL;
LABEL_19:
  *&v35 = v28 & 0xFFFF00000000 | 0x7FFFFFFF;
  *(&v35 + 1) = v35;
  v36 = v29;
  v30 = objc_msgSend_createNameComponentWithChromeRangeRef_rowOrColumnName_isSticky_namingContext_(self, v25, &v35, v24, stickyCopy, contextCopy);

  return v30;
}

- (id)p_symbolicRowNameForRefPair:(id)pair useTopLeft:(BOOL)left isSticky:(BOOL)sticky foundRange:(TSUModelCellRect *)range inTableModel:(id)model namingContext:(id)context
{
  stickyCopy = sticky;
  leftCopy = left;
  pairCopy = pair;
  modelCopy = model;
  contextCopy = context;
  if (leftCopy)
  {
    v20 = &v36;
    if (pairCopy)
    {
      objc_msgSend_baseRangeRef(pairCopy, v16, v17, v18);
      v21 = v35;
    }

    else
    {
      v21 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    v20 = &v34;
    if (pairCopy)
    {
      objc_msgSend_baseRangeRef(pairCopy, v16, v17, v18);
      v21 = *(&v33 + 1);
    }

    else
    {
      v21 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  v37 = v21;
  v38 = *v20;
  v23 = objc_msgSend_identityTranslator(modelCopy, v16, v17, v18);
  if (range)
  {
    objc_msgSend_rowNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v22, &v37, 1, v23, &v32);
  }

  else
  {
    objc_msgSend_rowNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(self, v22, &v37, 1, v23, 0);
  }
  v24 = ;

  if (range)
  {
    *range = v32;
  }

  if (leftCopy)
  {
    if (pairCopy)
    {
      objc_msgSend_chromeRangeRef(pairCopy, v25, v26, v27);
      v28 = v35;
      v29 = v36;
      goto LABEL_19;
    }
  }

  else if (pairCopy)
  {
    objc_msgSend_chromeRangeRef(pairCopy, v25, v26, v27);
    v28 = DWORD2(v33);
    v29 = v34;
    goto LABEL_19;
  }

  v28 = 0;
  v29 = 0uLL;
LABEL_19:
  *&v35 = v28 | 0x7FFF00000000;
  *(&v35 + 1) = v28 | 0x7FFF00000000;
  v36 = v29;
  v30 = objc_msgSend_createNameComponentWithChromeRangeRef_rowOrColumnName_isSticky_namingContext_(self, v25, &v35, v24, stickyCopy, contextCopy);

  return v30;
}

- (id)cellRangeNameFromChromeRangeRef:(const void *)ref namingContext:(id)context
{
  contextCopy = context;
  v7 = [TSCECellTractRef alloc];
  v10 = objc_msgSend_initWithRangeRef_(v7, v8, ref, v9);
  v11 = [TSTRangeRefPair alloc];
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v14 = objc_msgSend_initWithChromeTractRef_calcEngine_(v11, v13, v10, WeakRetained);

  v16 = objc_msgSend_cellRangeName_namingContext_(self, v15, v14, contextCopy);

  return v16;
}

- (id)cellRangeName:(id)name namingContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v188 = contextCopy;
  v185 = objc_msgSend_chromeTractRef(nameCopy, v8, v9, v10);
  if (nameCopy)
  {
    objc_msgSend_chromeRangeRef(nameCopy, v11, v12, v13);
  }

  else
  {
    memset(&v198, 0, sizeof(v198));
  }

  v199 = v198;
  v187 = objc_msgSend_tableModel(nameCopy, v11, v12, v13);
  v17 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v14, v15, v16);
  v21 = objc_msgSend_disableImplicitNaming(v17, v18, v19, v20);

  if (v21)
  {
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_useSymbolicNames(contextCopy, v22, v23, v24) ^ 1;
  }

  v197 = xmmword_2217E0780;
  v26 = TSCERangeRef::preserveFlags(&v199);
  v196 = v26;
  isSpanningAllColumns = TSCERangeRef::isSpanningAllColumns(&v199);
  isSpanningAllRows = TSCERangeRef::isSpanningAllRows(&v199);
  isSingleCell = TSCERangeRef::isSingleCell(&v199);
  if (((v25 | isSingleCell) & 1) == 0)
  {
    v25 = !TSCERangeRef::isSpanning(&v199);
  }

  v31 = 0;
  v32 = (isSingleCell | isSpanningAllRows) ^ 1;
  if ((v25 & 1) == 0 && (v32 & 1) == 0)
  {
    v31 = objc_msgSend_p_symbolicColumnNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v29, nameCopy, 1, v26 & 1, &v197, v187, v188);
  }

  v33 = isSingleCell | isSpanningAllColumns;
  v35 = v31;
  v36 = 0;
  v189 = v35;
  if (v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = isSingleCell;
  }

  v38 = v25 | v37;
  v195 = xmmword_2217E0780;
  if ((v38 & 1) == 0 && ((v33 ^ 1) & 1) == 0)
  {
    v36 = objc_msgSend_p_symbolicRowNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v34, nameCopy, 1, (v196 >> 1) & 1, &v195, v187, v188);
  }

  v190 = v36;
  if (!objc_msgSend_isSingleCellOrSpanningRange(v185, v39, v40, v41) || ((v196 ^ (v196 >> 2)) & 3) != 0)
  {
    v43 = 0;
    v194 = xmmword_2217E0780;
    v183 = nameCopy;
    if (((v38 | v32) & 1) == 0 && v189)
    {
      v43 = objc_msgSend_p_symbolicColumnNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v42, nameCopy, 0, (v196 >> 2) & 1, &v194, v187, v188);
    }

    v45 = v43;
    v46 = 0;
    if (v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = isSingleCell;
    }

    v48 = v38 | v47;
    v193 = xmmword_2217E0780;
    v184 = (v38 | v47) ^ 1;
    if ((v184 & v33) == 1 && v190)
    {
      v46 = objc_msgSend_p_symbolicRowNameForRefPair_useTopLeft_isSticky_foundRange_inTableModel_namingContext_(self, v44, nameCopy, 0, (v196 >> 3) & 1, &v193, v187, v188);
    }

    v52 = v46;
    v53 = nameCopy;
    column = v199.range._topLeft.column;
    if (v199.range._bottomRight.column == 0x7FFF || v199.range._topLeft.column == 0x7FFF)
    {
      v56 = 0;
    }

    else
    {
      v56 = v199.range._bottomRight.column - v199.range._topLeft.column + 1;
    }

    row = v199.range._topLeft.row;
    v58 = v199.range._bottomRight.row == 0x7FFFFFFF || v199.range._topLeft.row == 0x7FFFFFFFLL;
    v59 = v199.range._bottomRight.row - v199.range._topLeft.row + 1;
    if (v58)
    {
      v59 = 0;
    }

    v181 = v59;
    if (v53)
    {
      objc_msgSend_chromeRangeRef(v53, v49, v50, v51);
    }

    else
    {
      memset(&v192, 0, sizeof(v192));
    }

    v198 = v192;
    if (isSpanningAllColumns)
    {
      v60 = 0;
    }

    else
    {
      v61 = TSUCellRect::columns(&v197);
      v60 = column > v61 || v56 + column < &v49[v61];
    }

    selfCopy = self;
    if (isSpanningAllRows)
    {
      v62 = 0;
      if (isSpanningAllColumns)
      {
LABEL_57:
        v180 = 0;
        if (isSpanningAllRows)
        {
LABEL_58:
          v182 = 0;
          goto LABEL_65;
        }

LABEL_61:
        v66 = TSUCellRect::rows(&v193);
        v67 = row > v66 || v181 + row < &v49[v66];
        v182 = v67;
LABEL_65:
        v68 = v189;
        if (v189)
        {
          v69 = v48;
        }

        else
        {
          v69 = 1;
        }

        if ((v69 | v60))
        {
          v70 = objc_alloc(MEMORY[0x277CCACA8]);
          v71 = v196;
          v72 = TSUColumnLabel();
          v75 = v72;
          v76 = @"$";
          if ((v71 & 1) == 0)
          {
            v76 = &stru_2834BADA0;
          }

          v68 = objc_msgSend_initWithFormat_(v70, v73, @"%@%@", v74, v76, v72);
        }

        v186 = v68;
        v77 = v190;
        if (v190)
        {
          v78 = v48;
        }

        else
        {
          v78 = 1;
        }

        if ((v78 | v62))
        {
          v79 = objc_alloc(MEMORY[0x277CCACA8]);
          v80 = v196;
          v81 = TSURowLabel();
          v84 = v81;
          v85 = @"$";
          if ((v80 & 2) == 0)
          {
            v85 = &stru_2834BADA0;
          }

          v77 = objc_msgSend_initWithFormat_(v79, v82, @"%@%@", v83, v85, v81);
        }

        if (v45)
        {
          v86 = v184;
        }

        else
        {
          v86 = 0;
        }

        if (v86 != 1 || (v90 = v45, objc_msgSend_length(v45, v49, v50, v51) == 0 || v180))
        {
          v91 = TSUColumnLabel();

          v92 = objc_alloc(MEMORY[0x277CCACA8]);
          v95 = @"$";
          if ((v196 & 4) == 0)
          {
            v95 = &stru_2834BADA0;
          }

          v96 = objc_msgSend_initWithFormat_(v92, v93, @"%@%@", v94, v95, v91);

          v90 = v96;
        }

        if (v52)
        {
          v97 = v184;
        }

        else
        {
          v97 = 0;
        }

        if (v97 != 1 || (v98 = v52, objc_msgSend_length(v52, v87, v88, v89) == 0 || v182))
        {
          v99 = TSURowLabel();

          v100 = objc_alloc(MEMORY[0x277CCACA8]);
          v103 = @"$";
          if ((v196 & 8) == 0)
          {
            v103 = &stru_2834BADA0;
          }

          v104 = objc_msgSend_initWithFormat_(v100, v101, @"%@%@", v102, v103, v99);

          v98 = v104;
        }

        if (TSCERangeRef::isSpanningAllColumns(&v198))
        {
          if (objc_msgSend_isEqualToString_(v77, v105, v98, v106) && (v190 || objc_msgSend_suppressIdenticalEndReference(v188, v107, v108, v109)))
          {
            v110 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v107, @"%@", v109, v98);
          }

          else
          {
            v110 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v107, @"%@:%@", v109, v77, v98);
          }

          v116 = v110;
          v117 = 0;
          v118 = (v190 | v52) != 0;
        }

        else
        {
          if (!TSCERangeRef::isSpanningAllRows(&v198))
          {
            if (objc_msgSend_showGeometricAsBase(v188, v111, v112, v113))
            {
              v122 = v77;
              v123 = objc_msgSend_baseTractRef(v183, v119, v120, v121);
              v124 = v188;
              if (objc_msgSend_isRectangularRange(v123, v125, v126, v127))
              {
                v192.range._topLeft = objc_msgSend_boundingRange(v123, v128, v129, v130);
                v192.range._bottomRight = v131;
                sub_2212C64C4(&v192.range._topLeft, &v196);
              }

              else
              {
                objc_msgSend_nameForBaseTractRef_namingContext_(selfCopy, v128, v123, v188);
              }
              v116 = ;
            }

            else
            {
              v122 = v77;
              if (v183)
              {
                objc_msgSend_chromeRangeRef(v183, v119, v120, v121);
              }

              else
              {
                memset(&v191, 0, sizeof(v191));
              }

              v192 = v191;
              v124 = v188;
              v116 = sub_2212C64C4(&v192.range._topLeft, &v196);
            }

            v118 = 0;
            v117 = 0;
            goto LABEL_134;
          }

          if (objc_msgSend_isEqualToString_(v186, v111, v90, v113))
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v114, @"%@", v115, v90);
          }

          else
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v114, @"%@:%@", v115, v186, v90);
          }
          v116 = ;
          v118 = (v189 | v45) != 0;
          v117 = 1;
        }

        v124 = v188;
        v122 = v77;
LABEL_134:

        nameCopy = v183;
LABEL_135:
        v148 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(v124, v152, v153, v154);
        goto LABEL_136;
      }
    }

    else
    {
      v63 = TSUCellRect::rows(&v195);
      if (row <= v63)
      {
        v62 = v181 + row < &v49[v63];
        if (isSpanningAllColumns)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v62 = 1;
        if (isSpanningAllColumns)
        {
          goto LABEL_57;
        }
      }
    }

    v64 = TSUCellRect::columns(&v194);
    v65 = column > v64 || v56 + column < &v49[v64];
    v180 = v65;
    if (isSpanningAllRows)
    {
      goto LABEL_58;
    }

    goto LABEL_61;
  }

  v117 = TSCERangeRef::isSpanningAllRows(&v199);
  v132 = TSCERangeRef::isSingleCell(&v199);
  if (v189)
  {
    v135 = v132;
  }

  else
  {
    v135 = 0;
  }

  if (v135 == 1 && v190)
  {
    v136 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v133, @"%@ %@", v134, v189, v190);
  }

  else
  {
    v140 = TSCERangeRef::isSpanningAllColumns(&v199);
    v143 = v190;
    if (v190)
    {
      v144 = v140;
    }

    else
    {
      v144 = 0;
    }

    if (!v144)
    {
      v145 = TSCERangeRef::isSpanningAllRows(&v199);
      v143 = v189;
      if (!v189 || !v145)
      {
        v192.range._topLeft = 0;
        v124 = v188;
        if (objc_msgSend_showGeometricAsBase(v188, v141, v146, v142))
        {
          v173 = objc_msgSend_baseTractRef(nameCopy, v170, v171, v172);
          v192.range._topLeft = objc_msgSend_topLeft(v173, v174, v175, v176);

          topLeft = v192.range._topLeft;
        }

        else
        {
          topLeft = objc_msgSend_topLeft(v185, v170, v171, v172);
          v192.range._topLeft = topLeft;
        }

        if ((*&topLeft & 0xFFFF00000000) != 0x7FFF00000000 || topLeft.row == 0x7FFFFFFFLL)
        {
          LOBYTE(v198.range._topLeft.row) = v196 & 3;
          v178 = sub_2212C62E0(&v192.range._topLeft, &v198);
        }

        else
        {
          v198.range._topLeft = topLeft;
          v198.range._bottomRight = topLeft;
          v178 = sub_2212C64C4(&v198.range._topLeft, &v196);
        }

        v116 = v178;
        v118 = 0;
        v122 = v190;
        v186 = v189;
        goto LABEL_135;
      }
    }

    v136 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v141, @"%@", v142, v143);
  }

  v116 = v136;
  v118 = 1;
  v122 = v190;
  v186 = v189;
  v124 = v188;
  v148 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(v188, v137, v138, v139);
LABEL_136:
  if (v148 && !(objc_msgSend_forFormulaPlainText(v124, v149, v150, v151) & 1 | !v117))
  {
    v156 = objc_msgSend_tableInfo(nameCopy, v149, v155, v151);
    if (objc_msgSend_isCategorized(v156, v157, v158, v159))
    {
      v163 = objc_msgSend_objectLocale(v156, v160, v161, v162);
      v165 = objc_msgSend_localizedStringForKey_value_table_(v163, v164, @"Body", &stru_2834BADA0, @"TSTables");

      v168 = objc_msgSend_stringByAppendingFormat_(v116, v166, @" (%@)", v167, v165);

      v116 = v168;
    }
  }

  objc_msgSend_setUsedSymbolicName_(v124, v149, v118, v151);

  return v116;
}

- (id)nameForChromeColumnIndex:(const TSUChromeColumnIndex *)index inTable:(const TSKUIDStruct *)table useSymbolicNames:(BOOL)names
{
  namesCopy = names;
  v9 = objc_opt_new();
  objc_msgSend_setSuppressIdenticalEndReference_(v9, v10, 1, v11);
  objc_msgSend_setUseSymbolicNames_(v9, v12, namesCopy, v13);
  v19.coordinate = ((index->var0 << 32) | 0x7FFFFFFF);
  v19._tableUID = *table;
  TSCERangeRef::TSCERangeRef(&v18, &v19);
  v17 = v18;
  v15 = objc_msgSend_nameForChromeRangeRef_namingContext_(self, v14, &v17, v9);

  return v15;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end