@interface TSTTableFilterSet
- (BOOL)containsFilterRulesInUIDForm;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_thresholdComparisonMatchesFilter:(int64_t)filter withPredicateType:(unsigned __int8)type;
- (BOOL)preventsRowInsertion;
- (BOOL)rowIsShown:(unsigned int)shown withHiddenStateExtent:(id)extent withCalcEngine:(id)engine;
- (TSTTableFilterSet)initWithFilterRules:(id)rules type:(int)type context:(id)context;
- (TSTTableFilterSet)initWithNotBlankColumnGroupsWithContext:(id)context withPivotTable:(id)table;
- (TSTTableFilterSet)initWithNotBlankRowGroupsWithContext:(id)context withPivotTable:(id)table;
- (id).cxx_construct;
- (id)absoluteRuleIndicesForColumn:(TSUModelColumnIndex)column inTable:(id)table;
- (id)baseColumnIndicesForRulesInTable:(id)table;
- (id)copyByRewritingFilterRulesToGeometricFormWithContext:(id)context withTableInfo:(id)info;
- (id)copyByRewritingFilterRulesToUidFormWithContext:(id)context withTableInfo:(id)info;
- (id)copyByRewritingFilterRulesWithContext:(id)context fromTableModel:(id)model toTableModel:(id)tableModel;
- (id)copyWithContext:(id)context;
- (id)downgradeFilterSetForBackwardCompatWithLocale:(id)locale;
- (id)filterAtIndex:(unint64_t)index inTable:(id)table;
- (id)filterIndicesForBaseColumn:(TSUModelColumnIndex)column inTable:(id)table;
- (id)p_downgradedFilterRuleForListItem:(id)item fromPredicate:(id)predicate;
- (id)removeRulesWithAbsoluteIndices:(id)indices;
- (id)ruleAtAbsoluteIndex:(unint64_t)index;
- (id)ruleInFilter:(unint64_t)filter atIndex:(unint64_t)index;
- (id)viewColumnIndicesForRulesInTable:(id)table;
- (unint64_t)firstFilterIndexForBaseColumn:(TSUModelColumnIndex)column inTable:(id)table;
- (unint64_t)hash;
- (unint64_t)numberOfRulesInFilter:(unint64_t)filter;
- (unint64_t)ruleIndexInFilter:(unint64_t)filter matchingCell:(id)cell;
- (void)addRules:(id)rules inFilter:(unint64_t)filter;
- (void)enumerateFilterIndicesInTable:(id)table usingBlock:(id)block;
- (void)enumerateFiltersForColumn:(TSUModelColumnIndex)column withTable:(id)table usingBlock:(id)block;
- (void)enumerateFiltersInTable:(id)table usingBlock:(id)block;
- (void)enumerateRulesInFilterIndex:(unint64_t)index usingBlock:(id)block;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addRules:(id)rules atRuleIndices:(id)indices inFilter:(unint64_t)filter isNew:(BOOL)new;
- (void)removeRulesForBaseColumnIndices:(id)indices withTableInfo:(id)info;
- (void)removeRulesWithIndices:(id)indices inFilter:(unint64_t)filter;
- (void)replaceRule:(id)rule atRuleIndex:(unint64_t)index inFilter:(unint64_t)filter;
- (void)replaceRuleAtAbsoluteIndex:(unint64_t)index withRule:(id)rule;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTTableFilterSet

- (TSTTableFilterSet)initWithFilterRules:(id)rules type:(int)type context:(id)context
{
  rulesCopy = rules;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = TSTTableFilterSet;
  v11 = [(TSTTableFilterSet *)&v27 initWithContext:contextCopy];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_rules, rules);
    v12->_needsFormulaRewriteForImport = 0;
    rules = v12->_rules;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_221433BD4;
    v25[3] = &unk_27845DB98;
    v14 = v12;
    v26 = v14;
    objc_msgSend_enumerateObjectsUsingBlock_(rules, v15, v25, v16);
    v24 = objc_msgSend_count(v12->_rules, v17, v18, v19);
    sub_2211531C0(&v14->_filterOffsets.__begin_, &v24);
    v14->_isEnabled = objc_msgSend_count(v12->_rules, v20, v21, v22) != 0;
  }

  return v12;
}

- (TSTTableFilterSet)initWithNotBlankColumnGroupsWithContext:(id)context withPivotTable:(id)table
{
  v23[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tableCopy = table;
  v22[0] = 0;
  v22[1] = objc_msgSend_tableUID(tableCopy, v8, v9, v10);
  v22[2] = v11;
  v12 = objc_msgSend_defaultPredicateForType_argumentCellRef_hostCell_(TSTFormulaPredicate, v11, 51, v22, 0);
  v13 = [TSTTableFilterRule alloc];
  v16 = objc_msgSend_initWithFormulaPredicate_(v13, v14, v12, v15);
  v23[0] = v16;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v23, 1);
  v20 = objc_msgSend_initWithFilterRules_type_context_(self, v19, v18, 0, contextCopy);

  return v20;
}

- (TSTTableFilterSet)initWithNotBlankRowGroupsWithContext:(id)context withPivotTable:(id)table
{
  v23[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tableCopy = table;
  v22[0] = 0;
  v22[1] = objc_msgSend_tableUID(tableCopy, v8, v9, v10);
  v22[2] = v11;
  v12 = objc_msgSend_defaultPredicateForType_argumentCellRef_hostCell_(TSTFormulaPredicate, v11, 50, v22, 0);
  v13 = [TSTTableFilterRule alloc];
  v16 = objc_msgSend_initWithFormulaPredicate_(v13, v14, v12, v15);
  v23[0] = v16;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v23, 1);
  v20 = objc_msgSend_initWithFilterRules_type_context_(self, v19, v18, 0, contextCopy);

  return v20;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = objc_msgSend_initWithArray_copyItems_(v5, v6, self->_rules, 1);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithFilterRules_type_context_(v8, v9, v7, self->_type, contextCopy);
  objc_msgSend_setIsEnabled_(v10, v11, self->_isEnabled, v12);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v10, v13, self->_needsFormulaRewriteForImport, v14);
  if (v10 != self)
  {
    sub_22128026C((v10 + 88), self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  *(v10 + 112) = self->_downgradedForPrePivot;

  return v10;
}

- (id)copyByRewritingFilterRulesToUidFormWithContext:(id)context withTableInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v11 = objc_msgSend_count(self->_rules, v8, v9, v10);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v12, v11, v13);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v18 = objc_msgSend_objectAtIndex_(self->_rules, v14, i, v15);
      v21 = objc_msgSend_copyByRewritingToUidFormWithTableInfo_(v18, v19, infoCopy, v20);
      objc_msgSend_addObject_(v16, v22, v21, v23);
    }
  }

  v24 = objc_alloc(objc_opt_class());
  v26 = objc_msgSend_initWithFilterRules_type_context_(v24, v25, v16, self->_type, contextCopy);
  objc_msgSend_setIsEnabled_(v26, v27, self->_isEnabled, v28);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v26, v29, self->_needsFormulaRewriteForImport, v30);
  if (v26 != self)
  {
    sub_22128026C((v26 + 88), self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  return v26;
}

- (id)copyByRewritingFilterRulesToGeometricFormWithContext:(id)context withTableInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v11 = objc_msgSend_count(self->_rules, v8, v9, v10);
  v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v12, v11, v13);
  v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v19 = objc_msgSend_objectAtIndex_(self->_rules, v15, i, v16);
      v38 = 0;
      v23 = objc_msgSend_copyByRewritingToGeometricFormWithTableInfo_containsBadRef_(v19, v20, infoCopy, &v38);
      if (v38 == 1)
      {
        objc_msgSend_addIndex_(v17, v21, i, v22);
      }

      objc_msgSend_addObject_(v14, v21, v23, v22);
    }
  }

  v24 = objc_alloc(objc_opt_class());
  v26 = objc_msgSend_initWithFilterRules_type_context_(v24, v25, v14, self->_type, contextCopy);
  objc_msgSend_setIsEnabled_(v26, v27, self->_isEnabled, v28);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v26, v29, self->_needsFormulaRewriteForImport, v30);
  if (v26 != self)
  {
    sub_22128026C((v26 + 88), self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  if (objc_msgSend_count(v17, v31, v32, v33))
  {
    v36 = objc_msgSend_removeRulesWithAbsoluteIndices_(v26, v34, v17, v35);
  }

  return v26;
}

- (id)copyByRewritingFilterRulesWithContext:(id)context fromTableModel:(id)model toTableModel:(id)tableModel
{
  contextCopy = context;
  modelCopy = model;
  tableModelCopy = tableModel;
  v13 = objc_msgSend_count(self->_rules, v10, v11, v12);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v13, v15);
  v47 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v20 = objc_msgSend_objectAtIndex_(self->_rules, v17, i, v18, contextCopy);
      v25 = objc_msgSend_copyByRewritingFromTableModel_toTableModel_(v20, v21, modelCopy, tableModelCopy);
      if (v25)
      {
        objc_msgSend_addObject_(v16, v22, v25, v24);
      }

      else
      {
        v26 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23, v24);
        objc_msgSend_addObject_(v16, v27, v26, v28);

        objc_msgSend_addIndex_(v47, v29, i, v30);
      }
    }
  }

  v31 = contextCopy;
  v32 = objc_alloc(objc_opt_class());
  v34 = objc_msgSend_initWithFilterRules_type_context_(v32, v33, v16, self->_type, contextCopy);
  objc_msgSend_setIsEnabled_(v34, v35, self->_isEnabled, v36);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v34, v37, self->_needsFormulaRewriteForImport, v38);
  if (v34 != self)
  {
    sub_22128026C((v34 + 88), self->_filterOffsets.__begin_, self->_filterOffsets.__end_, self->_filterOffsets.__end_ - self->_filterOffsets.__begin_);
  }

  if (objc_msgSend_count(v47, v39, v40, v41, contextCopy))
  {
    v44 = objc_msgSend_removeRulesWithAbsoluteIndices_(v34, v42, v47, v43);
  }

  return v34;
}

