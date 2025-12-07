@interface TSTSummaryModel
+ (unsigned)categoryLevelForTableStyleArea:(unint64_t)area;
- (BOOL)cellExistsAtCellCoord:(TSUModelCellCoord)coord;
- (BOOL)hasMigratableStylesInCells;
- (TSKUIDStruct)aggregateFormulaOwnerUID;
- (TSTSummaryModel)initWithContext:(id)context tableInfo:(id)info;
- (TSTSummaryModel)initWithTableInfo:(id)info;
- (TSUModelCellRect)range;
- (double)heightOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default;
- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default;
- (id).cxx_construct;
- (id)allRichTextStorages;
- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (id)currentState;
- (id)defaultCellStyleForCellCoord:(TSUModelCellCoord)coord;
- (id)defaultTextStyleForCellCoord:(TSUModelCellCoord)coord;
- (id)explicitFormatOfKind:(unsigned __int8)kind atModelCellCoord:(TSUModelCellCoord)coord currencyIsMostRecentlySet:(BOOL *)set;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys;
- (id)metadataForColumnIndex:(TSUModelColumnIndex)index hidingAction:(unsigned __int8)action;
- (id)metadataForRowIndex:(TSUModelRowIndex)index hidingAction:(unsigned __int8)action;
- (id)newCell;
- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (int)getCell:(id)cell atCellCoord:(TSUModelCellCoord)coord;
- (int)getValue:(id *)value atCellID:(TSUModelCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text;
- (int)insertColumnsAtIndex:(TSUModelColumnIndex)index metadatas:(id)metadatas;
- (int)p_setCategoryCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d formulaReplacer:(id)replacer;
- (int)p_setPivotCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d formulaReplacer:(id)replacer;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d formulaReplacer:(id)replacer;
- (int)setFormulaResultCellsWithCellMap:(id)map;
- (unint64_t)p_tableStyleAreaForCellCoord:(TSUModelCellCoord)coord;
- (unsigned)cellValueTypeAtSummaryModelCoord:(TSUModelCellCoord)coord;
- (unsigned)p_ColumnCategoryLevelForCellCoord:(TSUModelCellCoord)coord;
- (unsigned)p_RowCategoryLevelForCellCoord:(TSUModelCellCoord)coord isLabel:(BOOL *)label;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)addReferencedStylesToSet:(id)set;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)group;
- (void)enumerateCellsForSOSSerializationWithBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_removeRows:(_NSRange)rows;
- (void)registerAllFormulasWithCalculationEngine:(id)engine wasCrossDocumentPaste:(BOOL)paste;
- (void)removeCategoryColumnCellsForRows:(void *)rows;
- (void)removeColumnsAtSummaryIndexes:(id)indexes;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)resetForCategoriesWithForce:(BOOL)force;
- (void)resetForPivotingWithRowUids:(const void *)uids columnUids:(const void *)columnUids;
- (void)runChange:(id)change withSummaryChangeState:(id)state migrationHelper:(id)helper;
- (void)saveToArchiver:(id)archiver;
- (void)setAggregateType:(unsigned __int8)type forColumnUID:(const TSKUIDStruct *)d atGroupLevel:(unsigned __int8)level;
- (void)setCategoryColumnWidth:(double)width;
- (void)setGroupSortOrder:(id)order;
- (void)setHeight:(double)height ofRowAtIndex:(TSUModelRowIndex)index;
- (void)setLabelRowHeight:(double)height atCategoryLevel:(unsigned __int8)level;
- (void)setLabelRowVisibility:(unint64_t)visibility atCategoryLevel:(unsigned __int8)level;
- (void)setSummaryRowHeight:(double)height atCategoryLevel:(unsigned __int8)level;
- (void)setWidth:(double)width ofColumnAtIndex:(TSUModelColumnIndex)index;
- (void)setupReceiver;
- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)needed;
- (void)upgradeFormulasForGroupByUIDChange;
- (void)willRemoveGroup:(id)group;
@end

@implementation TSTSummaryModel

- (int)getCell:(id)cell atCellCoord:(TSUModelCellCoord)coord
{
  cellCopy = cell;
  objc_msgSend_clear(cellCopy, v7, v8, v9);
  if (objc_msgSend_getCell_atCellID_(self->_dataStore, v10, cellCopy, *&coord))
  {
    v11 = 0;
  }

  else
  {
    v11 = 1000;
  }

  return v11;
}

- (int)getValue:(id *)value atCellID:(TSUModelCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text
{
  if (value)
  {
    textCopy = text;
    v9 = objc_msgSend_aggregateFormulaOwner(self, a2, value, *&d);
    v13 = objc_msgSend_cellsPendingWrite(v9, v10, v11, v12);
    v16 = objc_msgSend_cellAtCellID_(v13, v14, *&d, v15);

    dataStore = self->_dataStore;
    if (v16)
    {
      v21 = objc_msgSend_tableInfo(self, v17, v18, v19);
      v105 = objc_msgSend_tableUID(v21, v22, v23, v24);
      v106 = v25;
      *value = objc_msgSend_tsceValueFromCell_atCellID_tableUID_(dataStore, v25, v16, *&d, &v105);

      v29 = objc_msgSend_valueType(v16, v26, v27, v28);
      v33 = 0;
      v34 = v29 == 3;
      if (textCopy && v29 == 3)
      {
        v35 = objc_msgSend_textStyle(v16, v30, v31, v32);
LABEL_13:
        v33 = v35;
        v34 = 1;
      }
    }

    else
    {
      v40 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, v17, *&d, v19);
      if (!v40)
      {
        v33 = 0;
        v36 = 1000;
LABEL_25:

        return v36;
      }

      v41 = self->_dataStore;
      dCopy = d;
      v42 = objc_msgSend_tableInfo(self, v37, v38, v39);
      v105 = objc_msgSend_tableUID(v42, v43, v44, v45);
      v106 = v46;
      objc_msgSend_tsceValueForCellStorageRef_cellCoord_hostTableUID_outValue_(v41, v46, v40, &dCopy, &v105, value);

      v47 = *v40;
      if (v47 != 5)
      {
        v103 = MEMORY[0x277D81150];
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", v32);
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v91);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v93, v89, v92, 138, 0, "Can't parse cell storage header version %d!", v47);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v94, v95, v96);
      }

      v33 = 0;
      v48 = v40[1];
      v34 = v48 == 3;
      if (textCopy && v48 == 3)
      {
        v35 = objc_msgSend_textStyleAtCellID_(self->_dataStore, v30, *&d, v32);
        goto LABEL_13;
      }
    }

    v36 = 0;
    if (textCopy && v34)
    {
      v49 = objc_msgSend_asRawString(*value, v30, v31, v32);
      if (objc_msgSend_length(v49, v50, v51, v52) && v33 && objc_msgSend_isVariation(v33, v53, v54, v55))
      {
        LOBYTE(v105) = 0;
        v59 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(self, v56, *&d, &v105);
        if (v105 != 1 || (objc_msgSend_isEqual_(v33, v57, v59, v58) & 1) == 0)
        {
          v102 = v59;
          v60 = [TSCEUnpersistedStorage alloc];
          v101 = objc_msgSend_context(v33, v61, v62, v63);
          v64 = *value;
          v100 = objc_msgSend_objectLocale(self, v65, v66, v67);
          v99 = objc_msgSend_asStringWithLocale_(v64, v68, v100, v69);
          v98 = objc_msgSend_stylesheet(v33, v70, v71, v72);
          v97 = objc_msgSend_documentRoot(self, v73, v74, v75);
          v79 = objc_msgSend_theme(v97, v76, v77, v78);
          v83 = objc_msgSend_defaultListStyle(v79, v80, v81, v82);
          v85 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v60, v84, v101, v99, 5, v98, v33, v83, 0, 0);

          *value = objc_msgSend_richTextValue_(TSCERichTextValue, v86, v85, v87);

          v59 = v102;
        }
      }

      v36 = 0;
    }

    goto LABEL_25;
  }

  return 1000;
}

- (void)setCategoryColumnWidth:(double)width
{
  if (self->_categoryColumnWidth != width)
  {
    objc_msgSend_willModify(self, a2, v3, v4);
    self->_categoryColumnWidth = width;
  }
}

- (TSTSummaryModel)initWithTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_context(infoCopy, v5, v6, v7);
  v10 = objc_msgSend_initWithContext_tableInfo_(self, v9, v8, infoCopy);

  return v10;
}

- (TSTSummaryModel)initWithContext:(id)context tableInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v50.receiver = self;
  v50.super_class = TSTSummaryModel;
  v11 = [(TSTSummaryModel *)&v50 initWithContext:contextCopy];
  if (v11)
  {
    v12 = objc_msgSend_baseTableModel(infoCopy, v8, v9, v10);
    *(v11 + 13) = infoCopy;
    v13 = [TSTTableDataStore alloc];
    v16 = objc_msgSend_initWithOwner_(v13, v14, v11, v15);
    v17 = *(v11 + 9);
    *(v11 + 9) = v16;

    v18 = [TSTColumnRowUIDMap alloc];
    memset(v49, 0, sizeof(v49));
    __p = 0;
    v47 = 0;
    v48 = 0;
    v20 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v18, v19, contextCopy, v49, &__p);
    v21 = *(v11 + 10);
    *(v11 + 10) = v20;

    if (__p)
    {
      v47 = __p;
      operator delete(__p);
    }

    if (v49[0])
    {
      v49[1] = v49[0];
      operator delete(v49[0]);
    }

    v22 = [TSTSummaryCellVendor alloc];
    v25 = objc_msgSend_initWithTableInfo_(v22, v23, infoCopy, v24);
    v26 = *(v11 + 11);
    *(v11 + 11) = v25;

    v49[0] = objc_msgSend_tableUID(v12, v27, v28, v29);
    v49[1] = v30;
    *(v11 + 16) = sub_2212C4930(v49, 9, v31, v32);
    *(v11 + 17) = v33;
    v34 = [TSTCategoryAggregateFormulaOwner alloc];
    v49[0] = objc_msgSend_tableUID(v12, v35, v36, v37);
    v49[1] = v38;
    v39 = objc_msgSend_initWithTableUID_ownerUID_(v34, v38, v49, v11 + 128);
    v40 = *(v11 + 12);
    *(v11 + 12) = v39;

    *(v11 + 15) = 0x4049000000000000;
    v49[0] = 0;
    sub_22129BBC4(v11 + 18, 6uLL, v49);
    v49[0] = 0;
    sub_22129BBC4(v11 + 21, 6uLL, v49);
    LODWORD(v49[0]) = 0;
    sub_22129BDB8(v11 + 24, 6uLL, v49);
    v41 = [TSTTableGroupSortOrderUID alloc];
    v43 = objc_msgSend_initWithGroupRules_withTableInfo_(v41, v42, MEMORY[0x277CBEBF8], infoCopy);
    v44 = *(v11 + 14);
    *(v11 + 14) = v43;
  }

  return v11;
}

- (void)setupReceiver
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v20 = objc_msgSend_groupBy(v5, v6, v7, v8);

  if (objc_msgSend_numberOfLevels(v20, v9, v10, v11))
  {
    v15 = objc_msgSend_groupByChangeDistributor(v20, v12, v13, v14);
    objc_msgSend_addReceiver_(v15, v16, self, v17);
  }

  else
  {
    v15 = objc_msgSend_groupByChangeDistributor(v20, v12, v13, v14);
    objc_msgSend_removeReceiver_(v15, v18, self, v19);
  }
}

- (void)resetForPivotingWithRowUids:(const void *)uids columnUids:(const void *)columnUids
{
  v7 = objc_msgSend_tableInfo(self, a2, uids, columnUids);
  isAPivotTable = objc_msgSend_isAPivotTable(v7, v8, v9, v10);

  if ((isAPivotTable & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTSummaryModel resetForPivotingWithRowUids:columnUids:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 289, 0, "Resetting a categories summary model for pivoting");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  objc_msgSend_willModify(self, v12, v13, v14);
  objc_msgSend_replaceRowsWithUids_(self->_columnRowUIDMap, v24, uids, v25);
  objc_msgSend_replaceColumnsWithUids_(self->_columnRowUIDMap, v26, columnUids, v27);
  v31 = objc_msgSend_tableInfo(self, v28, v29, v30);
  v35 = objc_msgSend_calcEngine(v31, v32, v33, v34);
  objc_msgSend_removeAllFormulasFromOwner_(v35, v36, &self->_aggregateFormulaOwnerUID, v37);

  objc_msgSend_resetAlmostEverything(self->_dataStore, v38, v39, v40);
  dataStore = self->_dataStore;

  objc_msgSend_resetAllColumnRowSizes(dataStore, v41, v42, v43);
}

- (void)resetForCategoriesWithForce:(BOOL)force
{
  *&v247 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_tableInfo(self, a2, force, v3);
  isAPivotTable = objc_msgSend_isAPivotTable(v6, v7, v8, v9);

  if (isAPivotTable)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTSummaryModel resetForCategoriesWithForce:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 304, 0, "Resetting a pivoting summary model for categories");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_tableInfo(self, v11, v12, v13);
  v27 = objc_msgSend_groupBy(v23, v24, v25, v26);

  v225 = v27;
  v229 = objc_msgSend_columnRowUIDMap(self, v28, v29, v30);
  v34 = objc_msgSend_tableInfo(self, v31, v32, v33);
  v38 = objc_msgSend_baseTableModel(v34, v35, v36, v37);
  v228 = objc_msgSend_columnRowUIDMap(v38, v39, v40, v41);

  if (!objc_msgSend_numberOfLevels(v27, v42, v43, v44))
  {
    v94 = objc_msgSend_tableInfo(self, v45, v46, v47);
    v98 = objc_msgSend_groupBy(v94, v95, v96, v97);
    v102 = objc_msgSend_groupByChangeDistributor(v98, v99, v100, v101);
    objc_msgSend_removeReceiver_(v102, v103, self, v104);

    objc_msgSend_willModify(self, v105, v106, v107);
    v111 = objc_msgSend_tableInfo(self, v108, v109, v110);
    v115 = objc_msgSend_calcEngine(v111, v112, v113, v114);
    objc_msgSend_removeAllFormulasFromOwner_(v115, v116, &self->_aggregateFormulaOwnerUID, v117);

    objc_msgSend_resetAlmostEverything(self->_dataStore, v118, v119, v120);
    objc_msgSend_reset(self->_columnRowUIDMap, v121, v122, v123);
    goto LABEL_78;
  }

  v48 = objc_msgSend_columnUIDs(v228, v45, v46, v47);
  v243 = 0;
  v244 = 0;
  v245 = 0;
  sub_221086EBC(&v243, *v48, *(v48 + 8), (*(v48 + 8) - *v48) >> 4);
  sub_22129CE20(&v243, v243, "category column");
  if ((v244 - v243) >= 0x3E81)
  {
    sub_22129CFF4(&v243, 0x3E8uLL);
  }

  v52 = objc_msgSend_columnUIDs(v229, v49, v50, v51);
  v56 = v243;
  v57 = *v52;
  if (v244 - v243 == *(v52 + 8) - *v52)
  {
    while (v56 != v244)
    {
      if (v56->n128_u64[0] != *v57 || v56->n128_u64[1] != v57[1])
      {
        goto LABEL_14;
      }

      ++v56;
      v57 += 2;
    }

    goto LABEL_52;
  }

LABEL_14:
  objc_msgSend_willModify(self, v53, v54, v55);
  v62 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v59, v60, v61);
  v66 = objc_msgSend_columnUIDs(v229, v63, v64, v65);
  v70 = *v66;
  v71 = *(v66 + 8);
  if (*v66 != v71)
  {
    v72 = 0;
    do
    {
      if (objc_msgSend_columnIndexForColumnUID_(v228, v67, *v70, v70[1]) == 0x7FFF && (*v70 != *"category column" || v70[1] != *" column"))
      {
        objc_msgSend_addIndex_(v62, v67, v72, v69);
      }

      ++v72;
      v70 += 2;
    }

    while (v70 != v71);
  }

  v75 = objc_msgSend_count(v62, v67, v68, v69);
  v76 = v75 != 0;
  if (v75)
  {
    objc_msgSend_removeColumnsAtSummaryIndexes_(self, v73, v62, v74);
  }

  v240 = 0;
  v241 = 0;
  v242 = 0;
  v77 = v243;
  v78 = v244;
  if (v243 == v244)
  {

    if (!v75)
    {
LABEL_52:
      v134 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v79 = 0;
    do
    {
      v80 = objc_msgSend_columnIndexForColumnUID_(v229, v73, v77->n128_u64[0], v77->n128_i64[1]);
      if (v80 != v79)
      {
        if (v80 == 0x7FFF)
        {
          v246 = *v77;
          v238 = 0;
          v239 = 0;
          __p = 0;
          sub_2212A3CC4(&__p, &v246, &v247, 1uLL);
          objc_msgSend_insertColumnsWithUIDs_atIndex_(v229, v81, &__p, v79);
          if (__p)
          {
            v238 = __p;
            operator delete(__p);
          }

          objc_msgSend_insertColumns_(self->_dataStore, v82, v79, 1);
          v83 = v241;
          if (v241 >= v242)
          {
            v87 = (v241 - v240) >> 4;
            v88 = v87 + 1;
            if ((v87 + 1) >> 60)
            {
              sub_22107C148();
            }

            v89 = v242 - v240;
            if ((v242 - v240) >> 3 > v88)
            {
              v88 = v89 >> 3;
            }

            if (v89 >= 0x7FFFFFFFFFFFFFF0)
            {
              v90 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v90 = v88;
            }

            if (v90)
            {
              sub_221086F74(&v240, v90);
            }

            v91 = (16 * v87);
            *v91 = *v77;
            v84 = 16 * v87 + 16;
            v92 = (16 * v87 - (v241 - v240));
            memcpy(v91 - (v241 - v240), v240, v241 - v240);
            v93 = v240;
            v240 = v92;
            v241 = v84;
            v242 = 0;
            if (v93)
            {
              operator delete(v93);
            }

            v27 = v225;
          }

          else
          {
            *v241 = *v77;
            v84 = (v83 + 16);
          }

          v241 = v84;
        }

        else
        {
          v85 = v80;
          objc_msgSend_moveColumnIndexRange_toIndex_(v229, v73, v80, 1, v79);
          objc_msgSend_moveColumnIndexRange_toIndex_(self->_dataStore, v86, v85, 1, v79);
        }

        v76 = 1;
      }

      ++v79;
      ++v77;
    }

    while (v77 != v78);
    if (v240)
    {
      v241 = v240;
      operator delete(v240);
    }

    if (!v76)
    {
      goto LABEL_52;
    }
  }

  v124 = objc_msgSend_tableInfo(self, v53, v54, v55);
  v128 = objc_msgSend_calcEngine(v124, v125, v126, v127);
  v240 = objc_msgSend_aggregateFormulaOwnerUID(self, v129, v130, v131);
  v241 = v132;
  objc_msgSend_removeAllFormulasFromOwner_(v128, v132, &v240, v133);

  v134 = 1;
LABEL_53:
  v135 = objc_msgSend_topLevelGroupNode(v27, v53, v54, v55);
  v226 = objc_msgSend_childGroupUids(v135, v136, v137, v138);

  v142 = objc_msgSend_rowUIDs(self->_columnRowUIDMap, v139, v140, v141);
  v240 = 0;
  v241 = 0;
  v242 = 0;
  sub_221086EBC(&v240, *v142, *(v142 + 8), (*(v142 + 8) - *v142) >> 4);
  v146 = objc_msgSend_mutableCopy(v226, v143, v144, v145);
  v149 = v146;
  if (!force)
  {
    objc_msgSend_removeUuidsFromVector_(v146, v147, &v240, v148);
  }

  v150 = [TSCEMutableUIDSet alloc];
  v153 = objc_msgSend_initWithUUIDVector_(v150, v151, &v240, v152);
  v156 = v153;
  if (!force)
  {
    objc_msgSend_removeUuidsFromSet_(v153, v154, v226, v155);
  }

  v227 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self->_columnRowUIDMap, v154, v156, 1);
  if (objc_msgSend_count(v156, v157, v158, v159) || objc_msgSend_count(v149, v160, v161, v162))
  {
    objc_msgSend_willModify(self, v160, v161, v162);
  }

  v166 = objc_msgSend_count(v156, v160, v161, v162);
  if (((v166 != 0) & ~v134) != 0 || objc_msgSend_needsFormulaReset(self, v163, v164, v165))
  {
    v167 = objc_msgSend_tableInfo(self, v163, v164, v165);
    v171 = objc_msgSend_calcEngine(v167, v168, v169, v170);
    __p = objc_msgSend_aggregateFormulaOwnerUID(self, v172, v173, v174);
    v238 = v175;
    objc_msgSend_removeAllFormulasFromOwner_(v171, v175, &__p, v176);
  }

  v177 = objc_msgSend_tableInfo(self, v163, v164, v165);
  v181 = objc_msgSend_calcEngine(v177, v178, v179, v180);

  objc_msgSend_beginBatchingGroupCellDirtying(v181, v182, v183, v184);
  v235[0] = MEMORY[0x277D85DD0];
  v235[1] = 3221225472;
  v235[2] = sub_22129D024;
  v235[3] = &unk_27845EBE8;
  v235[4] = self;
  v185 = v181;
  v236 = v185;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(v227, v186, 2, v235);
  objc_msgSend_endBatchingGroupCellDirtying(v185, v187, v188, v189);
  objc_msgSend_removeRowsAtIndexes_(self->_columnRowUIDMap, v190, v227, v191);
  columnRowUIDMap = self->_columnRowUIDMap;
  if (v149)
  {
    objc_msgSend_uuidsAsVector(v149, v192, v193, v194);
    v199 = objc_msgSend_numberOfRows(self->_columnRowUIDMap, v196, v197, v198);
  }

  else
  {
    __p = 0;
    v238 = 0;
    v239 = 0;
    v199 = objc_msgSend_numberOfRows(columnRowUIDMap, v192, v193, v194);
  }

  objc_msgSend_insertRowsWithUIDs_atIndex_(columnRowUIDMap, v200, &__p, v199);
  if (__p)
  {
    v238 = __p;
    operator delete(__p);
  }

  v231[0] = MEMORY[0x277D85DD0];
  v231[1] = 3221225472;
  v231[2] = sub_22129D230;
  v231[3] = &unk_27845D948;
  v232 = v27;
  selfCopy = self;
  v234 = v229;
  objc_msgSend_foreachUuid_(v149, v201, v231, v202);
  if (v166)
  {
    v206 = 1;
  }

  else
  {
    v206 = v134;
  }

  if ((v206 & 1) != 0 || objc_msgSend_needsFormulaReset(self, v203, v204, v205))
  {
    objc_msgSend_setNeedsFormulaReset_(self, v203, 0, v205);
    v211 = objc_msgSend_summaryCellVendor(self, v208, v209, v210);
    v230[0] = MEMORY[0x277D85DD0];
    v230[1] = 3221225472;
    v230[2] = sub_22129D538;
    v230[3] = &unk_278462710;
    v230[4] = self;
    objc_msgSend_enumerateCellsUsingBlock_(v211, v212, v230, v213);
  }

  v214 = objc_msgSend_tableInfo(self, v203, v207, v205);
  v218 = objc_msgSend_groupBy(v214, v215, v216, v217);
  v222 = objc_msgSend_groupByChangeDistributor(v218, v219, v220, v221);
  objc_msgSend_addReceiverIfMissing_(v222, v223, self, v224);

  if (v240)
  {
    v241 = v240;
    operator delete(v240);
  }

  if (v243)
  {
    v244 = v243;
    operator delete(v243);
  }