- (id)p_downgradedFilterRuleForListItem:(id)item fromPredicate:(id)predicate
{
  itemCopy = item;
  predicateCopy = predicate;
  v11 = objc_msgSend_predArg0(predicateCopy, v8, v9, v10);
  v15 = objc_msgSend_copy(v11, v12, v13, v14);

  if (v15)
  {
    objc_msgSend_crossTableRef(v15, v16, v17, v18);
  }

  else
  {
    v116[0] = 0;
    v116[1] = 0;
    v117 = 0;
  }

  v117 = *(objc_msgSend_relativeCellRef(v15, v16, v17, v18) + 4) << 32;
  v19 = [TSTFormulaPredArg alloc];
  v22 = objc_msgSend_initWithCrossTableRef_(v19, v20, v116, v21);

  v26 = objc_msgSend_predicateType(predicateCopy, v23, v24, v25);
  v30 = objc_msgSend_dataType(itemCopy, v27, v28, v29);
  v34 = 0;
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      if (v26 == 53)
      {
        v43 = 36;
      }

      else
      {
        v43 = 37;
      }

      v57 = objc_msgSend_string(itemCopy, v31, v32, v33);
      if (v57)
      {
        v61 = v57;
        v62 = objc_msgSend_length(v57, v58, v59, v60);
      }

      else
      {
        v61 = &stru_2834BADA0;
        v62 = objc_msgSend_length(&stru_2834BADA0, v58, v59, v60);
      }

      v63 = v62;
      v64 = [TSTFormulaPredArg alloc];
      v42 = objc_msgSend_initWithString_(v64, v65, v61, v66);

      if (!v63)
      {
        if (v26 == 53)
        {
          v67 = 34;
        }

        else
        {
          v67 = 35;
        }

        v68 = [TSTFormulaPredicate alloc];
        v114 = objc_msgSend_forConditionalStyle(predicateCopy, v69, v70, v71);
        v73 = objc_msgSend_initWithPredicateType_arg0_arg1_arg2_qualifier1_qualifier2_forConditionalStyle_(v68, v72, v67, v22, 0, 0, 0, 0, v114);
        v74 = [TSTTableFilterRule alloc];
        v77 = objc_msgSend_initWithFormulaPredicate_(v74, v75, v73, v76);
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (v30 != 5)
    {
      if (v30 != 6)
      {
        goto LABEL_45;
      }

      if (v26 == 53)
      {
        v43 = 36;
      }

      else
      {
        v43 = 37;
      }

      v44 = objc_msgSend_objectLocale(self, v31, v32, v33);
      v39 = objc_msgSend_trueString(v44, v45, v46, v47);

      v48 = [TSTFormulaPredArg alloc];
      v42 = objc_msgSend_initWithString_(v48, v49, v39, v50);
      goto LABEL_17;
    }

    if (v26 == 53)
    {
      v43 = 38;
    }

    else
    {
      v43 = 39;
    }

    v86 = [TSTFormulaPredArg alloc];
    objc_msgSend_durationValue(itemCopy, v87, v88, v89);
    v91 = v90;
    v95 = objc_msgSend_durationUnits(itemCopy, v92, v93, v94);
    v85 = objc_msgSend_initWithDuration_units_(v86, v96, v95, v97, v91);
  }

  else
  {
    if (!v30)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTTableFilterSet p_downgradedFilterRuleForListItem:fromPredicate:]", v33);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 253, 0, "Invalid Predicate Arg Data for list item");
      goto LABEL_43;
    }

    if (v30 != 1)
    {
      if (v30 != 2)
      {
        goto LABEL_45;
      }

      if (v26 == 53)
      {
        v35 = [TSTFormulaPredArg alloc];
        v39 = objc_msgSend_date(itemCopy, v36, v37, v38);
        v42 = objc_msgSend_initWithDate_(v35, v40, v39, v41);
        v43 = 20;
LABEL_17:

        goto LABEL_39;
      }

      v106 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTTableFilterSet p_downgradedFilterRuleForListItem:fromPredicate:]", v33);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v108);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v109, v52, v55, 224, 0, "Don't have a TSTFormulaPredicateTypeDateIsNotTheDate predicate type, but need one.");
LABEL_43:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112);
      goto LABEL_44;
    }

    if (v26 == 53)
    {
      v43 = 5;
    }

    else
    {
      v43 = 6;
    }

    v78 = [TSTFormulaPredArg alloc];
    objc_msgSend_doubleValue(itemCopy, v79, v80, v81);
    v85 = objc_msgSend_initWithDouble_(v78, v82, v83, v84);
  }

  v42 = v85;
LABEL_39:
  if (v42)
  {
    v98 = [TSTFormulaPredicate alloc];
    v115 = objc_msgSend_forConditionalStyle(predicateCopy, v99, v100, v101);
    v73 = objc_msgSend_initWithPredicateType_arg0_arg1_arg2_qualifier1_qualifier2_forConditionalStyle_(v98, v102, v43, v22, v42, 0, 0, 0, v115);
    v103 = [TSTTableFilterRule alloc];
    v77 = objc_msgSend_initWithFormulaPredicate_(v103, v104, v73, v105);
LABEL_41:
    v34 = v77;

    goto LABEL_45;
  }

LABEL_44:
  v34 = 0;
LABEL_45:

  return v34;
}