LABEL_78:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v5, v6, v7) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v8, v9, v10);
  }

  v11 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v14 = objc_msgSend_messageWithDescriptor_(v11, v12, off_2812E4498[86], v13);

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 72);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_22129DCF8;
    v67[3] = &unk_278462738;
    v67[4] = self;
    v17 = v11;
    v18 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v67);

    v15 = *(v14 + 16);
  }

  if ((v15 & 2) != 0)
  {
    v24 = [TSTTableDataStore alloc];
    if (*(v14 + 80))
    {
      v23 = objc_msgSend_initWithArchive_unarchiver_owner_(v24, v25, *(v14 + 80), v11, self);
    }

    else
    {
      v23 = objc_msgSend_initWithArchive_unarchiver_owner_(v24, v25, TST::_DataStore_default_instance_, v11, self);
    }
  }

  else
  {
    v20 = [TSTTableDataStore alloc];
    v23 = objc_msgSend_initWithOwner_(v20, v21, self, v22);
  }

  dataStore = self->_dataStore;
  self->_dataStore = v23;

  if ((*(v14 + 16) & 4) != 0)
  {
    v36 = *(v14 + 88);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_22129DD0C;
    v66[3] = &unk_27845E0B8;
    v66[4] = self;
    v37 = v11;
    v38 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v36, v38, 0, v66);
  }

  else
  {
    v27 = [TSTColumnRowUIDMap alloc];
    v31 = objc_msgSend_context(self, v28, v29, v30);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    __p = 0;
    v61 = 0;
    v62 = 0;
    v33 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v27, v32, v31, &v63, &__p);
    columnRowUIDMap = self->_columnRowUIDMap;
    self->_columnRowUIDMap = v33;

    if (__p)
    {
      v61 = __p;
      operator delete(__p);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }
  }

  if ((*(v14 + 16) & 0x10) != 0)
  {
    v40 = *(v14 + 104);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22129DD20;
    v59[3] = &unk_278462760;
    v59[4] = self;
    v41 = v11;
    v42 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v41, v43, v40, v42, 0, v59);
  }

  if (*(v14 + 96))
  {
    v44 = *(v14 + 96);
  }

  else
  {
    v44 = MEMORY[0x277D809E0];
  }

  self->_aggregateFormulaOwnerUID._lower = TSKUIDStruct::loadFromMessage(v44, v35);
  self->_aggregateFormulaOwnerUID._upper = v45;
  self->_categoryColumnWidth = *(v14 + 120);
  v46 = *(v14 + 24);
  if (v46)
  {
    sub_2212A3F50(&self->_summaryRowHeightList.__begin_, *(v14 + 32), (*(v14 + 32) + 8 * v46), v46);
  }

  else
  {
    v63 = 0;
    sub_22129BBC4(&self->_summaryRowHeightList, 6uLL, &v63);
  }

  v47 = *(v14 + 40);
  if (v47)
  {
    sub_2212A3F50(&self->_labelRowHeightList.__begin_, *(v14 + 48), (*(v14 + 48) + 8 * v47), v47);
  }

  else
  {
    v63 = 0;
    sub_22129BBC4(&self->_labelRowHeightList, 6uLL, &v63);
  }

  v48 = *(v14 + 56);
  if (v48)
  {
    sub_221287820(&self->_labelRowVisibilityList.__begin_, *(v14 + 64), (*(v14 + 64) + 4 * v48), v48);
  }

  else
  {
    LODWORD(v63) = 0;
    sub_22129BDB8(&self->_labelRowVisibilityList, 6uLL, &v63);
  }

  if ((*(v14 + 16) & 0x20) != 0)
  {
    v52 = [TSTTableGroupSortOrderUID alloc];
    if (*(v14 + 112))
    {
      v51 = objc_msgSend_initFromArchive_(v52, v53, *(v14 + 112), v54);
    }

    else
    {
      v51 = objc_msgSend_initFromArchive_(v52, v53, &TST::_TableGroupSortOrderUIDArchive_default_instance_, v54);
    }
  }

  else
  {
    v49 = [TSTTableGroupSortOrderUID alloc];
    v51 = objc_msgSend_initWithGroupRules_withTableInfo_(v49, v50, MEMORY[0x277CBEBF8], 0);
  }

  groupSortOrder = self->_groupSortOrder;
  self->_groupSortOrder = v51;

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_22129DD34;
  v58[3] = &unk_27845E3F8;
  v58[4] = self;
  objc_msgSend_addFinalizeHandler_(v11, v56, v58, v57);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, 0x300020000000ALL, v6);
  v7 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v8, sub_2212A4084, off_2812E4498[86]);

  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    *(v9 + 16) |= 1u;
    v14 = *(v9 + 72);
    if (!v14)
    {
      v15 = *(v9 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA0390](v15);
      *(v9 + 72) = v14;
    }

    objc_msgSend_setWeakReference_message_(v7, v10, tableInfo, v14);
  }

  dataStore = self->_dataStore;
  if (dataStore)
  {
    *(v9 + 16) |= 2u;
    v17 = *(v9 + 80);
    if (!v17)
    {
      v18 = *(v9 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v18);
      *(v9 + 80) = v17;
    }

    v19 = objc_msgSend_tsp_isInDocument(self, v10, v11, v12);
    objc_msgSend_saveToArchive_archiver_isInTheDocument_(dataStore, v20, v17, v7, v19);
  }

  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    *(v9 + 16) |= 4u;
    v22 = *(v9 + 88);
    if (!v22)
    {
      v23 = *(v9 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0390](v23);
      *(v9 + 88) = v22;
    }

    objc_msgSend_setStrongReference_message_(v7, v10, columnRowUIDMap, v22);
  }

  summaryCellVendor = self->_summaryCellVendor;
  if (summaryCellVendor)
  {
    *(v9 + 16) |= 0x10u;
    v25 = *(v9 + 104);
    if (!v25)
    {
      v26 = *(v9 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0390](v26);
      *(v9 + 104) = v25;
    }

    objc_msgSend_setStrongReference_message_(v7, v10, summaryCellVendor, v25);
  }

  groupSortOrder = self->_groupSortOrder;
  if (groupSortOrder)
  {
    *(v9 + 16) |= 0x20u;
    v28 = *(v9 + 112);
    if (!v28)
    {
      v29 = *(v9 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive>(v29);
      *(v9 + 112) = v28;
    }

    objc_msgSend_encodeToArchive_(groupSortOrder, v10, v28, v12);
  }

  *(v9 + 16) |= 8u;
  v30 = *(v9 + 96);
  if (!v30)
  {
    v31 = *(v9 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x223DA0360](v31);
    *(v9 + 96) = v30;
  }

  TSKUIDStruct::saveToMessage(&self->_aggregateFormulaOwnerUID, v30);
  categoryColumnWidth = self->_categoryColumnWidth;
  *(v9 + 16) |= 0x40u;
  *(v9 + 120) = categoryColumnWidth;
  begin = self->_summaryRowHeightList.__begin_;
  end = self->_summaryRowHeightList.__end_;
  v37 = (v9 + 24);
  while (begin != end)
  {
    sub_2212A40F0(&v37, begin++);
  }

  v35 = self->_labelRowHeightList.__begin_;
  v36 = self->_labelRowHeightList.__end_;
  v37 = (v9 + 40);
  while (v35 != v36)
  {
    sub_2212A40F0(&v37, v35++);
  }

  sub_2212A4164(&v37, self->_labelRowVisibilityList.__begin_, self->_labelRowVisibilityList.__end_, (v9 + 56));
}

- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)needed
{
  objc_msgSend_setUpgrading_(self->_dataStore, a2, 1, v3);
  objc_msgSend_loadAllLazyReferences(self->_dataStore, v6, v7, v8);
  objc_msgSend_upgradeDataStoreCellStorageIfNeededWithTableUID_conditionalStyleOwner_fileFormatVersion_(self->_dataStore, v9, &self->_aggregateFormulaOwnerUID, 0, needed);
  if (needed <= 0xE000400000000)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x5812000000;
    v59 = sub_22129E4C8;
    v60 = sub_22129E4D4;
    v61 = &unk_22188E88F;
    v65[0] = 0;
    v65[1] = 0;
    v62 = 0;
    v63 = 0;
    v64 = v65;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_22129E4E0;
    v54 = sub_22129E4F0;
    v55 = 0;
    v13 = objc_msgSend_tableInfo(self, v10, v11, v12);
    v17 = objc_msgSend_newCell(v13, v14, v15, v16);

    summaryCellVendor = self->_summaryCellVendor;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_22129E4F8;
    v44[3] = &unk_2784627B0;
    v19 = v17;
    v45 = v19;
    selfCopy = self;
    v47 = &v50;
    v48 = &v56;
    neededCopy = needed;
    objc_msgSend_enumerateCellsUsingBlock_(summaryCellVendor, v20, v44, v21);
    v24 = v51[5];
    if (v24)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_22129EAF4;
      v43[3] = &unk_2784621C0;
      v43[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v24, v22, v43, v23);
    }

    if (!TSCECellCoordSet::isEmpty((v57 + 6)))
    {
      v28 = objc_msgSend_tableInfo(self, v25, v26, v27);
      v32 = objc_msgSend_calcEngine(v28, v29, v30, v31);
      objc_msgSend_markCoordsDirty_inOwner_(v32, v33, (v57 + 6), &self->_aggregateFormulaOwnerUID);
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v56, 8);
    sub_22107C860(&v64, v65[0]);
  }

  if (UnsafePointer() > needed && (objc_msgSend_shouldUseWideRows(self->_dataStore, v34, v35, v36) & 1) == 0)
  {
    v38 = objc_msgSend_tableInfo(self, v34, v37, v36);
    v42 = objc_msgSend_tableSizeClass(v38, v39, v40, v41);

    if (v42 >= 2)
    {
      objc_msgSend_setShouldUseWideRows_(self->_dataStore, v34, 1, v36);
    }
  }

  objc_msgSend_setUpgrading_(self->_dataStore, v34, 0, v36);
}

- (void)upgradeFormulasForGroupByUIDChange
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  objc_msgSend_setUpgradingToSubOwnerUIDs_(self->_summaryCellVendor, v5, 1, v6);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_22129E4E0;
  v19 = sub_22129E4F0;
  v20 = 0;
  summaryCellVendor = self->_summaryCellVendor;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22129EC74;
  v14[3] = &unk_2784627D8;
  v14[4] = self;
  v14[5] = &v15;
  objc_msgSend_enumerateCellsUsingBlock_(summaryCellVendor, v8, v14, v9);
  v12 = v16[5];
  if (v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22129EDE8;
    v13[3] = &unk_2784621C0;
    v13[4] = self;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v12, v10, v13, v11);
  }

  objc_msgSend_setUpgradingToSubOwnerUIDs_(self->_summaryCellVendor, v10, 0, v11);
  _Block_object_dispose(&v15, 8);
}

- (void)registerAllFormulasWithCalculationEngine:(id)engine wasCrossDocumentPaste:(BOOL)paste
{
  engineCopy = engine;
  v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
  isAPivotTable = objc_msgSend_isAPivotTable(v9, v10, v11, v12);

  if (isAPivotTable)
  {
    objc_msgSend_removeAllFormulasFromOwner_(engineCopy, v14, &self->_aggregateFormulaOwnerUID, v15);
    for (i = 0; i < objc_msgSend_numberOfRows(self, v16, v17, v18); ++i)
    {
      v23 = 0;
      v24 = i;
      while (v23 < objc_msgSend_numberOfColumns(self, v20, v21, v22))
      {
        v38 = v24;
        v26 = objc_msgSend_formulaSpecAtCellID_(self->_dataStore, v16, v24, v18);
        if (v26)
        {
          objc_msgSend_replaceFormula_atCellCoord_inOwner_(engineCopy, v25, v26, &v38, &self->_aggregateFormulaOwnerUID);
        }

        ++v23;
        v24 += 0x100000000;
      }
    }
  }

  else
  {
    objc_msgSend_resetForCategoriesWithForce_(self, v14, 1, v15);
    v30 = objc_msgSend_tableInfo(self, v27, v28, v29);
    v34 = objc_msgSend_groupBy(v30, v31, v32, v33);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_22129EFC0;
    v37[3] = &unk_278462800;
    v37[4] = self;
    objc_msgSend_enumerateAggregates_(v34, v35, v37, v36);
  }
}