- (id)downgradeFilterSetForBackwardCompatWithLocale:(id)locale
{
  v223 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v7 = objc_msgSend_filterSetType(self, v4, v5, v6);
  v189 = objc_msgSend_filterCount(self, v8, v9, v10);
  v14 = objc_msgSend_count(self->_rules, v11, v12, v13);
  v17 = v14;
  selfCopy = self;
  v186 = v7;
  v18 = 0;
  if (!v14)
  {
    v59 = 0;
    v60 = 0;
    v61 = 1;
    goto LABEL_31;
  }

  v193 = 0;
  v195 = v14;
  v190 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  obj = 1;
  do
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v15, v21, v16);
    v26 = objc_msgSend_predicate(v22, v23, v24, v25);
    if ((objc_msgSend_backwardCompatiblePrePivot(v26, v27, v28, v29) & 1) == 0 && (objc_msgSend_canDowngradeForPrePivotFormat(v26, v30, v31, v32) & 1) == 0)
    {
LABEL_29:

      obj = 0;
      self = selfCopy;
      if (v19)
      {
        goto LABEL_26;
      }

LABEL_30:
      v59 = v193;
      v60 = v190;
      v61 = obj;
      goto LABEL_31;
    }

    if (objc_msgSend_needsThreshold(v22, v30, v31, v32))
    {
      if (++v18 > 8)
      {
        goto LABEL_29;
      }
    }

    else if (objc_msgSend_predicateType(v26, v33, v34, v35) == 53)
    {
      v39 = objc_msgSend_dataList1(v26, v36, v37, v38);
      v43 = objc_msgSend_count(v39, v40, v41, v42);

      v193 += v43;
      v19 = 1;
    }

    else if (objc_msgSend_predicateType(v26, v36, v37, v38) == 54)
    {
      v47 = objc_msgSend_dataList1(v26, v44, v45, v46);
      v188 = objc_msgSend_count(v47, v48, v49, v50);
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v51 = v47;
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v214, v222, 16);
      if (v56)
      {
        v57 = *v215;
        while (2)
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v215 != v57)
            {
              objc_enumerationMutation(v51);
            }

            if (objc_msgSend_dataType(*(*(&v214 + 1) + 8 * i), v53, v54, v55) == 2)
            {
              obj = 0;
              goto LABEL_22;
            }
          }

          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v214, v222, 16);
          if (v56)
          {
            continue;
          }

          break;
        }

LABEL_22:
        v17 = v195;
      }

      v193 += v188;
      obj &= v189 >= v17;
      v20 = 1;
    }

    else
    {
      ++v190;
    }

    ++v21;
    v17 = v195;
    self = selfCopy;
  }

  while (v21 != v195);
  if ((v19 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v59 = v193;
  v60 = v190;
  v61 = obj;
  if (v20)
  {
    v62 = 0;
    goto LABEL_109;
  }

LABEL_31:
  v62 = 0;
  if ((v59 + v60 + v18) > 8 || (v61 & 1) == 0)
  {
    goto LABEL_109;
  }

  v63 = objc_opt_new();
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  obja = self->_rules;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v64, &v210, v221, 16);
  v69 = 0;
  v70 = 0;
  if (!v65)
  {
    v134 = 1;
    goto LABEL_81;
  }

  v196 = *v211;
  while (2)
  {
    v194 = v65;
    v71 = 0;
    while (2)
    {
      if (*v211 != v196)
      {
        objc_enumerationMutation(obja);
      }

      v72 = *(*(&v210 + 1) + 8 * v71);
      v73 = objc_msgSend_predicate(v72, v66, v67, v68);
      if (objc_msgSend_canDowngradeForPrePivotFormat(v73, v74, v75, v76))
      {
        v80 = objc_msgSend_predicateType(v73, v77, v78, v79);
        if ((v80 - 53) > 1u)
        {
          if ((v80 - 57) <= 1u)
          {
            v97 = objc_msgSend_predicate(v72, v81, v82, v83);
            v91 = objc_msgSend_downgradeForPrePivotFormatForLocale_(v97, v98, localeCopy, v99);

            v100 = [TSTTableFilterRule alloc];
            v103 = objc_msgSend_initWithFormulaPredicate_(v100, v101, v91, v102);
            objc_msgSend_addObject_(v63, v104, v103, v105);

            goto LABEL_73;
          }

          v125 = MEMORY[0x277D81150];
          v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSTTableFilterSet downgradeFilterSetForBackwardCompatWithLocale:]", v83);
          v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v128);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v130, v126, v129, 423, 0, "Unexpected predicate type during downgrade!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133);
        }

        else
        {
          v84 = v186;
          if (v80 == 53 && !v186)
          {
            if (v189 != 1)
            {
              v186 = 0;
              goto LABEL_79;
            }

            v186 = 1;
            if (!v70)
            {
LABEL_64:
              v70 = objc_opt_new();
            }
          }

          else
          {
            v86 = v80 == 54 && v186;
            if (v80 == 54 && v186)
            {
              v84 = v189 != 1;
            }

            v186 = v84;
            if (v86 && v189 != 1)
            {
              v186 = v189 != 1;
LABEL_79:

              v134 = 0;
              goto LABEL_81;
            }

            if (!v70)
            {
              goto LABEL_64;
            }
          }

          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v91 = objc_msgSend_dataList1(v73, v81, v82, v83);
          v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v115, &v206, v220, 16);
          if (v117)
          {
            v118 = *v207;
            while (2)
            {
              for (j = 0; j != v117; ++j)
              {
                if (*v207 != v118)
                {
                  objc_enumerationMutation(v91);
                }

                v122 = objc_msgSend_p_downgradedFilterRuleForListItem_fromPredicate_(selfCopy, v116, *(*(&v206 + 1) + 8 * j), v73);
                if (!v122)
                {
                  v135 = MEMORY[0x277D81150];
                  v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "[TSTTableFilterSet downgradeFilterSetForBackwardCompatWithLocale:]", v121);
                  v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v138);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v140, v136, v139, 407, 0, "invalid nil value for '%{public}s'", "newRule");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143);
                  goto LABEL_79;
                }

                objc_msgSend_addObject_(v70, v120, v122, v121);
                objc_msgSend_addObject_(v63, v123, v122, v124);
              }

              v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v116, &v206, v220, 16);
              if (v117)
              {
                continue;
              }

              break;
            }
          }

LABEL_73:
        }
      }

      else
      {
        if (objc_msgSend_backwardCompatiblePrePivot(v73, v77, v78, v79))
        {
          v91 = objc_msgSend_copy(v72, v88, v89, v90);
          if (objc_msgSend_needsThreshold(v72, v92, v93, v94))
          {
            if (!v69)
            {
              v69 = objc_opt_new();
            }

            objc_msgSend_addObject_(v69, v95, v91, v96);
          }

          objc_msgSend_addObject_(v63, v95, v91, v96);
          goto LABEL_73;
        }

        v106 = MEMORY[0x277D81150];
        v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "[TSTTableFilterSet downgradeFilterSetForBackwardCompatWithLocale:]", v90);
        v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v109);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v111, v107, v110, 438, 0, "Unexpected predicate type during downgrade!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113, v114);
      }

      if (++v71 != v194)
      {
        continue;
      }

      break;
    }

    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v66, &v210, v221, 16);
    v134 = 1;
    if (v65)
    {
      continue;
    }

    break;
  }