- (int)p_setCategoryCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d formulaReplacer:(id)replacer
{
  cellCopy = cell;
  replacerCopy = replacer;
  row = d->_row;
  column = d->_column;
  v48 = row;
  v12 = sub_2211A8FF4(&column);
  if (v12 == 255)
  {
    if (d->_column._lower == *"category column" && d->_column._upper == *" column")
    {
      objc_msgSend_setCell_atCellUID_(self->_summaryCellVendor, v11, cellCopy, d);
    }
  }

  else
  {
    objc_msgSend_setCell_atCellUID_(self->_summaryCellVendor, v11, cellCopy, d);
    v16 = objc_msgSend_newCell(self->_tableInfo, v13, v14, v15);
    v20 = objc_msgSend_newCell(self->_tableInfo, v17, v18, v19);
    v25 = objc_msgSend_columnIndexForColumnUID_(self->_columnRowUIDMap, v21, d->_column._lower, d->_column._upper);
    if (replacerCopy)
    {
      v26 = replacerCopy;
    }

    else
    {
      v26 = objc_msgSend_calcEngine(self->_tableInfo, v22, v23, v24);
    }

    v27 = v26;
    v28 = d->_row;
    column = d->_column;
    v48 = v28;
    v29 = sub_2211A9038(&column);
    if (v25 != 0x7FFF && v29)
    {
      column._lower = 0;
      column._upper = &column;
      v48._lower = 0x2020000000;
      LOBYTE(v48._upper) = 0;
      v34 = objc_msgSend_groupBy(self->_tableInfo, v30, v31, v32);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_22129F2D4;
      v40[3] = &unk_278462828;
      v46 = v25;
      v40[4] = self;
      dCopy = d;
      v41 = v16;
      v42 = v20;
      p_column = &column;
      v43 = v27;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v34, v35, v12, v40);
      objc_msgSend_markAllAggregatesAsDirty(v34, v36, v37, v38);

      _Block_object_dispose(&column, 8);
    }
  }

  return 0;
}

- (int)p_setPivotCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d formulaReplacer:(id)replacer
{
  cellCopy = cell;
  replacerCopy = replacer;
  v13 = replacerCopy;
  if (replacerCopy)
  {
    v14 = replacerCopy;
  }

  else
  {
    v14 = objc_msgSend_calcEngine(self->_tableInfo, v10, v11, v12);
  }

  v17 = v14;
  columnRowUIDMap = self->_columnRowUIDMap;
  row = d->_row;
  v39[0] = d->_column;
  v39[1] = row;
  v23 = objc_msgSend_cellIDForCellUID_(columnRowUIDMap, v15, v39, v16);
  if (v23 == 0x7FFFFFFF || (v23 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTSummaryModel p_setPivotCell:atCellUID:formulaReplacer:]", v22);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v28);
    v30 = TSKUIDStructCoord::description(d);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v29, 893, 0, "Attempting to set cell at illegal summary model cell UID:%{public}@", v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
  }

  else
  {
    dataStore = self->_dataStore;
    HIBYTE(v38) = objc_msgSend_tsp_isInDocument(self, v20, v21, v22);
    LOBYTE(v38) = 0;
    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(dataStore, v36, cellCopy, v23, &self->_aggregateFormulaOwnerUID, v17, 0, 0, v38);
  }

  return 0;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d formulaReplacer:(id)replacer
{
  cellCopy = cell;
  replacerCopy = replacer;
  if (objc_msgSend_isAPivotTable(self->_tableInfo, v10, v11, v12))
  {
    v14 = objc_msgSend_p_setPivotCell_atCellUID_formulaReplacer_(self, v13, cellCopy, d, replacerCopy);
  }

  else
  {
    v14 = objc_msgSend_p_setCategoryCell_atCellUID_formulaReplacer_(self, v13, cellCopy, d, replacerCopy);
  }

  v15 = v14;

  return v15;
}

- (int)setFormulaResultCellsWithCellMap:(id)map
{
  mapCopy = map;
  v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
  v12 = objc_msgSend_calcEngine(v8, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v18 = objc_msgSend_context(self, v13, v14, v15);
    v22 = objc_msgSend_documentRoot(v18, v19, v20, v21);
    v17 = objc_msgSend_calculationEngine(v22, v23, v24, v25);
  }

  objc_msgSend_willModify(self, v26, v27, v28);
  dataStore = self->_dataStore;
  v35 = objc_msgSend_tsp_isInDocument(self, v30, v31, v32);
  objc_msgSend_setCellMap_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormulas_skipDirtyingNonFormulaCells_doRichTextDOLC_(dataStore, v33, mapCopy, &self->_aggregateFormulaOwnerUID, v17, 0, 1, 0, v35);

  return 0;
}

- (void)setGroupSortOrder:(id)order
{
  orderCopy = order;
  objc_msgSend_willModify(self, v5, v6, v7);
  groupSortOrder = self->_groupSortOrder;
  self->_groupSortOrder = orderCopy;
}

- (int)insertColumnsAtIndex:(TSUModelColumnIndex)index metadatas:(id)metadatas
{
  v86 = *MEMORY[0x277D85DE8];
  metadatasCopy = metadatas;
  objc_msgSend_willModify(self, v7, v8, v9);
  dataStore = self->_dataStore;
  v14 = objc_msgSend_count(metadatasCopy, v11, v12, v13);
  objc_msgSend_insertColumns_(dataStore, v15, index._column, v14);
  column = index._column;
  __src = 0;
  v83 = 0;
  v84 = 0;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v75 = metadatasCopy;
  v16 = metadatasCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v78, v85, 16);
  if (v21)
  {
    v22 = *v79;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v79 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = objc_msgSend_columnRowUID(*(*(&v78 + 1) + 8 * i), v18, v19, v20);
        v25 = v18;
        v26 = v83;
        if (v83 >= v84)
        {
          v28 = __src;
          v29 = v83 - __src;
          v30 = (v83 - __src) >> 4;
          v31 = v30 + 1;
          if ((v30 + 1) >> 60)
          {
            sub_22107C148();
          }

          v32 = v84 - __src;
          if ((v84 - __src) >> 3 > v31)
          {
            v31 = v32 >> 3;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF0)
          {
            v33 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_221086F74(&__src, v33);
          }

          v34 = (v83 - __src) >> 4;
          v35 = (16 * v30);
          *v35 = v24;
          v35[1] = v25;
          v27 = 16 * v30 + 16;
          v36 = &v35[-2 * v34];
          memcpy(v36, v28, v29);
          v37 = __src;
          __src = v36;
          v83 = v27;
          v84 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v83 = v24;
          *(v26 + 1) = v18;
          v27 = (v26 + 16);
        }

        v83 = v27;
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v78, v85, 16);
    }

    while (v21);
  }

  objc_msgSend_insertColumnsWithUIDs_atIndex_(self->_columnRowUIDMap, v38, &__src, column);
  objc_msgSend_setNeedsFormulaReset_(self, v39, 1, v40);
  v44 = objc_msgSend_tableInfo(self, v41, v42, v43);
  v48 = objc_msgSend_tableSizeClass(v44, v45, v46, v47) > 1;

  if (v48)
  {
    objc_msgSend_setShouldUseWideRows_(self->_dataStore, v49, 1, v51);
  }

  v52 = objc_msgSend_tableInfo(self, v49, v50, v51);
  v56 = objc_msgSend_calcEngine(v52, v53, v54, v55);
  v60 = objc_msgSend_count(v16, v57, v58, v59);
  v77[0] = objc_msgSend_aggregateFormulaOwnerUID(self, v61, v62, v63);
  v77[1] = v64;
  v67 = objc_msgSend_range(self, v64, v65, v66);
  v69 = j__TSUCellRectToTSCERangeCoordinate(v67, v68);
  v71 = v70;
  v72 = j__TSUCellRectToTSCERangeCoordinate(0x7FFF7FFFFFFFLL, 0);
  objc_msgSend_dirtyCellsForInsertionOfColumns_forTable_tableRange_headerRange_(v56, v73, column, v60, v77, v69, v71, v72, v73, v75);

  if (__src)
  {
    v83 = __src;
    operator delete(__src);
  }

  return 0;
}

- (void)removeColumnsAtSummaryIndexes:(id)indexes
{
  indexesCopy = indexes;
  objc_msgSend_willModify(self, v5, v6, v7);
  v11 = objc_msgSend_tableInfo(self, v8, v9, v10);
  v15 = objc_msgSend_calcEngine(v11, v12, v13, v14);

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22129FD7C;
  v25[3] = &unk_27845EBE8;
  v25[4] = self;
  v16 = v15;
  v26 = v16;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(indexesCopy, v17, 2, v25);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22129FF84;
  v24[3] = &unk_27845E958;
  v24[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v18, v24, v19);
  objc_msgSend_removeColumnsAtIndexes_(self->_columnRowUIDMap, v20, indexesCopy, v21);
  objc_msgSend_setNeedsFormulaReset_(self, v22, 1, v23);
}

- (void)removeCategoryColumnCellsForRows:(void *)rows
{
  v3 = *rows;
  v4 = *(rows + 1);
  if (*rows != v4)
  {
    do
    {
      memset(v11, 0, sizeof(v11));
      TSTMakeCellUID(v11);
      v9 = objc_msgSend_summaryCellVendor(self, v6, v7, v8);
      objc_msgSend_setCell_atCellUID_(v9, v10, 0, v11);

      v3 += 16;
    }

    while (v3 != v4);
  }
}

- (void)p_removeRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  objc_msgSend_willModify(self, a2, rows.location, rows.length);
  objc_msgSend_removeRows_(self->_dataStore, v6, location, length);
  columnRowUIDMap = self->_columnRowUIDMap;
  v11 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v8, location, length);
  objc_msgSend_removeRowsAtIndexes_(columnRowUIDMap, v9, v11, v10);
}

- (void)setAggregateType:(unsigned __int8)type forColumnUID:(const TSKUIDStruct *)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  typeCopy = type;
  objc_msgSend_willModify(self, a2, type, d);
  v12 = objc_msgSend_summaryCellVendor(self, v9, v10, v11);
  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v12, v13, typeCopy, d->_lower, d->_upper, levelCopy);

  v17 = objc_msgSend_tableInfo(self, v14, v15, v16);
  v21 = objc_msgSend_calcEngine(v17, v18, v19, v20);

  v25 = objc_msgSend_tableInfo(self, v22, v23, v24);
  v29 = objc_msgSend_groupBy(v25, v26, v27, v28);
  isEnabled = objc_msgSend_isEnabled(v29, v30, v31, v32);

  v37 = objc_msgSend_tableInfo(self, v34, v35, v36);
  v41 = objc_msgSend_groupBy(v37, v38, v39, v40);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2212A02D8;
  v44[3] = &unk_278462850;
  dCopy = d;
  v44[4] = self;
  v42 = v21;
  v45 = v42;
  v47 = isEnabled;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v41, v43, levelCopy, v44);
}

- (unsigned)cellValueTypeAtSummaryModelCoord:(TSUModelCellCoord)coord
{
  v12.origin = objc_msgSend_range(self, a2, *&coord, v3);
  v12.size = v6;
  coord = coord._coord;
  v8 = TSUCellRect::contains(&v12, coord);
  if (v8)
  {
    LOBYTE(v8) = objc_msgSend_valueTypeAtCellID_(self->_dataStore, v9, *&coord, v10);
  }

  return v8;
}

- (id)explicitFormatOfKind:(unsigned __int8)kind atModelCellCoord:(TSUModelCellCoord)coord currencyIsMostRecentlySet:(BOOL *)set
{
  kindCopy = kind;
  v9 = objc_msgSend_newCell(self, a2, kind, *&coord);
  if (!objc_msgSend_getCell_atCellID_(self->_dataStore, v10, v9, *&coord))
  {
    v16 = 0;
    goto LABEL_8;
  }

  v18 = 0;
  v12 = objc_msgSend_formatOfCellFormatKind_isExplicit_(v9, v11, kindCopy, &v18);
  if ((v18 & 1) == 0)
  {

    v16 = 0;
    if (!set)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = v12;
  if (set)
  {
LABEL_7:
    *set = objc_msgSend_currencyIsMostRecentlySet(v9, v13, v14, v15);
  }

LABEL_8:

  return v16;
}

- (BOOL)cellExistsAtCellCoord:(TSUModelCellCoord)coord
{
  v12.origin = objc_msgSend_range(self, a2, *&coord, v3);
  v12.size = v6;
  coord = coord._coord;
  v8 = TSUCellRect::contains(&v12, coord);
  if (v8)
  {
    LOBYTE(v8) = objc_msgSend_cellExistsAtCellID_(self->_dataStore, v9, *&coord, v10);
  }

  return v8;
}

- (TSUModelCellRect)range
{
  v5 = objc_msgSend_numberOfColumns(self->_columnRowUIDMap, a2, v2, v3);
  v9 = v5 | (objc_msgSend_numberOfRows(self->_columnRowUIDMap, v6, v7, v8) << 32);
  v10 = 0;
  result.var0.size = v9;
  result.var0.origin = v10;
  return result;
}

- (id)allRichTextStorages
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTSummaryModel allRichTextStorages]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 1083, 0, "TODO");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v15 = MEMORY[0x277CBEB98];

  return objc_msgSend_set(v15, v12, v13, v14);
}

- (id)metadataForRowIndex:(TSUModelRowIndex)index hidingAction:(unsigned __int8)action
{
  v4 = *&index._row;
  if (index._row == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    actionCopy = action;
    v8 = objc_msgSend_rowUIDForRowIndex_(self->_columnRowUIDMap, a2, *&index._row, action);
    v5 = objc_msgSend_metadataForRowIndex_hidingAction_uuid_(self->_dataStore, v9, v4, actionCopy, v8, v9);
  }

  return v5;
}

- (id)metadataForColumnIndex:(TSUModelColumnIndex)index hidingAction:(unsigned __int8)action
{
  if (index._column == 0x7FFF)
  {
    v5 = 0;
  }

  else
  {
    actionCopy = action;
    v8 = objc_msgSend_columnUIDForColumnIndex_(self->_columnRowUIDMap, a2, index._column, action);
    v5 = objc_msgSend_metadataForColumnIndex_hidingAction_uuid_(self->_dataStore, v9, index._column, actionCopy, v8, v9);
  }

  return v5;
}

- (id)newCell
{
  v4 = objc_msgSend_baseTableModel(self->_tableInfo, a2, v2, v3);
  v8 = objc_msgSend_newCell(v4, v5, v6, v7);

  return v8;
}

- (void)enumerateCellsForSOSSerializationWithBlock:(id)block
{
  blockCopy = block;
  v19.origin = objc_msgSend_range(self, v5, v6, v7);
  v19.size = v8;
  if (TSUCellRect::isValid(&v19))
  {
    dataStore = self->_dataStore;
    v13 = objc_msgSend_range(self, v9, v10, v11);
    v15 = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2212A0998;
    v17[3] = &unk_278462878;
    v17[4] = self;
    v18 = blockCopy;
    objc_msgSend_enumerateCellStoragesInRange_withBlock_(dataStore, v16, v13, v15, v17);
  }
}

- (BOOL)hasMigratableStylesInCells
{
  isAPivotTable = objc_msgSend_isAPivotTable(self->_tableInfo, a2, v2, v3);
  if (isAPivotTable)
  {
    dataStore = self->_dataStore;

    LOBYTE(isAPivotTable) = objc_msgSend_hasMigratableStylesInCells(dataStore, v6, v7, v8);
  }

  return isAPivotTable;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v11 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v8, v9, v10);
  v15 = objc_msgSend_supportsInlineAttachments(v11, v12, v13, v14);

  if (objc_msgSend_isAPivotTable(self->_tableInfo, v16, v17, v18))
  {
    v52.origin = objc_msgSend_range(self, v19, v20, v21);
    v52.size = v22;
    if (TSUCellRect::isValid(&v52))
    {
      objc_msgSend_adoptStylesheet_withMapper_ownerUID_conditionalStyleOwner_(self->_dataStore, v23, stylesheetCopy, mapperCopy, &self->_aggregateFormulaOwnerUID, 0);
    }
  }

  else
  {
    v24 = objc_msgSend_context(self, v19, v20, v21);
    v27 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v25, v24, v26);

    v31 = objc_msgSend_newCell(self, v28, v29, v30);
    v35 = objc_msgSend_summaryCellVendor(self, v32, v33, v34);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2212A0D5C;
    v46[3] = &unk_2784628A0;
    v36 = v31;
    v47 = v36;
    v48 = stylesheetCopy;
    v49 = mapperCopy;
    v51 = v15;
    v37 = v27;
    v50 = v37;
    objc_msgSend_enumerateCellsUsingBlock_(v35, v38, v46, v39);

    if (objc_msgSend_count(v37, v40, v41, v42))
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = sub_2212A0E38;
      v45[3] = &unk_2784621C0;
      v45[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v37, v43, v45, v44);
    }
  }
}

- (void)addReferencedStylesToSet:(id)set
{
  setCopy = set;
  if (!objc_msgSend_isAPivotTable(self->_tableInfo, v5, v6, v7))
  {
    v15 = objc_msgSend_summaryCellVendor(self, v8, v9, v10);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2212A1010;
    v18[3] = &unk_278462710;
    v19 = setCopy;
    objc_msgSend_enumerateCellsUsingBlock_(v15, v16, v18, v17);
    v14 = &v19;

    goto LABEL_5;
  }

  if (objc_msgSend_hasCellOrTextStyles(self->_dataStore, v8, v9, v10))
  {
    dataStore = self->_dataStore;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2212A0FB8;
    v20[3] = &unk_27845E4B8;
    v21 = setCopy;
    objc_msgSend_replaceStylesUsingBlock_(dataStore, v12, v20, v13);
    v14 = &v21;
LABEL_5:
  }
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  if (!objc_msgSend_isAPivotTable(self->_tableInfo, v5, v6, v7))
  {
    v41 = objc_msgSend_context(self, v8, v9, v10);
    v44 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v42, v41, v43);

    v48 = objc_msgSend_newCell(self, v45, v46, v47);
    v52 = objc_msgSend_summaryCellVendor(self, v49, v50, v51);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_2212A1744;
    v62[3] = &unk_2784628F0;
    v62[4] = self;
    v53 = v48;
    v63 = v53;
    v65 = blockCopy;
    v40 = v44;
    v64 = v40;
    objc_msgSend_enumerateCellsUsingBlock_(v52, v54, v62, v55);

    if (objc_msgSend_count(v40, v56, v57, v58))
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_2212A1A0C;
      v61[3] = &unk_2784621C0;
      v61[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v40, v59, v61, v60);
    }

    goto LABEL_9;
  }

  if (objc_msgSend_hasCellOrTextStyles(self->_dataStore, v8, v9, v10))
  {
    dataStore = self->_dataStore;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_2212A1518;
    v71[3] = &unk_27845E4E0;
    v72 = blockCopy;
    objc_msgSend_replaceStylesUsingBlock_(dataStore, v12, v71, v13);
    v17 = objc_msgSend_context(self, v14, v15, v16);
    v20 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v18, v17, v19);

    v24 = objc_msgSend_newCell(self, v21, v22, v23);
    v25 = self->_dataStore;
    v29 = objc_msgSend_range(self, v26, v27, v28);
    v31 = v30;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_2212A1550;
    v67[3] = &unk_2784628C8;
    v32 = v24;
    v68 = v32;
    selfCopy = self;
    v33 = v20;
    v70 = v33;
    objc_msgSend_enumerateCellStoragesInRange_withBlock_(v25, v34, v29, v31, v67);
    if (objc_msgSend_count(v33, v35, v36, v37))
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_2212A1738;
      v66[3] = &unk_2784621C0;
      v66[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v33, v38, v66, v39);
    }

    v40 = v72;