LABEL_81:

  if (objc_msgSend_count(v63, v144, v145, v146) < 9)
  {
    v147 = v134;
  }

  else
  {
    v147 = 0;
  }

  if (v147)
  {
    v148 = objc_opt_new();
    if (objc_msgSend_count(v63, v149, v150, v151) >= 9 && objc_msgSend_count(v69, v152, v153, v154))
    {
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v155 = v69;
      v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v156, &v202, v219, 16);
      if (v159)
      {
        v160 = *v203;
        do
        {
          for (k = 0; k != v159; ++k)
          {
            if (*v203 != v160)
            {
              objc_enumerationMutation(v155);
            }

            objc_msgSend_addObject_(v148, v157, *(*(&v202 + 1) + 8 * k), v158);
          }

          v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v157, &v202, v219, 16);
        }

        while (v159);
      }

      v162 = 1;
    }

    else
    {
      v162 = 0;
    }

    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v163 = v63;
    v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v164, &v198, v218, 16);
    if (v167)
    {
      v168 = *v199;
      do
      {
        for (m = 0; m != v167; ++m)
        {
          if (*v199 != v168)
          {
            objc_enumerationMutation(v163);
          }

          v170 = *(*(&v198 + 1) + 8 * m);
          if (!v162 || (objc_msgSend_containsObject_(v69, v165, *(*(&v198 + 1) + 8 * m), v166) & 1) == 0)
          {
            objc_msgSend_addObject_(v148, v165, v170, v166);
          }
        }

        v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v163, v165, &v198, v218, 16);
      }

      while (v167);
    }

    v171 = [TSTTableFilterSet alloc];
    v175 = objc_msgSend_context(selfCopy, v172, v173, v174);
    v62 = objc_msgSend_initWithFilterRules_type_context_(v171, v176, v148, v186, v175);

    isEnabled = objc_msgSend_isEnabled(selfCopy, v177, v178, v179);
    objc_msgSend_setIsEnabled_(v62, v181, isEnabled, v182);
    objc_msgSend_setDowngradedForPrePivot_(v62, v183, 1, v184);
  }

  else
  {
    v62 = 0;
  }

LABEL_109:

  return v62;
}

- (BOOL)containsFilterRulesInUIDForm
{
  v5 = objc_msgSend_count(self->_rules, a2, v2, v3);
  if (v5)
  {
    v8 = v5;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = objc_msgSend_objectAtIndex_(self->_rules, v6, v9, v7);
      v15 = objc_msgSend_formula(v11, v12, v13, v14);
      v19 = objc_msgSend_containsUidReferences(v15, v16, v17, v18);

      if (v19)
      {
        break;
      }

      v10 = ++v9 < v8;
    }

    while (v8 != v9);
  }

  else
  {
    return 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5 && (type = self->_type, type == objc_msgSend_filterSetType(v5, v6, v7, v8)) && (isEnabled = self->_isEnabled, isEnabled == objc_msgSend_isEnabled(v9, v11, v12, v13)) && (needsFormulaRewriteForImport = self->_needsFormulaRewriteForImport, needsFormulaRewriteForImport == objc_msgSend_needsFormulaRewriteForImport(v9, v15, v16, v17)) && (begin = self->_filterOffsets.__begin_, v20 = (self->_filterOffsets.__end_ - begin), v21 = v9[11], v20 == (v9[12] - v21)) && !memcmp(begin, v21, v20) && (v25 = objc_msgSend_count(self->_rules, v22, v23, v24), v25 == objc_msgSend_ruleCount(v9, v26, v27, v28)))
  {
    if (v25)
    {
      v31 = 0;
      v32 = v25 - 1;
      do
      {
        v33 = objc_msgSend_objectAtIndex_(self->_rules, v29, v31, v30);
        v36 = objc_msgSend_ruleAtAbsoluteIndex_(v9, v34, v31, v35);
        isEqual = objc_msgSend_isEqual_(v33, v37, v36, v38);

        if (isEqual)
        {
          v40 = v32 == v31;
        }

        else
        {
          v40 = 1;
        }

        ++v31;
      }

      while (!v40);
    }

    else
    {
      LOBYTE(isEqual) = 1;
    }
  }

  else
  {
    LOBYTE(isEqual) = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  objc_msgSend_count(self->_rules, v3, v4, v5);
  return TSUHashWithSeed();
}

- (BOOL)p_thresholdComparisonMatchesFilter:(int64_t)filter withPredicateType:(unsigned __int8)type
{
  if (type > 45)
  {
    if (type <= 47)
    {
      if (type != 46)
      {
        return filter == -1;
      }

      return filter == 1;
    }

    if (type != 48)
    {
      if (type != 49)
      {
        goto LABEL_11;
      }

LABEL_14:
      v15 = (filter + 1) >= 2;
      return !v15;
    }
  }

  else
  {
    if (type <= 29)
    {
      if (type != 11)
      {
        if (type != 12)
        {
          goto LABEL_11;
        }

        return filter == -1;
      }

      return filter == 1;
    }

    if (type != 30)
    {
      if (type != 31)
      {
LABEL_11:
        v5 = MEMORY[0x277D81150];
        v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableFilterSet p_thresholdComparisonMatchesFilter:withPredicateType:]", type);
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v8);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 582, 0, "Unexpected predicate type found when calculating threshold");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
        return 0;
      }

      goto LABEL_14;
    }
  }

  v15 = filter >= 2;
  return !v15;
}