LABEL_9:
  }
}

- (unsigned)p_RowCategoryLevelForCellCoord:(TSUModelCellCoord)coord isLabel:(BOOL *)label
{
  v7 = objc_msgSend_translator(self->_tableInfo, a2, *&coord, label);
  v10 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v7, v8, *&coord, v9);
  v16 = objc_msgSend_groupLevelAtSummaryRow_(v7, v11, v10, v12);
  if (v16 != 255)
  {
    v17 = 0;
    if (!label)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((objc_msgSend_isAPivotTable(self->_tableInfo, v13, v14, v15) & 1) == 0)
  {
    v16 = objc_msgSend_groupLevelAtLabelRow_(v7, v18, v10, v19);
    v17 = v16 != 255;
    if (!label)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = 0;
  LOBYTE(v16) = -1;
  if (label)
  {
LABEL_6:
    *label = v17;
  }

LABEL_7:

  return v16;
}

- (unsigned)p_ColumnCategoryLevelForCellCoord:(TSUModelCellCoord)coord
{
  coordCopy = coord;
  v5 = objc_msgSend_translator(self->_tableInfo, a2, *&coord, v3);
  v8 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v5, v6, *&coordCopy, v7);
  LOBYTE(coordCopy._coord.row) = objc_msgSend_groupLevelAtSummaryColumn_(v5, v9, WORD2(v8), v10);

  return coordCopy._coord.row;
}

- (unint64_t)p_tableStyleAreaForCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_tableInfo(self, a2, *&coord, v3);
  v10 = objc_msgSend_translator(v6, v7, v8, v9);
  v13 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v10, v11, *&coord, v12);

  v17 = objc_msgSend_tableInfo(self, v14, v15, v16);
  v21 = objc_msgSend_translator(v17, v18, v19, v20);
  v24 = objc_msgSend_tableStyleAreaForCellID_(v21, v22, v13, v23);

  return v24;
}

- (id)defaultCellStyleForCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_tableInfo(self, a2, *&coord, v3);
  v9 = objc_msgSend_p_tableStyleAreaForCellCoord_(self, v7, *&coord, v8);
  v12 = objc_msgSend_defaultCellStyleForTableStyleArea_(v6, v10, v9, v11);

  return v12;
}

- (id)defaultTextStyleForCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_tableInfo(self, a2, *&coord, v3);
  v9 = objc_msgSend_p_tableStyleAreaForCellCoord_(self, v7, *&coord, v8);
  v12 = objc_msgSend_defaultTextStyleForTableStyleArea_(v6, v10, v9, v11);

  return v12;
}

- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v5 = 0;
  if (coord._coord.row != 0x7FFFFFFF && (*&coord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v8 = objc_msgSend_cellStyleAtCellID_(self->_dataStore, a2, *&coord, default);
    v5 = v8;
    if (default || !v8)
    {
      v11 = objc_msgSend_defaultCellStyleForCellCoord_(self, v9, *&coord, v10);
      if (default)
      {
        if (v5)
        {
          v12 = v11 == v5;
        }

        else
        {
          v12 = 1;
        }

        v13 = v12;
        *default = v13;
      }

      if (!v5)
      {
        v11 = v11;
        v5 = v11;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v5;
}

- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v5 = 0;
  if (coord._coord.row != 0x7FFFFFFF && (*&coord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v8 = objc_msgSend_textStyleAtCellID_(self->_dataStore, a2, *&coord, default);
    v5 = v8;
    if (default || !v8)
    {
      v11 = objc_msgSend_defaultTextStyleForCellCoord_(self, v9, *&coord, v10);
      if (default)
      {
        if (v5)
        {
          v12 = v11 == v5;
        }

        else
        {
          v12 = 1;
        }

        v13 = v12;
        *default = v13;
      }

      if (!v5)
      {
        v11 = v11;
        v5 = v11;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v5;
}

- (double)heightOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default
{
  v5 = *&index._row;
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&index._row, default) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel heightOfRowAtIndex:isDefault:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1398, 0, "Individual row heights can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (v5 == 0x7FFFFFFF)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel heightOfRowAtIndex:isDefault:]", v8);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1399, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  objc_msgSend_heightOfRowAtIndex_(self->_dataStore, v7, v5, v8);
  v31 = v30;
  v32 = v30;
  if (v30 >= 0.0 && v30 <= 0.0)
  {
    v33 = objc_msgSend_baseTableModel(self->_tableInfo, v27, v28, v29);
    objc_msgSend_defaultRowHeight(v33, v34, v35, v36);
    v32 = v37;
  }

  if (default)
  {
    *default = v31 == 0.0;
  }

  return v32;
}

- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default
{
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&index._column, default) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel widthOfColumnAtIndex:isDefault:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1416, 0, "Individual column widths can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (index._column == 0x7FFF)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel widthOfColumnAtIndex:isDefault:]", v8);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1417, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  objc_msgSend_widthOfColumnAtIndex_(self->_dataStore, v7, index._column, v8);
  v31 = v30;
  v32 = v30;
  if (v30 >= 0.0 && v30 <= 0.0)
  {
    v33 = objc_msgSend_baseTableModel(self->_tableInfo, v27, v28, v29);
    objc_msgSend_defaultColumnWidth(v33, v34, v35, v36);
    v32 = v37;
  }

  if (default)
  {
    *default = v31 == 0.0;
  }

  return v32;
}

- (void)setHeight:(double)height ofRowAtIndex:(TSUModelRowIndex)index
{
  v5 = *&index._row;
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&index._row, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel setHeight:ofRowAtIndex:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1434, 0, "Individual row heights can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (v5 == 0x7FFFFFFF)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel setHeight:ofRowAtIndex:]", v8);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1435, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setHeight_ofRowAtIndex_(dataStore, v7, v5, v8);
}

- (void)setWidth:(double)width ofColumnAtIndex:(TSUModelColumnIndex)index
{
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&index._column, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel setWidth:ofColumnAtIndex:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1448, 0, "Individual column widths can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (index._column == 0x7FFF)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel setWidth:ofColumnAtIndex:]", v8);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1449, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setWidth_ofColumnAtIndex_(dataStore, v7, index._column, v8);
}

- (void)setSummaryRowHeight:(double)height atCategoryLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_willModify(self, a2, level, v4);
  self->_summaryRowHeightList.__begin_[levelCopy] = height;
}

- (void)setLabelRowHeight:(double)height atCategoryLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_willModify(self, a2, level, v4);
  self->_labelRowHeightList.__begin_[levelCopy] = height;
}

- (void)setLabelRowVisibility:(unint64_t)visibility atCategoryLevel:(unsigned __int8)level
{
  levelCopy = level;
  visibilityCopy = visibility;
  objc_msgSend_willModify(self, a2, visibility, level);
  if (visibilityCopy >= 0x80000000)
  {
    v9 = MEMORY[0x277D81150];
    visibilityCopy = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTSummaryModel setLabelRowVisibility:atCategoryLevel:]", v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, visibilityCopy, v12, 1481, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    LODWORD(visibilityCopy) = 0x7FFFFFFF;
  }

  self->_labelRowVisibilityList.__begin_[levelCopy] = visibilityCopy;
}

- (id)currentState
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_summaryRowHeightList(v3, v4, v5, v6);
  sub_2212A41CC(v7, self->_summaryRowHeightList.__begin_, self->_summaryRowHeightList.__end_, self->_summaryRowHeightList.__end_ - self->_summaryRowHeightList.__begin_);
  v11 = objc_msgSend_labelRowHeightList(v3, v8, v9, v10);
  sub_2212A41CC(v11, self->_labelRowHeightList.__begin_, self->_labelRowHeightList.__end_, self->_labelRowHeightList.__end_ - self->_labelRowHeightList.__begin_);
  v15 = objc_msgSend_labelRowVisibilityList(v3, v12, v13, v14);
  sub_2212A42F8(v15, self->_labelRowVisibilityList.__begin_, self->_labelRowVisibilityList.__end_, self->_labelRowVisibilityList.__end_ - self->_labelRowVisibilityList.__begin_);
  v19 = objc_msgSend_summaryCellVendor(self, v16, v17, v18);
  v23 = objc_msgSend_cellMapForWildcardCells(v19, v20, v21, v22);
  objc_msgSend_setCellMap_(v3, v24, v23, v25);

  return v3;
}