- (BOOL)rowIsShown:(unsigned int)shown withHiddenStateExtent:(id)extent withCalcEngine:(id)engine
{
  extentCopy = extent;
  engineCopy = engine;
  if (self->_isEnabled)
  {
    v161 = extentCopy;
    v173[0] = objc_msgSend_hiddenStateExtentUid(extentCopy, v8, v9, v10);
    v173[1] = v11;
    v14 = objc_msgSend_tableModel(extentCopy, v11, v12, v13);
    type = self->_type;
    v165 = v14;
    v19 = objc_msgSend_filterCount(self, v16, v17, v18);
    if (v19)
    {
      v22 = 0;
      v23 = type == 0;
      v157 = v19;
      v24 = 1;
      while (1)
      {
        begin = self->_filterOffsets.__begin_;
        v160 = v22 + 1;
        v166 = begin[v22 + 1];
        if (!self->_type && !v23)
        {
          break;
        }

        v26 = begin[v22];
        if (v26 < v166)
        {
          v162 = v23;
          while (1)
          {
            v27 = objc_msgSend_ruleAtAbsoluteIndex_(self, v20, v26, v21);
            if ((objc_msgSend_needsThreshold(v27, v28, v29, v30) & 1) == 0)
            {
              v45 = objc_msgSend_matchesRow_withFormulaTableUID_withCalculationEngine_(v27, v31, shown, v173, engineCopy);
              goto LABEL_53;
            }

            if (!objc_msgSend_isUniquesOrDuplicates(v27, v31, v32, v33))
            {
              break;
            }

            v36 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v27, v34, v165, v35);
            v171 = 0u;
            v172 = 0u;
            v40 = objc_msgSend_columnRowUIDMap(v165, v37, v38, v39);
            v43 = v40;
            v44 = shown | (v36 << 32);
            if (v40)
            {
              objc_msgSend_cellUIDForCellID_(v40, v41, v44, v42);
            }

            else
            {
              v171 = 0u;
              v172 = 0u;
            }

            v170 = 0;
            RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v165, v80, &v170, v44, 0);
            v49 = v170;
            if (!RichTextAttributesIfPlainText)
            {
              v85 = objc_msgSend_documentLocale(engineCopy, v82, v83, v84);
              v88 = objc_msgSend_asStringWithLocale_(v49, v86, v85, v87);

              if (objc_msgSend_length(v88, v89, v90, v91))
              {
                v95 = objc_msgSend_predicate(v27, v92, v93, v94);
                v99 = objc_msgSend_predicateType(v95, v96, v97, v98);

                objc_msgSend_uniqueValuesLock(extentCopy, v100, v101, v102);
                v105 = objc_msgSend_uniqueValuesForColumnUID_(extentCopy, v103, &v171, v104);
                v159 = objc_msgSend_uniqueValueToRowUids(v105, v106, v107, v108);
                v112 = objc_msgSend_uniqueValueToRowIndexes(v105, v109, v110, v111);
                v118 = objc_msgSend_objectForKey_(v112, v113, v88, v114);
                if (!v118)
                {
                  v155 = objc_msgSend_objectForKey_(v159, v115, v88, v117);
                  v122 = objc_msgSend_columnRowUIDMap(v165, v119, v120, v121);
                  v118 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v122, v123, v155, 1);

                  if (!v118)
                  {
                    v118 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v124, v125, v126);
                  }

                  objc_msgSend_setObject_forKey_(v112, v124, v118, v88);
                }

                objc_msgSend_uniqueValuesUnlock(v161, v115, v116, v117);
                switch(v99)
                {
                  case 15:
                    v45 = objc_msgSend_count(v118, v127, v128, v129) > 1;
                    break;
                  case 52:
                    v130 = objc_msgSend_firstIndex(v118, v127, v128, v129) == shown;
                    goto LABEL_45;
                  case 16:
                    v130 = objc_msgSend_count(v118, v127, v128, v129) == 1;
LABEL_45:
                    v45 = v130;
                    break;
                  default:
                    v45 = 0;
                    break;
                }

                extentCopy = v161;
              }

              else
              {
                v45 = 0;
              }

              goto LABEL_52;
            }

            v45 = 0;
LABEL_52:

LABEL_53:
            v147 = self->_type;
            if (v147 == 1)
            {
              if (v45)
              {

                v153 = 1;
                v14 = v165;
                goto LABEL_69;
              }
            }

            else if (!v147)
            {
              if (v45)
              {

                v24 = 0;
                v23 = 1;
                goto LABEL_63;
              }

              v162 = 0;
            }

            if (v166 == ++v26)
            {
              v24 = 0;
              v23 = v162;
              goto LABEL_63;
            }
          }

          v46 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v27, v34, v165, v35);
          v169 = 0;
          v48 = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v165, v47, &v169, shown | (v46 << 32), 0);
          v49 = v169;
          v53 = objc_msgSend_thresholdCellValues(extentCopy, v50, v51, v52);
          if (v26 >= objc_msgSend_count(v53, v54, v55, v56))
          {
            v60 = 0;
            v64 = objc_msgSend_valueType(0, v57, v58, v59);
          }

          else
          {
            v60 = objc_msgSend_objectAtIndex_(v53, v57, v26, v59);
            v64 = objc_msgSend_valueType(v60, v61, v62, v63);
          }

          if (!v64)
          {
            v45 = 1;
            goto LABEL_42;
          }

          if (v64 == 3)
          {
            if (!v48 && objc_msgSend_deepType_(v49, v65, 0, v66) == 3)
            {
              v158 = objc_msgSend_dateValue(v60, v131, v132, v133);
              v135 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v134, 2, v46);
              v73 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v136, engineCopy, v173, v135, 0);
              v168 = 0;
              v75 = objc_msgSend_compareValuesLeft_right_context_outError_(TSCEValue, v137, v49, v158, v73, &v168);
              v79 = v168;
              if (!v79)
              {
                goto LABEL_60;
              }

              goto LABEL_38;
            }
          }

          else if (v64 == 5)
          {
            if (!v48 && objc_msgSend_deepType_(v49, v65, 0, v66) == 5)
            {
              v158 = objc_msgSend_numberValue(v60, v67, v68, v69);
              v71 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v70, 2, v46);
              v73 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v72, engineCopy, v173, v71, 0);
              v167 = 0;
              v75 = objc_msgSend_compareValuesLeft_right_context_outError_(TSCEValue, v74, v49, v158, v73, &v167);
              v79 = v167;
              if (!v79)
              {
LABEL_60:
                v156 = objc_msgSend_predicate(v27, v76, v77, v78);
                v151 = objc_msgSend_predicateType(v156, v148, v149, v150);

                v45 = objc_msgSend_p_thresholdComparisonMatchesFilter_withPredicateType_(self, v152, v75, v151);
LABEL_61:

LABEL_42:
                extentCopy = v161;
                goto LABEL_52;
              }

LABEL_38:
              v45 = 0;
              goto LABEL_61;
            }
          }

          else
          {
            v138 = MEMORY[0x277D81150];
            v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSTTableFilterSet rowIsShown:withHiddenStateExtent:withCalcEngine:]", v66);
            v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v141);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v143, v139, v142, 718, 0, "Unexpected threshold value type found");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v144, v145, v146);
          }

          v45 = 0;
          goto LABEL_42;
        }

LABEL_63:
        v22 = v160;
        v14 = v165;
        if (v160 == v157)
        {
          v153 = v23 | v24;
          goto LABEL_69;
        }
      }

      v153 = 0;
    }

    else
    {
      v153 = 1;
    }

LABEL_69:
  }

  else
  {
    v153 = 1;
  }

  return v153 & 1;
}

- (id)ruleAtAbsoluteIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_rules, a2, index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(self->_rules, v6, index, v7);
  }

  return v8;
}

- (id)ruleInFilter:(unint64_t)filter atIndex:(unint64_t)index
{
  p_filterOffsets = &self->_filterOffsets;
  begin = self->_filterOffsets.__begin_;
  if (filter >= self->_filterOffsets.__end_ - begin)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableFilterSet ruleInFilter:atIndex:]", index);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 750, 0, "filter index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    begin = p_filterOffsets->__begin_;
  }

  v19 = &begin[filter];
  v18 = *v19;
  if (v19[1] - *v19 <= index)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableFilterSet ruleInFilter:atIndex:]", index);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 751, 0, "rule index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    v18 = p_filterOffsets->__begin_[filter];
  }

  return objc_msgSend_ruleAtAbsoluteIndex_(self, a2, v18 + index, index);
}

- (id)filterAtIndex:(unint64_t)index inTable:(id)table
{
  tableCopy = table;
  p_filterOffsets = &self->_filterOffsets;
  if (index >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet filterAtIndex:inTable:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 759, 0, "filter index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = MEMORY[0x277CBEB18];
  v20 = objc_msgSend_numberOfRulesInFilter_(self, v6, index, v7);
  v25 = objc_msgSend_arrayWithCapacity_(v19, v21, v20, v22);
  v26 = &p_filterOffsets->__begin_[index];
  v27 = *v26;
  if (*v26 < v26[1])
  {
    do
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v23, v27, v24);
      objc_msgSend_addObject_(v25, v29, v28, v30);

      ++v27;
      v31 = &p_filterOffsets->__begin_[index];
    }

    while (v27 < v31[1]);
    v27 = *v31;
  }

  v32 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v23, v27, v24);
  v36 = objc_msgSend_filteringTableModel(tableCopy, v33, v34, v35);
  v39 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v32, v37, v36, v38);

  v41 = objc_msgSend_filterWithIndex_baseColumnIndex_rules_(TSTEphemeralFilter, v40, index, v39, v25);

  return v41;
}

- (id)removeRulesWithAbsoluteIndices:(id)indices
{
  indicesCopy = indices;
  Index = objc_msgSend_lastIndex(indicesCopy, v5, v6, v7);
  if (Index >= objc_msgSend_count(self->_rules, v9, v10, v11))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableFilterSet removeRulesWithAbsoluteIndices:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 803, 0, "invalid rule index passed in");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  objc_msgSend_willModify(self, v12, v13, v14);
  v54 = 0;
  v55 = &v54;
  v56 = 0x4812000000;
  v57 = sub_221436B60;
  v58 = sub_221436B84;
  v59 = &unk_22188E88F;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  begin = self->_filterOffsets.__begin_;
  end = self->_filterOffsets.__end_;
  v53[3] = *begin;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_221436C2C;
  v52[3] = &unk_2784652F0;
  v52[4] = &v54;
  v52[5] = v53;
  v26 = sub_221436B9C(begin + 1, end, v52);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_221436C88;
  v51[3] = &unk_27845F0D8;
  v51[4] = self;
  v51[5] = &v54;
  objc_msgSend_enumerateIndexesUsingBlock_(indicesCopy, v27, v51, v28);
  v50[0] = 0;
  sub_221436CF8(&self->_filterOffsets, 1uLL, v50);
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v29 = v55[6];
  v30 = v55[7];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_221436EEC;
  v49[3] = &unk_278465318;
  v49[4] = self;
  v49[5] = v50;
  v31 = sub_221436B9C(v29, v30, v49);
  v32 = objc_alloc(MEMORY[0x277CBEA60]);
  v35 = objc_msgSend_objectsAtIndexes_(self->_rules, v33, indicesCopy, v34);
  v37 = objc_msgSend_initWithArray_copyItems_(v32, v36, v35, 1);

  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v41 = objc_msgSend_initWithArray_(v38, v39, self->_rules, v40);
  objc_msgSend_removeObjectsAtIndexes_(v41, v42, indicesCopy, v43);
  objc_storeStrong(&self->_rules, v41);
  rules = self->_rules;
  if (!rules || !objc_msgSend_count(rules, v44, v45, v46))
  {
    self->_isEnabled = 0;
  }

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v54, 8);
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  return v37;
}

- (void)removeRulesWithIndices:(id)indices inFilter:(unint64_t)filter
{
  indicesCopy = indices;
  if (objc_msgSend_filterCount(self, v6, v7, v8) <= filter)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableFilterSet removeRulesWithIndices:inFilter:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 862, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (objc_msgSend_count(indicesCopy, v9, v10, v11) && objc_msgSend_lastIndex(indicesCopy, v21, v22, v23) >= self->_filterOffsets.__begin_[filter + 1] - self->_filterOffsets.__begin_[filter])
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableFilterSet removeRulesWithIndices:inFilter:]", v23);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 864, 0, "rule indices are out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  if (!indicesCopy || !objc_msgSend_count(indicesCopy, v21, v22, v23))
  {
    v33 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v21, 0, self->_filterOffsets.__begin_[filter + 1] - self->_filterOffsets.__begin_[filter]);

    indicesCopy = v33;
  }

  v34 = objc_alloc(MEMORY[0x277CCAB58]);
  v37 = objc_msgSend_initWithIndexSet_(v34, v35, indicesCopy, v36);
  Index = objc_msgSend_firstIndex(v37, v38, v39, v40);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(v37, v42, Index, self->_filterOffsets.__begin_[filter]);
  v45 = objc_msgSend_removeRulesWithAbsoluteIndices_(self, v43, v37, v44);
}

- (void)removeRulesForBaseColumnIndices:(id)indices withTableInfo:(id)info
{
  indicesCopy = indices;
  infoCopy = info;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = objc_msgSend_ruleCount(self, v8, v9, v10);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = objc_msgSend_ruleAtAbsoluteIndex_(self, v11, i, v13);
      v20 = objc_msgSend_filteringTableModel(infoCopy, v17, v18, v19);
      v23 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v16, v21, v20, v22);

      if (objc_msgSend_containsIndex_(indicesCopy, v24, v23, v25))
      {
        objc_msgSend_addIndex_(v7, v26, i, v27);
      }
    }
  }

  if (objc_msgSend_count(v7, v11, v12, v13))
  {
    v30 = objc_msgSend_removeRulesWithAbsoluteIndices_(self, v28, v7, v29);
  }
}

- (void)p_addRules:(id)rules atRuleIndices:(id)indices inFilter:(unint64_t)filter isNew:(BOOL)new
{
  newCopy = new;
  rulesCopy = rules;
  indicesCopy = indices;
  objc_msgSend_willModify(self, v11, v12, v13);
  p_filterOffsets = &self->_filterOffsets;
  if (filter >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableFilterSet p_addRules:atRuleIndices:inFilter:isNew:]", v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 899, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  if (!objc_msgSend_count(rulesCopy, v14, v15, v16))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTTableFilterSet p_addRules:atRuleIndices:inFilter:isNew:]", v29);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 900, 0, "no rules given");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
  }

  begin = p_filterOffsets->__begin_;
  v40 = &p_filterOffsets->__begin_[filter];
  if (newCopy)
  {
    sub_221437618(&self->_filterOffsets.__begin_, &p_filterOffsets->__begin_[filter], &p_filterOffsets->__begin_[filter]);
    begin = p_filterOffsets->__begin_;
    v40 = &p_filterOffsets->__begin_[filter];
  }

  if (!indicesCopy)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_count(indicesCopy, v27, v28, v29))
  {
    begin = p_filterOffsets->__begin_;
LABEL_10:
    v41 = MEMORY[0x277CCAA78];
    v42 = &begin[filter];
    v44 = *v42;
    v43 = v42[1];
    v45 = objc_msgSend_count(rulesCopy, v27, v28, v29);
    v47 = objc_msgSend_indexSetWithIndexesInRange_(v41, v46, v43 - v44, v45);

    indicesCopy = v47;
  }

  for (i = (v40 + 8); i != self->_filterOffsets.__end_; ++i)
  {
    *i += objc_msgSend_count(rulesCopy, v27, v28, v29);
  }

  v49 = objc_alloc(MEMORY[0x277CCAB58]);
  v52 = objc_msgSend_initWithIndexSet_(v49, v50, indicesCopy, v51);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(v52, v53, 0, p_filterOffsets->__begin_[filter]);
  if (!objc_msgSend_count(self->_rules, v54, v55, v56) && objc_msgSend_count(rulesCopy, v57, v58, v59))
  {
    self->_isEnabled = 1;
  }

  v60 = objc_alloc(MEMORY[0x277CBEA60]);
  v62 = objc_msgSend_initWithArray_copyItems_(v60, v61, rulesCopy, 1);
  v63 = objc_alloc(MEMORY[0x277CBEB18]);
  v66 = objc_msgSend_initWithArray_(v63, v64, self->_rules, v65);
  objc_msgSend_insertObjects_atIndexes_(v66, v67, v62, v52);
  rules = self->_rules;
  self->_rules = v66;

  self->_downgradedForPrePivot = 0;
}

- (void)addRules:(id)rules inFilter:(unint64_t)filter
{
  rulesCopy = rules;
  if (filter >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet addRules:inFilter:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 941, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v19 = objc_msgSend_count(rulesCopy, v6, v7, v8);
  if (v19)
  {
    v20 = filter + 1;
    v21 = self->_filterOffsets.__end_ - self->_filterOffsets.__begin_;
    if (filter + 1 == v21 >> 3)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v18, 0, v19);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v18, self->_filterOffsets.__begin_[v20] - self->_filterOffsets.__begin_[filter], v19);
    }
    v22 = ;
    objc_msgSend_p_addRules_atRuleIndices_inFilter_isNew_(self, v23, rulesCopy, v22, filter, v20 == v21 >> 3);
  }
}

- (void)replaceRule:(id)rule atRuleIndex:(unint64_t)index inFilter:(unint64_t)filter
{
  ruleCopy = rule;
  if (objc_msgSend_filterCount(self, v8, v9, v10) <= filter)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableFilterSet replaceRule:atRuleIndex:inFilter:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 957, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = self->_filterOffsets.__begin_[filter];
  if (self->_filterOffsets.__begin_[filter + 1] - v22 <= index)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableFilterSet replaceRule:atRuleIndex:inFilter:]", v12);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 958, 0, "rule indices are out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    v22 = self->_filterOffsets.__begin_[filter];
  }

  objc_msgSend_replaceRuleAtAbsoluteIndex_withRule_(self, v11, v22 + index, ruleCopy);
}