- (void)runChange:(id)change withSummaryChangeState:(id)state migrationHelper:(id)helper
{
  changeCopy = change;
  stateCopy = state;
  helperCopy = helper;
  if (!objc_msgSend_changeType(changeCopy, v11, v12, v13))
  {
    goto LABEL_23;
  }

  objc_msgSend_willModify(self, v14, v15, v16);
  p_summaryRowHeightList = &self->_summaryRowHeightList;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  sub_2212A4424(&v56, self->_summaryRowHeightList.__begin_, self->_summaryRowHeightList.__end_, self->_summaryRowHeightList.__end_ - self->_summaryRowHeightList.__begin_);
  p_labelRowHeightList = &self->_labelRowHeightList;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  sub_2212A4424(&v53, self->_labelRowHeightList.__begin_, self->_labelRowHeightList.__end_, self->_labelRowHeightList.__end_ - self->_labelRowHeightList.__begin_);
  p_labelRowVisibilityList = &self->_labelRowVisibilityList;
  v51 = 0;
  v52 = 0;
  __p = 0;
  sub_2212A44A0(&__p, self->_labelRowVisibilityList.__begin_, self->_labelRowVisibilityList.__end_, self->_labelRowVisibilityList.__end_ - self->_labelRowVisibilityList.__begin_);
  v23 = objc_msgSend_groupingColumnChanges(changeCopy, v20, v21, v22);
  v27 = *v23;
  v28 = *(v23 + 8);
  while (v27 != v28)
  {
    v29 = *v27;
    if (v29 != 255)
    {
      begin = p_summaryRowHeightList->__begin_;
      p_summaryRowHeightList->__begin_[v29] = 0.0;
      v31 = p_labelRowHeightList->__begin_;
      p_labelRowHeightList->__begin_[v29] = 0.0;
      v32 = p_labelRowVisibilityList->__begin_;
      p_labelRowVisibilityList->__begin_[v29] = 0;
      v33 = v27[1];
      if (v33 != 255)
      {
        begin[v33] = 0.0;
        v31[v33] = 0.0;
        v32[v33] = 0;
      }
    }

    v27 += 2;
  }

  v34 = objc_msgSend_groupingColumnChanges(changeCopy, v24, v25, v26);
  v38 = *v34;
  v39 = *(v34 + 8);
  while (v38 != v39)
  {
    v40 = v38[1];
    if (v40 == 255)
    {
      goto LABEL_16;
    }

    v41 = *v38;
    if (v41 == 255)
    {
      if (!stateCopy)
      {
        goto LABEL_16;
      }

      p_summaryRowHeightList->__begin_[v38[1]] = *(*objc_msgSend_summaryRowHeightList(stateCopy, v35, v36, v37) + 8 * v38[1]);
      p_labelRowHeightList->__begin_[v38[1]] = *(*objc_msgSend_labelRowHeightList(stateCopy, v43, v44, v45) + 8 * v38[1]);
      v49 = objc_msgSend_labelRowVisibilityList(stateCopy, v46, v47, v48);
      v40 = v38[1];
      v42 = (*v49 + 4 * v40);
    }

    else
    {
      p_summaryRowHeightList->__begin_[v40] = *(v56 + v41);
      p_labelRowHeightList->__begin_[v40] = *(v53 + v41);
      v42 = (__p + 4 * v41);
    }

    p_labelRowVisibilityList->__begin_[v40] = *v42;
LABEL_16:
    v38 += 2;
  }

  objc_msgSend_resetForCategoriesWithForce_(self, v35, 1, v37);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

LABEL_23:
}

- (void)didCreateGroup:(id)group
{
  *(&v51 + 1) = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v48 = objc_msgSend_groupUid(groupCopy, v4, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_numberOfRows(self, v7, v9, v10);
  objc_msgSend_willModify(self, v12, v13, v14);
  columnRowUIDMap = self->_columnRowUIDMap;
  *&v50 = v48;
  *(&v50 + 1) = v8;
  memset(__p, 0, 24);
  sub_2212A3CC4(__p, &v50, &v51, 1uLL);
  objc_msgSend_insertRowsWithUIDs_atIndex_(columnRowUIDMap, v16, __p, v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v20 = objc_msgSend_columnUIDs(self->_columnRowUIDMap, v17, v18, v19);
  v50 = 0uLL;
  *&v51 = 0;
  sub_221086EBC(&v50, *v20, *(v20 + 8), (*(v20 + 8) - *v20) >> 4);
  v24 = objc_msgSend_tableInfo(self, v21, v22, v23);
  v28 = objc_msgSend_newCell(v24, v25, v26, v27);

  v33 = *(&v50 + 1);
  v32 = v50;
  if (v50 != *(&v50 + 1))
  {
    v34 = 0;
    v47 = v11;
    do
    {
      v35 = objc_msgSend_summaryCellVendor(self, v29, v30, v31);
      TSTMakeCellUID(__p);
      v37 = objc_msgSend_getCell_atCellUID_(v35, v36, v28, __p) == 0;

      if (v37)
      {
        dataStore = self->_dataStore;
        v39 = objc_msgSend_tableInfo(self, v29, v30, v31);
        v43 = objc_msgSend_calcEngine(v39, v40, v41, v42);
        LOBYTE(v45) = 0;
        objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(dataStore, v44, v28, v47 | (v34 << 32), &self->_aggregateFormulaOwnerUID, v43, 0, 0, v45);
      }

      ++v34;
      v32 += 16;
    }

    while (v32 != v33);
  }

  if (v50)
  {
    *(&v50 + 1) = v50;
    operator delete(v50);
  }
}

- (void)willRemoveGroup:(id)group
{
  v82 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v7 = objc_msgSend_groupUid(groupCopy, v4, v5, v6);
  v12 = objc_msgSend_rowIndexForRowUID_(self->_columnRowUIDMap, v8, v7, v8);
  if (v12 == 0x7FFFFFFF)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTSummaryModel willRemoveGroup:]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1616, 0, "GroupBy tried to remove a summaryRow that doesn't exist in the summaryModel.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  else
  {
    objc_msgSend_willModify(self, v9, v10, v11);
    v25 = objc_msgSend_tableInfo(self, v22, v23, v24);
    v29 = objc_msgSend_calcEngine(v25, v26, v27, v28);
    objc_msgSend_removeAllFormulasFromOwner_(v29, v30, &self->_aggregateFormulaOwnerUID, v31);

    objc_msgSend_p_removeRows_(self, v32, v12, 1);
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v36 = objc_msgSend_tableInfo(self, v33, v34, v35);
    v40 = objc_msgSend_groupBy(v36, v37, v38, v39);
    v44 = objc_msgSend_aggregators(v40, v41, v42, v43);

    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v77, v81, 16);
    if (v49)
    {
      v75 = *v78;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v78 != v75)
          {
            objc_enumerationMutation(v44);
          }

          v51 = *(*(&v77 + 1) + 8 * i);
          v52 = objc_msgSend_columnRowUIDMap(self, v46, v47, v48);
          v56 = objc_msgSend_columnUid(v51, v53, v54, v55);
          v58 = objc_msgSend_columnIndexForColumnUID_(v52, v57, v56, v57);

          v62 = 0;
          v63 = v58 << 32;
          while (v62 < objc_msgSend_numberOfRows(self, v59, v60, v61))
          {
            v76 = v63;
            v67 = objc_msgSend_formulaSpecAtCellID_(self->_dataStore, v46, v63, v48);
            if (v67)
            {
              v68 = objc_msgSend_tableInfo(self, v64, v65, v66);
              v72 = objc_msgSend_calcEngine(v68, v69, v70, v71);
              objc_msgSend_replaceFormula_atCellCoord_inOwner_(v72, v73, v67, &v76, &self->_aggregateFormulaOwnerUID);
            }

            ++v62;
            ++v63;
          }
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v77, v81, 16);
      }

      while (v49);
    }
  }
}

- (void)didChangeGroupByStructure
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  isAPivotTable = objc_msgSend_isAPivotTable(v5, v6, v7, v8);

  if ((isAPivotTable & 1) == 0)
  {

    objc_msgSend_resetForCategories(self, v10, v11, v12);
  }
}

+ (unsigned)categoryLevelForTableStyleArea:(unint64_t)area
{
  if (area - 5 < 0xA)
  {
    return byte_2217E0F80[area - 5];
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTSummaryModel categoryLevelForTableStyleArea:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 1654, 0, "Calling categoryLevelForTableStyleArea with an invalid style area");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return -1;
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  if (objc_msgSend_isAPivotTable(self->_tableInfo, a2, v2, v3))
  {
    v8 = objc_msgSend_addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs(self->_dataStore, v5, v6, v7);
    if (objc_msgSend_count(v8, v9, v10, v11))
    {
      v14 = objc_msgSend_cellMapForRepairingPasteboardCustomFormats_(self->_dataStore, v12, v8, v13);
      v18 = v14;
      if (v14)
      {
        if (objc_msgSend_count(v14, v15, v16, v17))
        {
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = sub_2212A33CC;
          v22[3] = &unk_27845DE10;
          v22[4] = self;
          objc_msgSend_enumerateCellsWithIDsUsingBlock_(v18, v19, v22, v20);
        }
      }
    }
  }

  else
  {
    summaryCellVendor = self->_summaryCellVendor;

    objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(summaryCellVendor, v5, v6, v7);
  }
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys
{
  keysCopy = keys;
  v7 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_summaryCellVendor, v5, keysCopy, v6);

  v10 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_dataStore, v8, v7, v9);

  return v10;
}

- (TSKUIDStruct)aggregateFormulaOwnerUID
{
  p_aggregateFormulaOwnerUID = &self->_aggregateFormulaOwnerUID;
  lower = self->_aggregateFormulaOwnerUID._lower;
  upper = p_aggregateFormulaOwnerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  return self;
}

@end