- (void)replaceRuleAtAbsoluteIndex:(unint64_t)index withRule:(id)rule
{
  ruleCopy = rule;
  objc_msgSend_willModify(self, v6, v7, v8);
  if (objc_msgSend_count(self->_rules, v9, v10, v11) <= index)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableFilterSet replaceRuleAtAbsoluteIndex:withRule:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 969, 0, "Insufficient rules to replaceRuleAtAbsoluteIndex: %lu", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  if (objc_msgSend_count(self->_rules, v12, v13, v14) <= index)
  {
    if (index)
    {
      goto LABEL_8;
    }

    v34 = MEMORY[0x277CBEB18];
    v33 = objc_msgSend_copy(ruleCopy, v24, v25, v26);
    v37 = objc_msgSend_arrayWithObject_(v34, v35, v33, v36);
    rules = self->_rules;
    self->_rules = v37;
  }

  else
  {
    v27 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v24, self->_rules, v26);
    v31 = objc_msgSend_copy(ruleCopy, v28, v29, v30);
    objc_msgSend_replaceObjectAtIndex_withObject_(v27, v32, index, v31);

    v33 = self->_rules;
    self->_rules = v27;
  }

LABEL_8:
  self->_downgradedForPrePivot = 0;
}

- (void)enumerateFiltersInTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v15 = 0;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v10 = 0;
    v11 = begin + 2;
    do
    {
      v12 = objc_msgSend_filterAtIndex_inTable_(self, v7, v10, tableCopy);
      blockCopy[2](blockCopy, v12, &v15);
      v13 = v15;

      if (v13)
      {
        break;
      }

      ++v10;
    }

    while (self->_filterOffsets.__end_ != v11++);
  }
}

- (void)enumerateFilterIndicesInTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v22 = 0;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v10 = 0;
    v11 = begin + 2;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v6, begin[v10], v7);
      v16 = objc_msgSend_filteringTableModel(tableCopy, v13, v14, v15);
      v19 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v12, v17, v16, v18);

      blockCopy[2](blockCopy, v19, v10, &v22);
      if (v22)
      {
        break;
      }

      ++v10;
    }

    while (self->_filterOffsets.__end_ != v11++);
  }
}

- (void)enumerateFiltersForColumn:(TSUModelColumnIndex)column withTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v25 = 0;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v11 = 0;
    v22 = blockCopy + 16;
    v12 = begin + 2;
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v8, begin[v11], v9, v22);
      v17 = objc_msgSend_filteringTableModel(tableCopy, v14, v15, v16);
      v20 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v13, v18, v17, v19);

      if (v20 == column._column)
      {
        (*(blockCopy + 2))(blockCopy, v11, &v25);
      }

      if (v25)
      {
        break;
      }

      ++v11;
    }

    while (self->_filterOffsets.__end_ != v12++);
  }
}

- (void)enumerateRulesInFilterIndex:(unint64_t)index usingBlock:(id)block
{
  blockCopy = block;
  p_filterOffsets = &self->_filterOffsets;
  if (index >= self->_filterOffsets.__end_ - self->_filterOffsets.__begin_)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet enumerateRulesInFilterIndex:usingBlock:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1036, 0, "filter index invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v25 = 0;
  v21 = objc_autoreleasePoolPush();
  v22 = &p_filterOffsets->__begin_[index];
  v23 = *v22;
  if (*v22 < v22[1])
  {
    do
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v19, v23, v20);
      blockCopy[2](blockCopy, v24, v23 - p_filterOffsets->__begin_[index], &v25);

      if (v25)
      {
        break;
      }

      ++v23;
    }

    while (v23 < p_filterOffsets->__begin_[index + 1]);
  }

  objc_autoreleasePoolPop(v21);
}

- (id)filterIndicesForBaseColumn:(TSUModelColumnIndex)column inTable:(id)table
{
  tableCopy = table;
  v28 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9);
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ != begin + 1)
  {
    v13 = self->_filterOffsets.__begin_;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v10, *v13, v11);
      v18 = objc_msgSend_filteringTableModel(tableCopy, v15, v16, v17);
      v21 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v14, v19, v18, v20);

      if (v21 == column._column)
      {
        objc_msgSend_addIndex_(v28, v10, begin - self->_filterOffsets.__begin_, v11);
      }

      ++v13;
      v22 = begin + 2;
      ++begin;
    }

    while (self->_filterOffsets.__end_ != v22);
  }

  v23 = objc_alloc(MEMORY[0x277CCAA78]);
  v26 = objc_msgSend_initWithIndexSet_(v23, v24, v28, v25);

  return v26;
}

- (unint64_t)firstFilterIndexForBaseColumn:(TSUModelColumnIndex)column inTable:(id)table
{
  tableCopy = table;
  begin = self->_filterOffsets.__begin_;
  if (self->_filterOffsets.__end_ == begin + 1)
  {
LABEL_5:
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = self->_filterOffsets.__begin_;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v6, *v10, v7);
      v15 = objc_msgSend_filteringTableModel(tableCopy, v12, v13, v14);
      v18 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v11, v16, v15, v17);

      if (v18 == column._column)
      {
        break;
      }

      ++v10;
      v19 = begin + 2;
      ++begin;
      if (self->_filterOffsets.__end_ == v19)
      {
        goto LABEL_5;
      }
    }

    v20 = begin - self->_filterOffsets.__begin_;
  }

  return v20;
}

- (unint64_t)ruleIndexInFilter:(unint64_t)filter matchingCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_filterCount(self, v7, v8, v9) <= filter)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableFilterSet ruleIndexInFilter:matchingCell:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1082, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = &self->_filterOffsets.__begin_[filter];
  v22 = *v21;
  if (*v21 >= v21[1])
  {
LABEL_6:
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(self->_rules, v10, v22, v11);
      v26 = objc_msgSend_matchesCell_(v23, v24, cellCopy, v25);

      if (v26)
      {
        break;
      }

      if (++v22 >= self->_filterOffsets.__begin_[filter + 1])
      {
        goto LABEL_6;
      }
    }

    v27 = v22 - self->_filterOffsets.__begin_[filter];
  }

  return v27;
}

- (unint64_t)numberOfRulesInFilter:(unint64_t)filter
{
  if (objc_msgSend_filterCount(self, a2, filter, v3) <= filter)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableFilterSet numberOfRulesInFilter:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1095, 0, "filter index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = self->_filterOffsets.__begin_[filter + 1] - self->_filterOffsets.__begin_[filter];
  if (v18 >= 0xFFFFFFFF)
  {
    v20 = objc_msgSend_filterCount(self, v6, v7, v8);
    v33 = v18;
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d numRules is out of bounds! \n numRules: %lu \n filterIndex: %lu \n filterCount: %lu \n filterOffsetAtIndex: %lu \n filterOffsetAfterIndex: %lu", "[TSTTableFilterSet numberOfRulesInFilter:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", 1114, v18, filter, v20, self->_filterOffsets.__begin_[filter], self->_filterOffsets.__begin_[filter + 1]);
    v21 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTTableFilterSet numberOfRulesInFilter:]", v23);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v26);
    v31 = objc_msgSend_filterCount(self, v28, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v24, v27, 1114, 1, "numRules is out of bounds! \n numRules: %lu \n filterIndex: %lu \n filterCount: %lu \n filterOffsetAtIndex: %lu \n filterOffsetAfterIndex: %lu", v33, filter, v31, self->_filterOffsets.__begin_[filter], self->_filterOffsets.__begin_[filter + 1]);

    TSUCrashBreakpoint();
    abort();
  }

  return self->_filterOffsets.__begin_[filter + 1] - self->_filterOffsets.__begin_[filter];
}

- (id)absoluteRuleIndicesForColumn:(TSUModelColumnIndex)column inTable:(id)table
{
  tableCopy = table;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2214389C8;
  v24 = sub_2214389D8;
  v25 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9);
  rules = self->_rules;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2214389E0;
  v16[3] = &unk_278465340;
  v11 = tableCopy;
  column = column._column;
  v17 = v11;
  v18 = &v20;
  objc_msgSend_enumerateObjectsUsingBlock_(rules, v12, v16, v13);
  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

- (id)baseColumnIndicesForRulesInTable:(id)table
{
  v33 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_rules;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = objc_msgSend_filteringTableModel(tableCopy, v11, v12, v13, v28);
        LOWORD(v17) = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v17, v19, v18, v20);

        objc_msgSend_addIndex_(v8, v21, v17, v22);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v28, v32, 16);
    }

    while (v14);
  }

  v23 = objc_alloc(MEMORY[0x277CCAA78]);
  v26 = objc_msgSend_initWithIndexSet_(v23, v24, v8, v25);

  return v26;
}

- (id)viewColumnIndicesForRulesInTable:(id)table
{
  tableCopy = table;
  v7 = objc_msgSend_baseColumnIndicesForRulesInTable_(self, v5, tableCopy, v6);
  v11 = objc_msgSend_filteringTableTranslator(tableCopy, v8, v9, v10);
  v14 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v11, v12, v7, v13);

  return v14;
}

- (BOOL)preventsRowInsertion
{
  if (!self->_isEnabled || objc_msgSend_ruleCount(self, a2, v2, v3) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = objc_msgSend_ruleAtAbsoluteIndex_(self, v5, v7, v6);
    v12 = objc_msgSend_predicate(v8, v9, v10, v11);
    v16 = objc_msgSend_predicateType(v12, v13, v14, v15);

    if (v16 - 11) < 0x2A && ((0x27800180023uLL >> (v16 - 11)))
    {
      break;
    }

    if (++v7 >= objc_msgSend_ruleCount(self, v17, v18, v19))
    {
      return 0;
    }
  }

  return 1;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v5, v6, v7) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v8, v9, v10);
  }

  v15 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v13 = objc_msgSend_messageWithDescriptor_(v15, v11, off_2812E4498[180], v12);

  objc_msgSend_loadFromArchive_unarchiver_(self, v14, v13, v15);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221439884, off_2812E4498[180]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  self->_type = *(archive + 26) == 1;
  self->_needsFormulaRewriteForImport = *(archive + 108);
  self->_isEnabled = *(archive + 109);
  v9 = *(archive + 8);
  v10 = *(archive + 22);
  if (v10)
  {
    if (v9)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Modern filter sets shouldn't have pre-pivot rules!", "[TSTTableFilterSet loadFromArchive:unarchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", 1220);
      v41 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTTableFilterSet loadFromArchive:unarchiver:]", v43);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterSet.mm", v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v44, v47, 1220, 1, "Modern filter sets shouldn't have pre-pivot rules!");

      TSUCrashBreakpoint();
      abort();
    }

    self->_downgradedForPrePivot = 0;
    v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v10, v7);
    v14 = *(archive + 12);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(archive + 22);
    if (v16)
    {
      v17 = 8 * v16;
      do
      {
        v18 = *v15;
        v19 = [TSTTableFilterRule alloc];
        v24 = objc_msgSend_initFromArchive_(v19, v20, v18, v21);
        if (v24)
        {
          objc_msgSend_addObject_(v13, v22, v24, v23);
        }

        ++v15;
        v17 -= 8;
      }

      while (v17);
    }

LABEL_21:
    v36 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v11, v13, v12);
    rules = self->_rules;
    self->_rules = v36;

    goto LABEL_22;
  }

  if (v9)
  {
    self->_downgradedForPrePivot = 1;
    v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v9, v7);
    v25 = *(archive + 5);
    if (v25)
    {
      v26 = (v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    v27 = *(archive + 8);
    if (v27)
    {
      v28 = 8 * v27;
      do
      {
        v29 = *v26;
        v30 = [TSTTableFilterRule alloc];
        v35 = objc_msgSend_initFromPrePivotArchive_(v30, v31, v29, v32);
        if (v35)
        {
          objc_msgSend_addObject_(v13, v33, v35, v34);
        }

        ++v26;
        v28 -= 8;
      }

      while (v28);
    }

    goto LABEL_21;
  }

  self->_isEnabled = 0;
LABEL_22:
  v38 = *(archive + 12);
  if (v38)
  {
    if (v38 >= 1)
    {
      v39 = 0;
      do
      {
        v49 = *(*(archive + 7) + 4 * v39);
        sub_2211531C0(&self->_filterOffsets.__begin_, &v49);
        ++v39;
      }

      while (v39 < *(archive + 12));
    }
  }

  else
  {
    for (i = 0; ; i = v49 + 1)
    {
      v49 = i;
      if (i > objc_msgSend_count(self->_rules, v6, v9, v7))
      {
        break;
      }

      sub_2211531C0(&self->_filterOffsets.__begin_, &v49);
    }
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = *(archive + 4);
  *(archive + 26) = self->_type == 1;
  *(archive + 109) = self->_isEnabled;
  needsFormulaRewriteForImport = self->_needsFormulaRewriteForImport;
  *(archive + 4) = v7 | 7;
  *(archive + 108) = needsFormulaRewriteForImport;
  v12 = objc_msgSend_count(self->_rules, v9, v10, v11);
  v15 = v12;
  if (!self->_downgradedForPrePivot)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v25 = 0;
    while (1)
    {
      v26 = *(archive + 12);
      if (!v26)
      {
        goto LABEL_20;
      }

      v27 = *(archive + 22);
      v28 = *v26;
      if (v27 >= *v26)
      {
        break;
      }

      *(archive + 22) = v27 + 1;
      v29 = *&v26[2 * v27 + 2];
LABEL_22:
      v32 = objc_msgSend_objectAtIndex_(self->_rules, v13, v25, v14);
      objc_msgSend_encodeToArchive_archiver_(v32, v33, v29, archiverCopy);

      if (v15 == ++v25)
      {
        goto LABEL_23;
      }
    }

    if (v28 == *(archive + 23))
    {
LABEL_20:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 80));
      v26 = *(archive + 12);
      v28 = *v26;
    }

    *v26 = v28 + 1;
    v29 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRuleArchive>(*(archive + 10));
    v30 = *(archive + 22);
    v31 = *(archive + 12) + 8 * v30;
    *(archive + 22) = v30 + 1;
    *(v31 + 8) = v29;
    goto LABEL_22;
  }

  if (v12)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(archive + 5);
      if (!v17)
      {
        goto LABEL_9;
      }

      v18 = *(archive + 8);
      v19 = *v17;
      if (v18 >= *v17)
      {
        break;
      }

      *(archive + 8) = v18 + 1;
      v20 = *&v17[2 * v18 + 2];
LABEL_11:
      v23 = objc_msgSend_objectAtIndex_(self->_rules, v13, v16, v14);
      objc_msgSend_encodeToPrePivotArchive_archiver_(v23, v24, v20, archiverCopy);

      if (v15 == ++v16)
      {
        goto LABEL_23;
      }
    }

    if (v19 == *(archive + 9))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v17 = *(archive + 5);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRulePrePivotArchive>(*(archive + 3));
    v21 = *(archive + 8);
    v22 = *(archive + 5) + 8 * v21;
    *(archive + 8) = v21 + 1;
    *(v22 + 8) = v20;
    goto LABEL_11;
  }

LABEL_23:
  begin = self->_filterOffsets.__begin_;
  end = self->_filterOffsets.__end_;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_221439638;
  v37[3] = &unk_278465360;
  v37[4] = archive;
  v36 = sub_221436B9C(begin, end, v37);
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

@end