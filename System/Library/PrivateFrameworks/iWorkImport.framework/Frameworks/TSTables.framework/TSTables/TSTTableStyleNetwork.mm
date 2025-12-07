@interface TSTTableStyleNetwork
+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider styleMorphingBlock:(id)block;
+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0;
+ (id)createStylesInStylesheet:(id)stylesheet presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (id)curatedTableStylePropertySetForCrossDocumentPasteMasterComparison;
+ (id)defaultTableNameShapeStyleWithContext:(id)context;
+ (id)deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveBodyPivotEmphasisVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveBodyPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveBodyPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveCategoryBottomStrokeFromFooterRowSeparatorStroke:(id)stroke;
+ (id)deriveCategoryTopStrokeFromFooterRowSeparatorStroke:(id)stroke;
+ (id)deriveFooterRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderColumnPivotSeparatorStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)deriveHeaderRowPivotTitleStrokeFromTableStyle:(id)style propertyMap:(id)map;
+ (id)identifiersForPresetID:(unint64_t)d;
+ (id)networkFromStyleProvider:(id)provider;
+ (id)networkFromStylesheet:(id)stylesheet presetID:(unint64_t)d;
+ (id)networkFromTheme:(id)theme presetID:(unint64_t)d;
+ (id)networkFromTheme:(id)theme presetIndex:(unint64_t)index;
+ (id)nonValidatedNetworkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0;
+ (id)p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map returnHeaderRowPivotGroupVerticalStroke:(BOOL)stroke;
+ (unint64_t)pivotTableStyleAreaForRowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel numberOfRowLevels:(unint64_t)levels numberOfColumnLevels:(unint64_t)columnLevels columnIndex:(TSUViewColumnIndex)index;
+ (unint64_t)styleAreaForColumnType:(unsigned __int8)type rowType:(unsigned __int8)rowType forAPivotTable:(BOOL)table;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison objectComparisonBlock:(id)block;
- (BOOL)stylesInStylesheet:(id)stylesheet;
- (TSTTableStyleNetwork)initWithContext:(id)context;
- (TSTTableStyleNetwork)initWithContext:(id)context fromDictionary:(id)dictionary withPreset:(unint64_t)preset;
- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider;
- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider presetID:(unint64_t)d;
- (id).cxx_construct;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone context:(id)context;
- (id)deriveCategoryCellStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet;
- (id)deriveCategoryTextStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet;
- (id)dictionaryWithPreset:(unint64_t)preset;
- (id)networkForPivotTables;
- (id)p_deriveCategoryCellStyleForTableStyleArea:(unint64_t)area fromCellStyle:(id)style connectedToStylesheet:(BOOL)stylesheet;
- (id)p_deriveCategoryTextStyleForTableStyleArea:(unint64_t)area fromTextStyle:(id)style connectedToStylesheet:(BOOL)stylesheet;
- (id)p_derivePivotCellStyleFromCellStyle:(id)style optionalSourceFill:(id)fill brightnessShift:(double)shift connectedToStylesheet:(BOOL)stylesheet styleArea:(unint64_t)area;
- (id)sheetFill;
- (id)styleForStyleNetworkIndex:(unint64_t)index;
- (id)textStyleForTableStyleArea:(unint64_t)area;
- (unint64_t)hash;
- (void)clearAndGenerateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)clearAndGeneratePivotStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)enumerateAllStylesWithBlock:(id)block;
- (void)generateCategoryStrokesInTableStyle:(id)style;
- (void)generateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)generatePivotStrokesInTableStyle:(id)style;
- (void)generatePivotStylesConnectedToStylesheet:(BOOL)stylesheet;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)maintainPivotStrokesInTableStyle:(id)style fromTable:(id)table;
- (void)p_clearCategoryStyles;
- (void)p_clearPivotStyles;
- (void)p_saveToArchive:(void *)archive archiver:(id)archiver isPre30Alternate:(BOOL)alternate;
- (void)saveToArchiver:(id)archiver;
- (void)setBodyCellStyle:(id)style;
- (void)setBodyTextStyle:(id)style;
- (void)setCategoryLevel1CellStyle:(id)style;
- (void)setCategoryLevel1TextStyle:(id)style;
- (void)setCategoryLevel2CellStyle:(id)style;
- (void)setCategoryLevel2TextStyle:(id)style;
- (void)setCategoryLevel3CellStyle:(id)style;
- (void)setCategoryLevel3TextStyle:(id)style;
- (void)setCategoryLevel4CellStyle:(id)style;
- (void)setCategoryLevel4TextStyle:(id)style;
- (void)setCategoryLevel5CellStyle:(id)style;
- (void)setCategoryLevel5TextStyle:(id)style;
- (void)setCellStyle:(id)style forTableStyleArea:(unint64_t)area;
- (void)setFooterRowCellStyle:(id)style;
- (void)setFooterRowTextStyle:(id)style;
- (void)setHeaderColumnCellStyle:(id)style;
- (void)setHeaderColumnTextStyle:(id)style;
- (void)setHeaderRowCellStyle:(id)style;
- (void)setHeaderRowTextStyle:(id)style;
- (void)setLabelLevel1CellStyle:(id)style;
- (void)setLabelLevel1TextStyle:(id)style;
- (void)setLabelLevel2CellStyle:(id)style;
- (void)setLabelLevel2TextStyle:(id)style;
- (void)setLabelLevel3CellStyle:(id)style;
- (void)setLabelLevel3TextStyle:(id)style;
- (void)setLabelLevel4CellStyle:(id)style;
- (void)setLabelLevel4TextStyle:(id)style;
- (void)setLabelLevel5CellStyle:(id)style;
- (void)setLabelLevel5TextStyle:(id)style;
- (void)setPivotBodySummaryColumnCellStyle:(id)style;
- (void)setPivotBodySummaryRowCellStyle:(id)style;
- (void)setPivotHeaderColumnSummaryCellStyle:(id)style;
- (void)setTableNameShapeStyle:(id)style;
- (void)setTableNameStyle:(id)style;
- (void)setTableStyle:(id)style;
- (void)setTextStyle:(id)style forTableStyleArea:(unint64_t)area;
- (void)upgradeIfNecessary;
@end

@implementation TSTTableStyleNetwork

- (void)setTableStyle:(id)style
{
  styleCopy = style;
  if (self->_tableStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableStyle, style);
  }
}

- (void)setTableNameStyle:(id)style
{
  styleCopy = style;
  if (self->_tableNameStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableNameStyle, style);
  }
}

- (void)setTableNameShapeStyle:(id)style
{
  styleCopy = style;
  if (self->_tableNameShapeStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableNameShapeStyle, style);
  }
}

- (void)setBodyCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 1) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 1, style);
  }
}

- (void)setHeaderColumnCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 3) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 3, style);
  }
}

- (void)setFooterRowCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 4) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 4, style);
  }
}

- (void)setHeaderRowCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 2) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 2, style);
  }
}

- (void)setCategoryLevel1CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 5) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 5, style);
  }
}

- (void)setCategoryLevel2CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 6) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 6, style);
  }
}

- (void)setCategoryLevel3CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 7) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 7, style);
  }
}

- (void)setCategoryLevel4CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 8) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 8, style);
  }
}

- (void)setCategoryLevel5CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 9) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 9, style);
  }
}

- (void)setLabelLevel1CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 10) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 10, style);
  }
}

- (void)setLabelLevel2CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 11) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 11, style);
  }
}

- (void)setLabelLevel3CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 12) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 12, style);
  }
}

- (void)setLabelLevel4CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 13) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 13, style);
  }
}

- (void)setLabelLevel5CellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 14) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 14, style);
  }
}

- (void)setBodyTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 1) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 1, style);
  }
}

- (void)setHeaderColumnTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 3) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 3, style);
  }
}

- (void)setFooterRowTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 4) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 4, style);
  }
}

- (void)setHeaderRowTextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 2) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 2, style);
  }
}

- (void)setCategoryLevel1TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 5) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 5, style);
  }
}

- (void)setCategoryLevel2TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 6) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 6, style);
  }
}

- (void)setCategoryLevel3TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 7) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 7, style);
  }
}

- (void)setCategoryLevel4TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 8) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 8, style);
  }
}

- (void)setCategoryLevel5TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 9) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 9, style);
  }
}

- (void)setLabelLevel1TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 10) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 10, style);
  }
}

- (void)setLabelLevel2TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 11) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 11, style);
  }
}

- (void)setLabelLevel3TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 12) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 12, style);
  }
}

- (void)setLabelLevel4TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 13) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 13, style);
  }
}

- (void)setLabelLevel5TextStyle:(id)style
{
  styleCopy = style;
  if (*(self->_textStyles.__begin_ + 14) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_textStyles.__begin_ + 14, style);
  }
}

- (void)setPivotBodySummaryRowCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 15) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 15, style);
  }
}

- (void)setPivotBodySummaryColumnCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 16) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 16, style);
  }
}

- (void)setPivotHeaderColumnSummaryCellStyle:(id)style
{
  styleCopy = style;
  if (*(self->_cellStyles.__begin_ + 17) != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(self->_cellStyles.__begin_ + 17, style);
  }
}

+ (id)networkFromStyleProvider:(id)provider
{
  providerCopy = provider;
  v4 = [TSTTableStyleNetwork alloc];
  v8 = objc_msgSend_context(providerCopy, v5, v6, v7);
  v10 = objc_msgSend_initWithContext_styleProvider_(v4, v9, v8, providerCopy);

  return v10;
}

+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  contextCopy = context;
  colorsCopy = colors;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_221220220;
  v29[3] = &unk_278461928;
  dCopy = d;
  v30 = colorsCopy;
  alternateCopy = alternate;
  v31 = contextCopy;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2212202B8;
  v26[3] = &unk_278461950;
  v27 = v31;
  v28 = 0x402E000000000000;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_221220360;
  v24[3] = &unk_278461978;
  v25 = v27;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22122039C;
  v19[3] = &unk_2784619A0;
  dCopy2 = d;
  alternateCopy2 = alternate;
  v20 = v30;
  v21 = v25;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22122043C;
  v16[3] = &unk_2784619C8;
  v17 = v21;
  v18 = 0x402E000000000000;
  v11 = v21;
  v12 = v30;
  v14 = objc_msgSend_networkWithContext_presetID_styleProvider_tableStyleMorphingBlock_nameStyleMorphingBlock_nameShapeStyleMorphingBlock_cellStyleMorphingBlockByStyleArea_textStyleMorphingBlockByStyleArea_(TSTTableStyleNetwork, v13, v11, d, 0, v29, v26, v24, v19, v16);

  return v14;
}

+ (id)createStylesInStylesheet:(id)stylesheet presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  stylesheetCopy = stylesheet;
  colorsCopy = colors;
  v67 = objc_msgSend_context(stylesheetCopy, v11, v12, v13);
  v70 = objc_alloc_init(MEMORY[0x277D80AB8]);
  objc_msgSend_initDefaultPropertyMap_presetID_colors_alternate_(TSTTableStyle, v14, v70, d, colorsCopy, alternate);
  v15 = [TSTTableStyle alloc];
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v15, v16, v67, 0, v70, 0);
  v19 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v17, d, v18);
  objc_msgSend_addStyle_withIdentifier_(stylesheetCopy, v20, isVariation, v19);

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v72 = sub_221220934;
  v73 = &unk_2784619F0;
  dCopy = d;
  v21 = colorsCopy;
  v74 = v21;
  alternateCopy = alternate;
  v22 = v67;
  v75 = v22;
  v23 = stylesheetCopy;
  v76 = v23;
  v79 = 0x402E000000000000;
  v80 = 0;
  v24 = 1;
  do
  {
    (v72)(v71, v24, &v80);
    if (v80)
    {
      break;
    }
  }

  while (v24++ != 17);
  v26 = objc_alloc(MEMORY[0x277D80EC8]);
  v30 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v27, v28, v29);
  v32 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v26, v31, v22, 0, v30, 0);

  v35 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D80EC8], v33, 16, v34);
  objc_msgSend_setValue_forProperty_(v32, v36, v35, 16);

  objc_msgSend_setCGFloatValue_forProperty_(v32, v37, 17, v38, 15.0);
  v41 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v39, d, v40);
  objc_msgSend_addStyle_withIdentifier_(v23, v42, v32, v41);

  v45 = objc_msgSend_defaultTableNameShapeStyleWithContext_(TSTTableStyleNetwork, v43, v22, v44);
  v48 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v46, d, v47);
  objc_msgSend_addStyle_withIdentifier_(v23, v49, v45, v48);

  v51 = objc_msgSend_networkFromStylesheet_presetID_(self, v50, v23, d);
  if ((objc_msgSend_valid(v51, v52, v53, v54) & 1) == 0)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "+[TSTTableStyleNetwork createStylesInStylesheet:presetID:colors:alternate:]", v56);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 297, 0, "Style network is missing styles. %{public}@", v51);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
  }

  return v51;
}

+ (id)networkFromStylesheet:(id)stylesheet presetID:(unint64_t)d
{
  stylesheetCopy = stylesheet;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_221221094;
  v82 = sub_2212210A4;
  v6 = [TSTTableStyleNetwork alloc];
  v10 = objc_msgSend_context(stylesheetCopy, v7, v8, v9);
  v83 = objc_msgSend_initWithContext_(v6, v11, v10, v12);

  v15 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v13, d, v14);
  v18 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v16, v15, v17);

  if (v18)
  {
    objc_msgSend_setTableStyle_(v79[5], v19, v18, v20);
    objc_opt_class();
    v23 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v21, d, v22);
    v26 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v24, v23, v25);
    v27 = TSUDynamicCast();

    if (!v27)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSTTableStyleNetwork networkFromStylesheet:presetID:]", v29);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 322, 0, "invalid nil value for '%{public}s'", "nameStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
    }

    objc_msgSend_setTableNameStyle_(v79[5], v28, v27, v29);
    objc_opt_class();
    v41 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v39, d, v40);
    v44 = objc_msgSend_cascadedStyleWithIdentifier_(stylesheetCopy, v42, v41, v43);
    v45 = TSUDynamicCast();

    if (!v45)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "+[TSTTableStyleNetwork networkFromStylesheet:presetID:]", v47);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 329, 0, "invalid nil value for '%{public}s'", "tableNameShapeStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
    }

    objc_msgSend_setTableNameShapeStyle_(v79[5], v46, v45, v47);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v73 = sub_2212210AC;
    v74 = &unk_278461A18;
    dCopy = d;
    v75 = stylesheetCopy;
    v76 = &v78;
    v84 = 0;
    v57 = 1;
    do
    {
      (v73)(v72, v57, &v84);
      if (v84)
      {
        break;
      }
    }

    while (v57++ != 17);
    objc_msgSend_setPresetID_(v79[5], v58, d, v59);
    v61 = v79[5];
  }

  else
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSTTableStyleNetwork networkFromStylesheet:presetID:]", v20);
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 310, 0, "no default table style in stylesheet %p", stylesheetCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
    v61 = 0;
  }

  _Block_object_dispose(&v78, 8);

  return v61;
}

+ (id)networkFromTheme:(id)theme presetID:(unint64_t)d
{
  v36 = *MEMORY[0x277D85DE8];
  themeCopy = theme;
  if (!themeCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyleNetwork networkFromTheme:presetID:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 363, 0, "invalid nil value for '%{public}s'", "theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_msgSend_presetsOfKind_(themeCopy, v5, *MEMORY[0x277D80BA8], v6);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v17 = v32 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v31, v35, 16);
  if (v22)
  {
    v23 = *v32;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_presetID(v25, v19, v20, v21) == d)
        {
          v22 = v25;
          goto LABEL_13;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v31, v35, 16);
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v29 = objc_msgSend_styleNetwork(v22, v26, v27, v28);

  return v29;
}

+ (id)networkFromTheme:(id)theme presetIndex:(unint64_t)index
{
  themeCopy = theme;
  if (!themeCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyleNetwork networkFromTheme:presetIndex:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 379, 0, "invalid nil value for '%{public}s'", "theme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_presetOfKind_index_(themeCopy, v5, *MEMORY[0x277D80BA8], index);
  v21 = objc_msgSend_styleNetwork(v17, v18, v19, v20);

  return v21;
}

+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0
{
  v10 = objc_msgSend_nonValidatedNetworkWithContext_presetID_styleProvider_tableStyleMorphingBlock_nameStyleMorphingBlock_nameShapeStyleMorphingBlock_cellStyleMorphingBlockByStyleArea_textStyleMorphingBlockByStyleArea_(TSTTableStyleNetwork, a2, context, d, provider, block, morphingBlock, styleMorphingBlock, area, styleArea);
  if ((objc_msgSend_valid(v10, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSTTableStyleNetwork networkWithContext:presetID:styleProvider:tableStyleMorphingBlock:nameStyleMorphingBlock:nameShapeStyleMorphingBlock:cellStyleMorphingBlockByStyleArea:textStyleMorphingBlockByStyleArea:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 404, 0, "All styles are not present and accounted for.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  return v10;
}

+ (id)nonValidatedNetworkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider tableStyleMorphingBlock:(id)block nameStyleMorphingBlock:(id)morphingBlock nameShapeStyleMorphingBlock:(id)styleMorphingBlock cellStyleMorphingBlockByStyleArea:(id)area textStyleMorphingBlockByStyleArea:(id)self0
{
  contextCopy = context;
  providerCopy = provider;
  blockCopy = block;
  morphingBlockCopy = morphingBlock;
  styleMorphingBlockCopy = styleMorphingBlock;
  areaCopy = area;
  v65 = contextCopy;
  styleAreaCopy = styleArea;
  v63 = blockCopy;
  v64 = providerCopy;
  v19 = [TSTTableStyleNetwork alloc];
  v21 = objc_msgSend_initWithContext_styleProvider_presetID_(v19, v20, contextCopy, providerCopy, d);
  objc_opt_class();
  v25 = objc_msgSend_tableStyle(v21, v22, v23, v24, v21, areaCopy);
  v28 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v26, d, v27);
  v29 = (*(blockCopy + 2))(blockCopy, v25, v28, 1);
  v30 = TSUCheckedDynamicCast();
  objc_msgSend_setTableStyle_(v21, v31, v30, v32);

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_221221DB4;
  v73[3] = &unk_278461A40;
  v33 = v21;
  v74 = v33;
  dCopy = d;
  v62 = areaCopy;
  v75 = v62;
  v34 = MEMORY[0x223DA1C10](v73);
  v34[2](v34, 1, 2);
  v34[2](v34, 2, 3);
  v34[2](v34, 3, 4);
  v34[2](v34, 4, 5);
  v34[2](v34, 5, 6);
  v34[2](v34, 6, 7);
  v34[2](v34, 7, 8);
  v34[2](v34, 8, 9);
  v34[2](v34, 9, 10);
  v34[2](v34, 10, 11);
  v34[2](v34, 11, 12);
  v34[2](v34, 12, 13);
  v34[2](v34, 13, 14);
  v34[2](v34, 14, 15);
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_221221ED4;
  v69[3] = &unk_278461A40;
  v35 = v33;
  v70 = v35;
  dCopy2 = d;
  v36 = styleAreaCopy;
  v71 = v36;
  v37 = MEMORY[0x223DA1C10](v69);
  v37[2](v37, 1, 16);
  v37[2](v37, 2, 17);
  v37[2](v37, 3, 18);
  v37[2](v37, 4, 19);
  v37[2](v37, 5, 20);
  v37[2](v37, 6, 21);
  v37[2](v37, 7, 22);
  v37[2](v37, 8, 23);
  v37[2](v37, 9, 24);
  v37[2](v37, 10, 25);
  v37[2](v37, 11, 26);
  v37[2](v37, 12, 27);
  v37[2](v37, 13, 28);
  v37[2](v37, 14, 29);
  objc_opt_class();
  v41 = objc_msgSend_tableNameStyle(v35, v38, v39, v40);
  v44 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v42, d, v43);
  v45 = morphingBlockCopy[2](morphingBlockCopy, v41, v44, 30);
  v46 = TSUCheckedDynamicCast();
  objc_msgSend_setTableNameStyle_(v35, v47, v46, v48);

  objc_opt_class();
  v52 = objc_msgSend_tableNameShapeStyle(v35, v49, v50, v51);
  v55 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v53, d, v54);
  v56 = styleMorphingBlockCopy[2](styleMorphingBlockCopy, v52, v55, 31);
  v57 = TSUCheckedDynamicCast();
  objc_msgSend_setTableNameShapeStyle_(v35, v58, v57, v59);

  v34[2](v34, 15, 32);
  v34[2](v34, 16, 33);
  v34[2](v34, 17, 34);
  v60 = v35;

  return v35;
}

+ (TSTTableStyleNetwork)networkWithContext:(id)context presetID:(unint64_t)d styleProvider:(id)provider styleMorphingBlock:(id)block
{
  contextCopy = context;
  providerCopy = provider;
  blockCopy = block;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221222128;
  v17[3] = &unk_278461A68;
  v12 = blockCopy;
  v18 = v12;
  v13 = MEMORY[0x223DA1C10](v17);
  v15 = objc_msgSend_networkWithContext_presetID_styleProvider_tableStyleMorphingBlock_nameStyleMorphingBlock_nameShapeStyleMorphingBlock_cellStyleMorphingBlockByStyleArea_textStyleMorphingBlockByStyleArea_(TSTTableStyleNetwork, v14, contextCopy, d, providerCopy, v12, v12, v12, v13, v13);

  return v15;
}

- (id)networkForPivotTables
{
  v5 = objc_msgSend_copy(self, a2, v2, v3);
  v8 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v6, 769, v7, 0, 0);
  v12 = objc_msgSend_tableStyle(v5, v9, v10, v11);
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_221221094;
  v56 = sub_2212210A4;
  v57 = 0;
  v16 = objc_msgSend_stylesheet(v12, v13, v14, v15);
  v20 = objc_msgSend_documentRoot(self, v17, v18, v19);
  v24 = objc_msgSend_stylesheet(v20, v21, v22, v23);

  if (v16 == v24)
  {
    v32 = objc_msgSend_documentRoot(self, v25, v26, v27);
    v28 = objc_msgSend_accessController(v32, v33, v34, v35);

    if (v28 && (objc_msgSend_hasWrite(v28, v36, v37, v38) & 1) == 0)
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_22122243C;
      v48[3] = &unk_278461A90;
      v51 = &v52;
      v49 = v12;
      v50 = v8;
      objc_msgSend_performWrite_(v28, v42, v48, v43);

      v31 = v49;
    }

    else
    {
      v31 = objc_msgSend_stylesheet(v12, v36, v37, v38);
      v40 = objc_msgSend_variationOfStyle_propertyMap_(v31, v39, v12, v8);
      v41 = v53[5];
      v53[5] = v40;
    }
  }

  else
  {
    v28 = objc_msgSend_stylesheet(v12, v25, v26, v27);
    v30 = objc_msgSend_variationOfStyle_propertyMap_(v28, v29, v12, v8);
    v31 = v53[5];
    v53[5] = v30;
  }

  objc_msgSend_setTableStyle_(v5, v44, v53[5], v45);
  v46 = v5;
  _Block_object_dispose(&v52, 8);

  return v46;
}

+ (id)defaultTableNameShapeStyleWithContext:(id)context
{
  v4 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80F18], a2, context, v3);
  objc_msgSend_setIntValue_forProperty_(v4, v5, 1, 149);
  v9 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v6, v7, v8);
  objc_msgSend_setValue_forProperty_(v4, v10, v9, 517);

  v14 = objc_msgSend_padding(MEMORY[0x277D80EB0], v11, v12, v13);
  objc_msgSend_setValue_forProperty_(v4, v15, v14, 146);

  return v4;
}

- (TSTTableStyleNetwork)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = TSTTableStyleNetwork;
  v5 = [(TSTTableStyleNetwork *)&v8 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    sub_221222660(&v5->_cellStyles.__begin_, 0x12uLL);
    sub_2212226E8(&v6->_textStyles.__begin_, 0x12uLL);
  }

  return v6;
}

- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v11 = objc_msgSend_tableStyle(providerCopy, v8, v9, v10);
  v15 = objc_msgSend_rootAncestor(v11, v12, v13, v14);
  v19 = objc_msgSend_styleIdentifier(v15, v16, v17, v18);
  v22 = objc_msgSend_presetIDForStyleID_(TSTTableStyle, v20, v19, v21);

  v24 = objc_msgSend_initWithContext_styleProvider_presetID_(self, v23, contextCopy, providerCopy, v22);
  return v24;
}

- (TSTTableStyleNetwork)initWithContext:(id)context styleProvider:(id)provider presetID:(unint64_t)d
{
  contextCopy = context;
  providerCopy = provider;
  v12 = objc_msgSend_initWithContext_(self, v10, contextCopy, v11);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_setPresetID_(v12, v13, d, v14);
    if (providerCopy)
    {
      v19 = objc_msgSend_context(providerCopy, v16, v17, v18);
      v23 = objc_msgSend_context(v15, v20, v21, v22);

      if (v19 != v23)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableStyleNetwork initWithContext:styleProvider:presetID:]", v26);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 562, 0, "Cannot set styles from a different context");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      }

      v36 = objc_msgSend_tableStyle(providerCopy, v24, v25, v26);
      tableStyle = v15->_tableStyle;
      v15->_tableStyle = v36;

      v41 = objc_msgSend_bodyCellStyle(providerCopy, v38, v39, v40);
      begin = v15->_cellStyles.__begin_;
      v43 = begin[1];
      begin[1] = v41;

      v47 = objc_msgSend_headerRowCellStyle(providerCopy, v44, v45, v46);
      v48 = v15->_cellStyles.__begin_;
      v49 = v48[2];
      v48[2] = v47;

      v53 = objc_msgSend_headerColumnCellStyle(providerCopy, v50, v51, v52);
      v54 = v15->_cellStyles.__begin_;
      v55 = v54[3];
      v54[3] = v53;

      v59 = objc_msgSend_footerRowCellStyle(providerCopy, v56, v57, v58);
      v60 = v15->_cellStyles.__begin_;
      v61 = v60[4];
      v60[4] = v59;

      v65 = objc_msgSend_categoryLevel1CellStyle(providerCopy, v62, v63, v64);
      v66 = v15->_cellStyles.__begin_;
      v67 = v66[5];
      v66[5] = v65;

      v71 = objc_msgSend_categoryLevel2CellStyle(providerCopy, v68, v69, v70);
      v72 = v15->_cellStyles.__begin_;
      v73 = v72[6];
      v72[6] = v71;

      v77 = objc_msgSend_categoryLevel3CellStyle(providerCopy, v74, v75, v76);
      v78 = v15->_cellStyles.__begin_;
      v79 = v78[7];
      v78[7] = v77;

      v83 = objc_msgSend_categoryLevel4CellStyle(providerCopy, v80, v81, v82);
      v84 = v15->_cellStyles.__begin_;
      v85 = v84[8];
      v84[8] = v83;

      v89 = objc_msgSend_categoryLevel5CellStyle(providerCopy, v86, v87, v88);
      v90 = v15->_cellStyles.__begin_;
      v91 = v90[9];
      v90[9] = v89;

      v95 = objc_msgSend_labelLevel1CellStyle(providerCopy, v92, v93, v94);
      v96 = v15->_cellStyles.__begin_;
      v97 = v96[10];
      v96[10] = v95;

      v101 = objc_msgSend_labelLevel2CellStyle(providerCopy, v98, v99, v100);
      v102 = v15->_cellStyles.__begin_;
      v103 = v102[11];
      v102[11] = v101;

      v107 = objc_msgSend_labelLevel3CellStyle(providerCopy, v104, v105, v106);
      v108 = v15->_cellStyles.__begin_;
      v109 = v108[12];
      v108[12] = v107;

      v113 = objc_msgSend_labelLevel4CellStyle(providerCopy, v110, v111, v112);
      v114 = v15->_cellStyles.__begin_;
      v115 = v114[13];
      v114[13] = v113;

      v119 = objc_msgSend_labelLevel5CellStyle(providerCopy, v116, v117, v118);
      v120 = v15->_cellStyles.__begin_;
      v121 = v120[14];
      v120[14] = v119;

      v125 = objc_msgSend_bodyTextStyle(providerCopy, v122, v123, v124);
      v126 = v15->_textStyles.__begin_;
      v127 = v126[1];
      v126[1] = v125;

      v131 = objc_msgSend_headerRowTextStyle(providerCopy, v128, v129, v130);
      v132 = v15->_textStyles.__begin_;
      v133 = v132[2];
      v132[2] = v131;

      v137 = objc_msgSend_headerColumnTextStyle(providerCopy, v134, v135, v136);
      v138 = v15->_textStyles.__begin_;
      v139 = v138[3];
      v138[3] = v137;

      v143 = objc_msgSend_footerRowTextStyle(providerCopy, v140, v141, v142);
      v144 = v15->_textStyles.__begin_;
      v145 = v144[4];
      v144[4] = v143;

      v149 = objc_msgSend_categoryLevel1TextStyle(providerCopy, v146, v147, v148);
      v150 = v15->_textStyles.__begin_;
      v151 = v150[5];
      v150[5] = v149;

      v155 = objc_msgSend_categoryLevel2TextStyle(providerCopy, v152, v153, v154);
      v156 = v15->_textStyles.__begin_;
      v157 = v156[6];
      v156[6] = v155;

      v161 = objc_msgSend_categoryLevel3TextStyle(providerCopy, v158, v159, v160);
      v162 = v15->_textStyles.__begin_;
      v163 = v162[7];
      v162[7] = v161;

      v167 = objc_msgSend_categoryLevel4TextStyle(providerCopy, v164, v165, v166);
      v168 = v15->_textStyles.__begin_;
      v169 = v168[8];
      v168[8] = v167;

      v173 = objc_msgSend_categoryLevel5TextStyle(providerCopy, v170, v171, v172);
      v174 = v15->_textStyles.__begin_;
      v175 = v174[9];
      v174[9] = v173;

      v179 = objc_msgSend_labelLevel1TextStyle(providerCopy, v176, v177, v178);
      v180 = v15->_textStyles.__begin_;
      v181 = v180[10];
      v180[10] = v179;

      v185 = objc_msgSend_labelLevel2TextStyle(providerCopy, v182, v183, v184);
      v186 = v15->_textStyles.__begin_;
      v187 = v186[11];
      v186[11] = v185;

      v191 = objc_msgSend_labelLevel3TextStyle(providerCopy, v188, v189, v190);
      v192 = v15->_textStyles.__begin_;
      v193 = v192[12];
      v192[12] = v191;

      v197 = objc_msgSend_labelLevel4TextStyle(providerCopy, v194, v195, v196);
      v198 = v15->_textStyles.__begin_;
      v199 = v198[13];
      v198[13] = v197;

      v203 = objc_msgSend_labelLevel5TextStyle(providerCopy, v200, v201, v202);
      v204 = v15->_textStyles.__begin_;
      v205 = v204[14];
      v204[14] = v203;

      v209 = objc_msgSend_tableNameStyle(providerCopy, v206, v207, v208);
      tableNameStyle = v15->_tableNameStyle;
      v15->_tableNameStyle = v209;

      v214 = objc_msgSend_tableNameShapeStyle(providerCopy, v211, v212, v213);
      tableNameShapeStyle = v15->_tableNameShapeStyle;
      v15->_tableNameShapeStyle = v214;

      v219 = objc_msgSend_pivotBodySummaryRowCellStyle(providerCopy, v216, v217, v218);
      v220 = v15->_cellStyles.__begin_;
      v221 = v220[15];
      v220[15] = v219;

      v225 = objc_msgSend_pivotBodySummaryColumnCellStyle(providerCopy, v222, v223, v224);
      v226 = v15->_cellStyles.__begin_;
      v227 = v226[16];
      v226[16] = v225;

      v231 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(providerCopy, v228, v229, v230);
      v232 = v15->_cellStyles.__begin_;
      v233 = v232[17];
      v232[17] = v231;
    }
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone context:(id)context
{
  contextCopy = context;
  v7 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v7, v8, zone, v9);
  v13 = objc_msgSend_initWithContext_(v10, v11, contextCopy, v12);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong((v13 + 72), self->_tableStyle);
    objc_storeStrong(&v14->_tableNameStyle, self->_tableNameStyle);
    objc_storeStrong(&v14->_tableNameShapeStyle, self->_tableNameShapeStyle);
    if (v14 != self)
    {
      sub_22116CF34(&v14->_cellStyles, self->_cellStyles.__begin_, self->_cellStyles.var0, self->_cellStyles.var0 - self->_cellStyles.__begin_);
      sub_22116CF34(&v14->_textStyles, self->_textStyles.__begin_, self->_textStyles.var0, self->_textStyles.var0 - self->_textStyles.__begin_);
    }

    v18 = objc_msgSend_presetID(self, v15, v16, v17);
    objc_msgSend_setPresetID_(v14, v19, v18, v20);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_msgSend_context(self, a2, zone, v3);
  v8 = objc_msgSend_copyWithZone_context_(self, v7, zone, v6);

  return v8;
}

- (id)copy
{
  v5 = objc_msgSend_context(self, a2, v2, v3);
  v7 = objc_msgSend_copyWithZone_context_(self, v6, 0, v5);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (!v8)
    {
      v53 = 0;
      goto LABEL_48;
    }

    v9 = objc_msgSend_presetID(self, v5, v6, v7);
    if (v9 == objc_msgSend_presetID(v8, v10, v11, v12))
    {
      v16 = objc_msgSend_tableStyle(self, v13, v14, v15);
      v23 = objc_msgSend_tableStyle(v8, v17, v18, v19);
      if (v16 == v23)
      {
        v24 = objc_msgSend_tableNameStyle(self, v20, v21, v22);
        v31 = objc_msgSend_tableNameStyle(v8, v25, v26, v27);
        if (v24 == v31)
        {
          v140 = v8;
          v32 = objc_msgSend_tableNameShapeStyle(self, v28, v29, v30);
          v39 = objc_msgSend_tableNameShapeStyle(v8, v33, v34, v35);
          if (v32 == v39)
          {
            v40 = objc_msgSend_cellStyles(self, v36, v37, v38);
            v44 = objc_msgSend_cellStyles(v140, v41, v42, v43);
            if (sub_2212236D4(v40, v44))
            {
              v48 = objc_msgSend_textStyles(self, v45, v46, v47);
              v52 = objc_msgSend_textStyles(v140, v49, v50, v51);
              LOBYTE(v48) = sub_2212236D4(v48, v52);

              v8 = v140;
              if (v48)
              {
                v53 = 1;
LABEL_48:

                goto LABEL_49;
              }

              goto LABEL_15;
            }
          }

          v8 = v140;
        }
      }
    }

LABEL_15:
    v54 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v13, 768, v15, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 788, 789, 791, 793, 795, 796, 797, 0);
    tableStyle = self->_tableStyle;
    v59 = objc_msgSend_tableStyle(v8, v56, v57, v58);
    LOBYTE(tableStyle) = objc_msgSend_hasEqualValues_forProperties_(tableStyle, v60, v59, v54);

    if (tableStyle)
    {
      v141 = v8;
      v138 = equalCopy;
      v139 = v54;
      v67 = objc_msgSend_cellStyles(v8, v61, v62, v63);
      p_cellStyles = &self->_cellStyles;
      begin = self->_cellStyles.__begin_;
      var0 = self->_cellStyles.var0;
      v71 = var0 - begin;
      if (var0 - begin != v67[1] - *v67)
      {
        v72 = MEMORY[0x277D81150];
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTTableStyleNetwork isEqual:]", v66);
        v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v75);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v77, v73, v76, 692, 0, "Cell style array length mismatch");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80);
        begin = p_cellStyles->__begin_;
        var0 = self->_cellStyles.var0;
        v71 = var0 - p_cellStyles->__begin_;
      }

      if (var0 != begin)
      {
        v81 = 0;
        if ((v71 >> 3) <= 1)
        {
          v82 = 1;
        }

        else
        {
          v82 = v71 >> 3;
        }

        do
        {
          v83 = p_cellStyles->__begin_[v81];
          v87 = *(*v67 + 8 * v81);
          if ((v83 == 0) == (v87 != 0))
          {
            v88 = MEMORY[0x277D81150];
            v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "[TSTTableStyleNetwork isEqual:]", v86);
            v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v91);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v93, v89, v92, 696, 0, "Cell style array element nillity mismatch at position %zu", v81);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96);
          }

          if (v83)
          {
            v97 = objc_msgSend_overridePropertyMap(v87, v84, v85, v86);
            IsEqualTo = objc_msgSend_overridePropertyMapIsEqualTo_(v83, v98, v97, v99);

            if (!IsEqualTo)
            {
LABEL_44:
              v53 = 0;
              goto LABEL_45;
            }
          }

          else
          {
          }

          ++v81;
        }

        while (v82 != v81);
      }

      v8 = v141;
      v54 = v139;
      v103 = objc_msgSend_textStyles(v141, v64, v65, v66);
      p_textStyles = &self->_textStyles;
      v106 = self->_textStyles.__begin_;
      v105 = self->_textStyles.var0;
      v107 = v105 - v106;
      if (v105 - v106 != v103[1] - *v103)
      {
        v108 = MEMORY[0x277D81150];
        v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSTTableStyleNetwork isEqual:]", v102);
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v111);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v113, v109, v112, 703, 0, "Text style array length mismatch");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116);
        v106 = p_textStyles->__begin_;
        v105 = self->_textStyles.var0;
        v107 = v105 - p_textStyles->__begin_;
      }

      if (v105 == v106)
      {
        v53 = 1;
        equalCopy = v138;
      }

      else
      {
        v117 = 0;
        if ((v107 >> 3) <= 1)
        {
          v118 = 1;
        }

        else
        {
          v118 = v107 >> 3;
        }

        do
        {
          v119 = p_textStyles->__begin_[v117];
          v123 = *(*v103 + 8 * v117);
          if ((v119 == 0) == (v123 != 0))
          {
            v124 = MEMORY[0x277D81150];
            v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "[TSTTableStyleNetwork isEqual:]", v122);
            v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v127);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v129, v125, v128, 707, 0, "Text style array element nillity mismatch at position %zu", v117);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132);
          }

          if (v119)
          {
            v133 = objc_msgSend_overridePropertyMap(v123, v120, v121, v122);
            v136 = objc_msgSend_overridePropertyMapIsEqualTo_(v119, v134, v133, v135);

            if (!v136)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          ++v117;
        }

        while (v118 != v117);
        v53 = 1;
LABEL_45:
        equalCopy = v138;
        v54 = v139;
        v8 = v141;
      }
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_48;
  }

  v53 = 1;
LABEL_49:

  return v53;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);
  v12 = objc_msgSend_presetID(self, v9, v10, v11);

  return v12 + v8;
}

+ (id)curatedTableStylePropertySetForCrossDocumentPasteMasterComparison
{
  if (qword_27CFB52C8 != -1)
  {
    sub_2216F7498();
  }

  v3 = qword_27CFB52D0;

  return v3;
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison objectComparisonBlock:(id)block
{
  comparisonCopy = comparison;
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2212239D0;
  v13[3] = &unk_278461AB8;
  v15 = blockCopy;
  v16 = &v17;
  v14 = comparisonCopy;
  v8 = blockCopy;
  v9 = comparisonCopy;
  objc_msgSend_enumerateAllStylesWithBlock_(self, v10, v13, v11);
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

+ (id)identifiersForPresetID:(unint64_t)d
{
  v79[34] = *MEMORY[0x277D85DE8];
  v4 = qword_27CFB52D8;
  if (!qword_27CFB52D8)
  {
    v79[0] = objc_msgSend_styleIDForPreset_(TSTTableStyle, a2, d, v3);
    v78 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v6, d, 2);
    v79[1] = v78;
    v77 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v7, d, 3);
    v79[2] = v77;
    v76 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v8, d, 4);
    v79[3] = v76;
    v75 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v9, d, 1);
    v79[4] = v75;
    v74 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v10, d, 5);
    v79[5] = v74;
    v73 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v11, d, 6);
    v79[6] = v73;
    v72 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v12, d, 7);
    v79[7] = v72;
    v71 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v13, d, 8);
    v79[8] = v71;
    v70 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v14, d, 9);
    v79[9] = v70;
    v69 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v15, d, 10);
    v79[10] = v69;
    v68 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v16, d, 11);
    v79[11] = v68;
    v67 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v17, d, 12);
    v79[12] = v67;
    v66 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v18, d, 13);
    v79[13] = v66;
    v65 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v19, d, 14);
    v79[14] = v65;
    v64 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v20, d, 2);
    v79[15] = v64;
    v63 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v21, d, 3);
    v79[16] = v63;
    v62 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v22, d, 4);
    v79[17] = v62;
    v61 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v23, d, 1);
    v79[18] = v61;
    v60 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v24, d, 5);
    v79[19] = v60;
    v59 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v25, d, 6);
    v79[20] = v59;
    v58 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v26, d, 7);
    v79[21] = v58;
    v57 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v27, d, 8);
    v79[22] = v57;
    v56 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v28, d, 9);
    v79[23] = v56;
    v55 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v29, d, 10);
    v79[24] = v55;
    v31 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v30, d, 11);
    v79[25] = v31;
    v33 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v32, d, 12);
    v79[26] = v33;
    v35 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v34, d, 13);
    v79[27] = v35;
    v37 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v36, d, 14);
    v79[28] = v37;
    v40 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v38, d, v39);
    v79[29] = v40;
    v43 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v41, d, v42);
    v79[30] = v43;
    v45 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v44, d, 15);
    v79[31] = v45;
    v47 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v46, d, 16);
    v79[32] = v47;
    v49 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v48, d, 17);
    v79[33] = v49;
    v50 = v79[0];
    v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v79, 34);
    v53 = qword_27CFB52D8;
    qword_27CFB52D8 = v52;

    v4 = qword_27CFB52D8;
  }

  return v4;
}

- (BOOL)stylesInStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v8 = objc_msgSend_context(self, v5, v6, v7);
  v12 = objc_msgSend_context(stylesheetCopy, v9, v10, v11);

  if (v8 == v12)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221224358;
    v17[3] = &unk_278461AE0;
    v18 = stylesheetCopy;
    v19 = &v20;
    objc_msgSend_enumerateAllStylesWithBlock_(self, v14, v17, v15);
    v13 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (id)textStyleForTableStyleArea:(unint64_t)area
{
  if (area - 15 >= 2)
  {
    if (area == 17)
    {
      v3 = self->_textStyles.__begin_ + 3;
    }

    else
    {
      v3 = &self->_textStyles.__begin_[area];
    }
  }

  else
  {
    v3 = self->_textStyles.__begin_ + 1;
  }

  return *v3;
}

- (void)setCellStyle:(id)style forTableStyleArea:(unint64_t)area
{
  styleCopy = style;
  objc_msgSend_willModify(self, v7, v8, v9);
  begin = self->_cellStyles.__begin_;
  v11 = begin[area];
  begin[area] = styleCopy;
}

- (void)setTextStyle:(id)style forTableStyleArea:(unint64_t)area
{
  styleCopy = style;
  objc_msgSend_willModify(self, v7, v8, v9);
  if (area - 15 >= 3)
  {
    objc_storeStrong(&self->_textStyles.__begin_[area], style);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableStyleNetwork setTextStyle:forTableStyleArea:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyleNetwork.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 857, 0, "Pivot areas use the equivalent default area textStyle. Don't try to set it.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }
}

- (id)styleForStyleNetworkIndex:(unint64_t)index
{
  switch(index)
  {
    case 1uLL:
      v4 = 72;
      goto LABEL_48;
    case 2uLL:
      v14 = 96;
      goto LABEL_20;
    case 3uLL:
      v6 = 96;
      goto LABEL_15;
    case 4uLL:
      v15 = 96;
      goto LABEL_23;
    case 5uLL:
      v10 = 96;
      goto LABEL_33;
    case 6uLL:
      v18 = 96;
      goto LABEL_42;
    case 7uLL:
      v17 = 96;
      goto LABEL_31;
    case 8uLL:
      v16 = 96;
      goto LABEL_27;
    case 9uLL:
      v19 = 96;
      goto LABEL_40;
    case 0xAuLL:
      v12 = 96;
      goto LABEL_44;
    case 0xBuLL:
      v13 = 96;
      goto LABEL_35;
    case 0xCuLL:
      v9 = 96;
      goto LABEL_12;
    case 0xDuLL:
      v11 = 96;
      goto LABEL_50;
    case 0xEuLL:
      v5 = 96;
      goto LABEL_29;
    case 0xFuLL:
      v7 = 96;
      goto LABEL_46;
    case 0x10uLL:
      v14 = 120;
LABEL_20:
      v8 = (*(&self->super.super.isa + v14) + 8);
      goto LABEL_51;
    case 0x11uLL:
      v6 = 120;
LABEL_15:
      v8 = (*(&self->super.super.isa + v6) + 16);
      goto LABEL_51;
    case 0x12uLL:
      v15 = 120;
LABEL_23:
      v8 = (*(&self->super.super.isa + v15) + 24);
      goto LABEL_51;
    case 0x13uLL:
      v10 = 120;
LABEL_33:
      v8 = (*(&self->super.super.isa + v10) + 32);
      goto LABEL_51;
    case 0x14uLL:
      v18 = 120;
LABEL_42:
      v8 = (*(&self->super.super.isa + v18) + 40);
      goto LABEL_51;
    case 0x15uLL:
      v17 = 120;
LABEL_31:
      v8 = (*(&self->super.super.isa + v17) + 48);
      goto LABEL_51;
    case 0x16uLL:
      v16 = 120;
LABEL_27:
      v8 = (*(&self->super.super.isa + v16) + 56);
      goto LABEL_51;
    case 0x17uLL:
      v19 = 120;
LABEL_40:
      v8 = (*(&self->super.super.isa + v19) + 64);
      goto LABEL_51;
    case 0x18uLL:
      v12 = 120;
LABEL_44:
      v8 = (*(&self->super.super.isa + v12) + 72);
      goto LABEL_51;
    case 0x19uLL:
      v13 = 120;
LABEL_35:
      v8 = (*(&self->super.super.isa + v13) + 80);
      goto LABEL_51;
    case 0x1AuLL:
      v9 = 120;
LABEL_12:
      v8 = (*(&self->super.super.isa + v9) + 88);
      goto LABEL_51;
    case 0x1BuLL:
      v11 = 120;
LABEL_50:
      v8 = (*(&self->super.super.isa + v11) + 96);
      goto LABEL_51;
    case 0x1CuLL:
      v5 = 120;
LABEL_29:
      v8 = (*(&self->super.super.isa + v5) + 104);
      goto LABEL_51;
    case 0x1DuLL:
      v7 = 120;
LABEL_46:
      v8 = (*(&self->super.super.isa + v7) + 112);
      goto LABEL_51;
    case 0x1EuLL:
      v4 = 80;
      goto LABEL_48;
    case 0x1FuLL:
      v4 = 88;
LABEL_48:
      v8 = (&self->super.super.isa + v4);
      goto LABEL_51;
    case 0x20uLL:
      v8 = self->_cellStyles.__begin_ + 15;
      goto LABEL_51;
    case 0x21uLL:
      v8 = self->_cellStyles.__begin_ + 16;
      goto LABEL_51;
    case 0x22uLL:
      v8 = self->_cellStyles.__begin_ + 17;
LABEL_51:
      v20 = *v8;

      break;
    default:
      v20 = 0;

      break;
  }

  return v20;
}

- (void)enumerateAllStylesWithBlock:(id)block
{
  blockCopy = block;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  tableStyle = self->_tableStyle;
  v9 = objc_msgSend_presetID(self, v6, v7, v8);
  v12 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v10, v9, v11);
  v13 = (blockCopy + 16);
  (*(blockCopy + 2))(blockCopy, tableStyle, v12, 1, v47 + 3);

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_221224FE8;
  v43[3] = &unk_278461B08;
  v14 = blockCopy;
  v43[4] = self;
  v44 = v14;
  v45 = &v46;
  v15 = MEMORY[0x223DA1C10](v43);
  v16 = v15;
  if ((v47[3] & 1) == 0)
  {
    (*(v15 + 16))(v15, 1, 2);
    if ((v47[3] & 1) == 0)
    {
      v16[2](v16, 2, 3);
      if ((v47[3] & 1) == 0)
      {
        v16[2](v16, 3, 4);
        if ((v47[3] & 1) == 0)
        {
          v16[2](v16, 4, 5);
          if ((v47[3] & 1) == 0)
          {
            v16[2](v16, 5, 6);
            if ((v47[3] & 1) == 0)
            {
              v16[2](v16, 6, 7);
              if ((v47[3] & 1) == 0)
              {
                v16[2](v16, 7, 8);
                if ((v47[3] & 1) == 0)
                {
                  v16[2](v16, 8, 9);
                  if ((v47[3] & 1) == 0)
                  {
                    v16[2](v16, 9, 10);
                    if ((v47[3] & 1) == 0)
                    {
                      v16[2](v16, 10, 11);
                      if ((v47[3] & 1) == 0)
                      {
                        v16[2](v16, 11, 12);
                        if ((v47[3] & 1) == 0)
                        {
                          v16[2](v16, 12, 13);
                          if ((v47[3] & 1) == 0)
                          {
                            v16[2](v16, 13, 14);
                            if ((v47[3] & 1) == 0)
                            {
                              v16[2](v16, 14, 15);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = sub_2212250B0;
  v39 = &unk_278461B08;
  v17 = v14;
  selfCopy = self;
  v41 = v17;
  v42 = &v46;
  v18 = MEMORY[0x223DA1C10](&v36);
  v19 = v18;
  if ((v47[3] & 1) == 0)
  {
    (*(v18 + 16))(v18, 1, 16);
    if ((v47[3] & 1) == 0)
    {
      v19[2](v19, 2, 17);
      if ((v47[3] & 1) == 0)
      {
        v19[2](v19, 3, 18);
        if ((v47[3] & 1) == 0)
        {
          v19[2](v19, 4, 19);
          if ((v47[3] & 1) == 0)
          {
            v19[2](v19, 5, 20);
            if ((v47[3] & 1) == 0)
            {
              v19[2](v19, 6, 21);
              if ((v47[3] & 1) == 0)
              {
                v19[2](v19, 7, 22);
                if ((v47[3] & 1) == 0)
                {
                  v19[2](v19, 8, 23);
                  if ((v47[3] & 1) == 0)
                  {
                    v19[2](v19, 9, 24);
                    if ((v47[3] & 1) == 0)
                    {
                      v19[2](v19, 10, 25);
                      if ((v47[3] & 1) == 0)
                      {
                        v19[2](v19, 11, 26);
                        if ((v47[3] & 1) == 0)
                        {
                          v19[2](v19, 12, 27);
                          if ((v47[3] & 1) == 0)
                          {
                            v19[2](v19, 13, 28);
                            if ((v47[3] & 1) == 0)
                            {
                              v19[2](v19, 14, 29);
                              if ((v47[3] & 1) == 0)
                              {
                                tableNameStyle = self->_tableNameStyle;
                                v24 = objc_msgSend_presetID(self, v20, v21, v22, v36, v37, v38, v39);
                                v27 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v25, v24, v26);
                                (*v13)(v17, tableNameStyle, v27, 30, (v47 + 3));

                                if ((v47[3] & 1) == 0)
                                {
                                  tableNameShapeStyle = self->_tableNameShapeStyle;
                                  v32 = objc_msgSend_presetID(self, v28, v29, v30);
                                  v35 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v33, v32, v34);
                                  (*v13)(v17, tableNameShapeStyle, v35, 31, (v47 + 3));

                                  if ((v47[3] & 1) == 0)
                                  {
                                    v16[2](v16, 15, 32);
                                    if ((v47[3] & 1) == 0)
                                    {
                                      v16[2](v16, 16, 33);
                                      if ((v47[3] & 1) == 0)
                                      {
                                        v16[2](v16, 17, 34);
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_object_dispose(&v46, 8);
}

- (id)dictionaryWithPreset:(unint64_t)preset
{
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, preset, v3);
  tableStyle = self->_tableStyle;
  if (tableStyle)
  {
    v10 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v6, preset, v7);
    objc_msgSend_setObject_forKey_(v8, v11, tableStyle, v10);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2212255B4;
  v33[3] = &unk_278461B30;
  v33[4] = self;
  v12 = v8;
  v34 = v12;
  presetCopy = preset;
  v13 = MEMORY[0x223DA1C10](v33);
  v13[2](v13, 1);
  v13[2](v13, 2);
  v13[2](v13, 3);
  v13[2](v13, 4);
  v13[2](v13, 5);
  v13[2](v13, 6);
  v13[2](v13, 7);
  v13[2](v13, 8);
  v13[2](v13, 9);
  v13[2](v13, 10);
  v13[2](v13, 11);
  v13[2](v13, 12);
  v13[2](v13, 13);
  v13[2](v13, 14);
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = sub_221225658;
  v29 = &unk_278461B30;
  selfCopy = self;
  v14 = v12;
  v31 = v14;
  presetCopy2 = preset;
  v15 = MEMORY[0x223DA1C10](&v26);
  v15[2](v15, 1);
  v15[2](v15, 2);
  v15[2](v15, 3);
  v15[2](v15, 4);
  v15[2](v15, 5);
  v15[2](v15, 6);
  v15[2](v15, 7);
  v15[2](v15, 8);
  v15[2](v15, 9);
  v15[2](v15, 10);
  v15[2](v15, 11);
  v15[2](v15, 12);
  v15[2](v15, 13);
  v15[2](v15, 14);
  tableNameStyle = self->_tableNameStyle;
  if (tableNameStyle)
  {
    v19 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v16, preset, v17, v26, v27, v28, v29, selfCopy);
    objc_msgSend_setObject_forKey_(v14, v20, tableNameStyle, v19);
  }

  tableNameShapeStyle = self->_tableNameShapeStyle;
  if (tableNameShapeStyle)
  {
    v22 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v16, preset, v17);
    objc_msgSend_setObject_forKey_(v14, v23, tableNameShapeStyle, v22);
  }

  v13[2](v13, 15);
  v13[2](v13, 16);
  v13[2](v13, 17);
  v24 = v14;

  return v14;
}

- (TSTTableStyleNetwork)initWithContext:(id)context fromDictionary:(id)dictionary withPreset:(unint64_t)preset
{
  contextCopy = context;
  dictionaryCopy = dictionary;
  v12 = objc_msgSend_initWithContext_(self, v10, contextCopy, v11);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_setPresetID_(v12, v13, preset, v14);
    v18 = objc_msgSend_styleIDForPreset_(TSTTableStyle, v16, preset, v17);
    v21 = objc_msgSend_objectForKey_(dictionaryCopy, v19, v18, v20);
    tableStyle = v15->_tableStyle;
    v15->_tableStyle = v21;

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_221225D04;
    v48[3] = &unk_278461B30;
    v23 = v15;
    v49 = v23;
    v24 = dictionaryCopy;
    v50 = v24;
    presetCopy = preset;
    v25 = MEMORY[0x223DA1C10](v48);
    v25[2](v25, 1);
    v25[2](v25, 2);
    v25[2](v25, 3);
    v25[2](v25, 4);
    v25[2](v25, 5);
    v25[2](v25, 6);
    v25[2](v25, 7);
    v25[2](v25, 8);
    v25[2](v25, 9);
    v25[2](v25, 10);
    v25[2](v25, 11);
    v25[2](v25, 12);
    v25[2](v25, 13);
    v25[2](v25, 14);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_221225DA8;
    v44[3] = &unk_278461B30;
    v26 = v23;
    v45 = v26;
    v27 = v24;
    v46 = v27;
    presetCopy2 = preset;
    v28 = MEMORY[0x223DA1C10](v44);
    v28[2](v28, 1);
    v28[2](v28, 2);
    v28[2](v28, 3);
    v28[2](v28, 4);
    v28[2](v28, 5);
    v28[2](v28, 6);
    v28[2](v28, 7);
    v28[2](v28, 8);
    v28[2](v28, 9);
    v28[2](v28, 10);
    v28[2](v28, 11);
    v28[2](v28, 12);
    v28[2](v28, 13);
    v28[2](v28, 14);
    v31 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v29, preset, v30);
    v34 = objc_msgSend_objectForKey_(v27, v32, v31, v33);
    tableNameStyle = v26->_tableNameStyle;
    v26->_tableNameStyle = v34;

    v38 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v36, preset, v37);
    v41 = objc_msgSend_objectForKey_(v27, v39, v38, v40);
    tableNameShapeStyle = v26->_tableNameShapeStyle;
    v26->_tableNameShapeStyle = v41;

    v25[2](v25, 15);
    v25[2](v25, 16);
    v25[2](v25, 17);
  }

  return v15;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[60], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 12);
  v183[0] = MEMORY[0x277D85DD0];
  v183[1] = 3221225472;
  v183[2] = sub_221226FEC;
  v183[3] = &unk_27845DF28;
  v183[4] = self;
  v8 = unarchiverCopy;
  v10 = objc_opt_class();
  v11 = MEMORY[0x277D80A18];
  if (v7)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v9, v7, v10, 0, v183);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v9, MEMORY[0x277D80A18], v10, 0, v183);
  }

  sub_221222660(&self->_cellStyles.__begin_, 0x12uLL);
  v12 = *(archive + 8);
  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = sub_2212270F0;
  v182[3] = &unk_27845DF50;
  v182[4] = self;
  v13 = v8;
  v15 = objc_opt_class();
  if (v12)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v14, v12, v15, 0, v182);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v14, v11, v15, 0, v182);
  }

  v16 = *(archive + 9);
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = sub_221227108;
  v181[3] = &unk_27845DF50;
  v181[4] = self;
  v17 = v13;
  v19 = objc_opt_class();
  if (v16)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v16, v19, 0, v181);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v11, v19, 0, v181);
  }

  v20 = *(archive + 10);
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = sub_221227120;
  v180[3] = &unk_27845DF50;
  v180[4] = self;
  v21 = v17;
  v23 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v20, v23, 0, v180);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v22, v11, v23, 0, v180);
  }

  v24 = *(archive + 11);
  v179[0] = MEMORY[0x277D85DD0];
  v179[1] = 3221225472;
  v179[2] = sub_221227138;
  v179[3] = &unk_27845DF50;
  v179[4] = self;
  v25 = v21;
  v27 = objc_opt_class();
  if (v24)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v26, v24, v27, 0, v179);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v26, v11, v27, 0, v179);
  }

  v28 = *(archive + 4);
  if ((v28 & 0x10000) != 0)
  {
    v29 = *(archive + 20);
    v178[0] = MEMORY[0x277D85DD0];
    v178[1] = 3221225472;
    v178[2] = sub_221227150;
    v178[3] = &unk_27845DF50;
    v178[4] = self;
    v30 = v25;
    v31 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v30, v32, v29, v31, 0, v178);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x20000) != 0)
  {
    v33 = *(archive + 21);
    v177[0] = MEMORY[0x277D85DD0];
    v177[1] = 3221225472;
    v177[2] = sub_221227168;
    v177[3] = &unk_27845DF50;
    v177[4] = self;
    v34 = v25;
    v35 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v34, v36, v33, v35, 0, v177);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x40000) != 0)
  {
    v37 = *(archive + 22);
    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = sub_221227180;
    v176[3] = &unk_27845DF50;
    v176[4] = self;
    v38 = v25;
    v39 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v40, v37, v39, 0, v176);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x80000) != 0)
  {
    v41 = *(archive + 23);
    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = sub_221227198;
    v175[3] = &unk_27845DF50;
    v175[4] = self;
    v42 = v25;
    v43 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v41, v43, 0, v175);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x100000) != 0)
  {
    v45 = *(archive + 24);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = sub_2212271B0;
    v174[3] = &unk_27845DF50;
    v174[4] = self;
    v46 = v25;
    v47 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v46, v48, v45, v47, 0, v174);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x4000000) != 0)
  {
    v49 = *(archive + 30);
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = sub_2212271C8;
    v173[3] = &unk_27845DF50;
    v173[4] = self;
    v50 = v25;
    v51 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v50, v52, v49, v51, 0, v173);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x8000000) != 0)
  {
    v53 = *(archive + 31);
    v172[0] = MEMORY[0x277D85DD0];
    v172[1] = 3221225472;
    v172[2] = sub_2212271E0;
    v172[3] = &unk_27845DF50;
    v172[4] = self;
    v54 = v25;
    v55 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v54, v56, v53, v55, 0, v172);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x10000000) != 0)
  {
    v57 = *(archive + 32);
    v171[0] = MEMORY[0x277D85DD0];
    v171[1] = 3221225472;
    v171[2] = sub_2212271F8;
    v171[3] = &unk_27845DF50;
    v171[4] = self;
    v58 = v25;
    v59 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v58, v60, v57, v59, 0, v171);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x20000000) != 0)
  {
    v61 = *(archive + 33);
    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = sub_221227210;
    v170[3] = &unk_27845DF50;
    v170[4] = self;
    v62 = v25;
    v63 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v62, v64, v61, v63, 0, v170);

    v28 = *(archive + 4);
  }

  if ((v28 & 0x40000000) != 0)
  {
    v65 = *(archive + 34);
    v169[0] = MEMORY[0x277D85DD0];
    v169[1] = 3221225472;
    v169[2] = sub_221227228;
    v169[3] = &unk_27845DF50;
    v169[4] = self;
    v66 = v25;
    v67 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v66, v68, v65, v67, 0, v169);
  }

  sub_2212226E8(&self->_textStyles.__begin_, 0x12uLL);
  v69 = *(archive + 4);
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = sub_221227240;
  v168[3] = &unk_27845DF78;
  v168[4] = self;
  v70 = v25;
  v72 = objc_opt_class();
  if (v69)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v71, v69, v72, 0, v168);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v71, v11, v72, 0, v168);
  }

  v73 = *(archive + 5);
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = sub_221227258;
  v167[3] = &unk_27845DF78;
  v167[4] = self;
  v74 = v70;
  v76 = objc_opt_class();
  if (v73)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v74, v75, v73, v76, 0, v167);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v74, v75, v11, v76, 0, v167);
  }

  v77 = *(archive + 6);
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = sub_221227270;
  v166[3] = &unk_27845DF78;
  v166[4] = self;
  v78 = v74;
  v80 = objc_opt_class();
  if (v77)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v78, v79, v77, v80, 0, v166);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v78, v79, v11, v80, 0, v166);
  }

  v81 = *(archive + 7);
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = sub_221227288;
  v165[3] = &unk_27845DF78;
  v165[4] = self;
  v82 = v78;
  v84 = objc_opt_class();
  if (v81)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v82, v83, v81, v84, 0, v165);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v82, v83, v11, v84, 0, v165);
  }

  v87 = *(archive + 4);
  if ((v87 & 0x800) != 0)
  {
    v88 = *(archive + 15);
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = sub_2212272A0;
    v164[3] = &unk_27845DF78;
    v164[4] = self;
    v89 = v82;
    v90 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v89, v91, v88, v90, 0, v164);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x1000) != 0)
  {
    v92 = *(archive + 16);
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_2212272B8;
    v163[3] = &unk_27845DF78;
    v163[4] = self;
    v93 = v82;
    v94 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v93, v95, v92, v94, 0, v163);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x2000) != 0)
  {
    v96 = *(archive + 17);
    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_2212272D0;
    v162[3] = &unk_27845DF78;
    v162[4] = self;
    v97 = v82;
    v98 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v97, v99, v96, v98, 0, v162);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x4000) != 0)
  {
    v100 = *(archive + 18);
    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_2212272E8;
    v161[3] = &unk_27845DF78;
    v161[4] = self;
    v101 = v82;
    v102 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v101, v103, v100, v102, 0, v161);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x8000) != 0)
  {
    v104 = *(archive + 19);
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = sub_221227300;
    v160[3] = &unk_27845DF78;
    v160[4] = self;
    v105 = v82;
    v106 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v105, v107, v104, v106, 0, v160);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x200000) != 0)
  {
    v108 = *(archive + 25);
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = sub_221227318;
    v159[3] = &unk_27845DF78;
    v159[4] = self;
    v109 = v82;
    v110 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v109, v111, v108, v110, 0, v159);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x400000) != 0)
  {
    v112 = *(archive + 26);
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = sub_221227330;
    v158[3] = &unk_27845DF78;
    v158[4] = self;
    v113 = v82;
    v114 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v113, v115, v112, v114, 0, v158);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x800000) != 0)
  {
    v116 = *(archive + 27);
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = sub_221227348;
    v157[3] = &unk_27845DF78;
    v157[4] = self;
    v117 = v82;
    v118 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v117, v119, v116, v118, 0, v157);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x1000000) != 0)
  {
    v120 = *(archive + 28);
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_221227360;
    v156[3] = &unk_27845DF78;
    v156[4] = self;
    v121 = v82;
    v122 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v121, v123, v120, v122, 0, v156);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x2000000) != 0)
  {
    v124 = *(archive + 29);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_221227378;
    v155[3] = &unk_27845DF78;
    v155[4] = self;
    v125 = v82;
    v126 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v125, v127, v124, v126, 0, v155);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x200) != 0)
  {
    v128 = *(archive + 13);
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_221227390;
    v154[3] = &unk_27845DF78;
    v154[4] = self;
    v129 = v82;
    v130 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v129, v131, v128, v130, 0, v154);

    v87 = *(archive + 4);
  }

  if ((v87 & 0x400) != 0)
  {
    v132 = *(archive + 14);
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = sub_221227494;
    v153[3] = &unk_27845DFA0;
    v153[4] = self;
    v133 = v82;
    v134 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v133, v135, v132, v134, 0, v153);
  }

  self->_presetIndex = *(archive + 76);
  if ((*(archive + 4) & 0x80000000) != 0)
  {
    v136 = *(archive + 35);
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = sub_221227598;
    v152[3] = &unk_27845DF50;
    v152[4] = self;
    v137 = v82;
    v138 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v137, v139, v136, v138, 0, v152);
  }

  v140 = *(archive + 5);
  if (v140)
  {
    v141 = *(archive + 36);
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = sub_2212275B0;
    v151[3] = &unk_27845DF50;
    v151[4] = self;
    v142 = v82;
    v143 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v142, v144, v141, v143, 0, v151);

    v140 = *(archive + 5);
  }

  if ((v140 & 2) != 0)
  {
    v145 = *(archive + 37);
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = sub_2212275C8;
    v150[3] = &unk_27845DF50;
    v150[4] = self;
    v146 = v82;
    v147 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v146, v148, v145, v147, 0, v150);
  }

  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = sub_2212275E0;
  v149[3] = &unk_27845E3F8;
  v149[4] = self;
  objc_msgSend_addFinalizeHandler_(v82, v85, v149, v86);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, *MEMORY[0x277D80990], v6);
  v19 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v19, v7, sub_22122B848, off_2812E4498[60]);

  objc_msgSend_p_saveToArchive_archiver_isPre30Alternate_(self, v9, v8, v19, 0);
  if (objc_msgSend_shouldSaveAlternates(v19, v10, v11, v12))
  {
    v15 = objc_msgSend_alternateForVersion_(v19, v13, *MEMORY[0x277D80968], v14);
    google::protobuf::internal::AssignDescriptors();
    v17 = objc_msgSend_messageWithNewFunction_descriptor_(v15, v16, sub_22122B848, off_2812E4498[60]);

    objc_msgSend_p_saveToArchive_archiver_isPre30Alternate_(self, v18, v17, v15, 1);
  }
}

- (void)p_saveToArchive:(void *)archive archiver:(id)archiver isPre30Alternate:(BOOL)alternate
{
  archiverCopy = archiver;
  tableStyle = self->_tableStyle;
  *(archive + 4) |= 0x100u;
  v11 = *(archive + 12);
  v168 = archiverCopy;
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0390](v12);
    *(archive + 12) = v11;
    archiverCopy = v168;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v9, tableStyle, v11);
  v14 = *(self->_cellStyles.__begin_ + 2);
  *(archive + 4) |= 0x20u;
  v15 = *(archive + 9);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0390](v16);
    *(archive + 9) = v15;
  }

  objc_msgSend_setStrongReference_message_(v168, v13, v14, v15);
  v18 = *(self->_cellStyles.__begin_ + 3);
  *(archive + 4) |= 0x40u;
  v19 = *(archive + 10);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0390](v20);
    *(archive + 10) = v19;
  }

  objc_msgSend_setStrongReference_message_(v168, v17, v18, v19);
  v22 = *(self->_cellStyles.__begin_ + 4);
  *(archive + 4) |= 0x80u;
  v23 = *(archive + 11);
  if (!v23)
  {
    v24 = *(archive + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x223DA0390](v24);
    *(archive + 11) = v23;
  }

  objc_msgSend_setStrongReference_message_(v168, v21, v22, v23);
  v26 = *(self->_cellStyles.__begin_ + 1);
  *(archive + 4) |= 0x10u;
  v27 = *(archive + 8);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x223DA0390](v28);
    *(archive + 8) = v27;
  }

  objc_msgSend_setStrongReference_message_(v168, v25, v26, v27);
  v30 = *(self->_textStyles.__begin_ + 2);
  *(archive + 4) |= 2u;
  v31 = *(archive + 5);
  if (!v31)
  {
    v32 = *(archive + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x223DA0390](v32);
    *(archive + 5) = v31;
  }

  objc_msgSend_setStrongReference_message_(v168, v29, v30, v31);
  v34 = *(self->_textStyles.__begin_ + 3);
  *(archive + 4) |= 4u;
  v35 = *(archive + 6);
  if (!v35)
  {
    v36 = *(archive + 1);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA0390](v36);
    *(archive + 6) = v35;
  }

  objc_msgSend_setStrongReference_message_(v168, v33, v34, v35);
  v38 = *(self->_textStyles.__begin_ + 4);
  *(archive + 4) |= 8u;
  v39 = *(archive + 7);
  if (!v39)
  {
    v40 = *(archive + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x223DA0390](v40);
    *(archive + 7) = v39;
  }

  objc_msgSend_setStrongReference_message_(v168, v37, v38, v39);
  v42 = *(self->_textStyles.__begin_ + 1);
  *(archive + 4) |= 1u;
  v43 = *(archive + 4);
  if (!v43)
  {
    v44 = *(archive + 1);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x223DA0390](v44);
    *(archive + 4) = v43;
  }

  objc_msgSend_setStrongReference_message_(v168, v41, v42, v43);
  tableNameStyle = self->_tableNameStyle;
  *(archive + 4) |= 0x200u;
  v47 = *(archive + 13);
  if (!v47)
  {
    v48 = *(archive + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x223DA0390](v48);
    *(archive + 13) = v47;
  }

  objc_msgSend_setStrongReference_message_(v168, v45, tableNameStyle, v47);
  tableNameShapeStyle = self->_tableNameShapeStyle;
  if (tableNameShapeStyle)
  {
    *(archive + 4) |= 0x400u;
    v51 = *(archive + 14);
    if (!v51)
    {
      v52 = *(archive + 1);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x223DA0390](v52);
      *(archive + 14) = v51;
    }

    objc_msgSend_setStrongReference_message_(v168, v49, tableNameShapeStyle, v51);
  }

  presetIndex = self->_presetIndex;
  *(archive + 5) |= 4u;
  *(archive + 76) = presetIndex;
  if (!alternate)
  {
    v54 = *(self->_cellStyles.__begin_ + 5);
    *(archive + 4) |= 0x10000u;
    v55 = *(archive + 20);
    if (!v55)
    {
      v56 = *(archive + 1);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x223DA0390](v56);
      *(archive + 20) = v55;
    }

    objc_msgSend_setStrongReference_message_(v168, v49, v54, v55);
    v58 = *(self->_cellStyles.__begin_ + 6);
    *(archive + 4) |= 0x20000u;
    v59 = *(archive + 21);
    if (!v59)
    {
      v60 = *(archive + 1);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v59 = MEMORY[0x223DA0390](v60);
      *(archive + 21) = v59;
    }

    objc_msgSend_setStrongReference_message_(v168, v57, v58, v59);
    v62 = *(self->_cellStyles.__begin_ + 7);
    *(archive + 4) |= 0x40000u;
    v63 = *(archive + 22);
    if (!v63)
    {
      v64 = *(archive + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = MEMORY[0x223DA0390](v64);
      *(archive + 22) = v63;
    }

    objc_msgSend_setStrongReference_message_(v168, v61, v62, v63);
    v66 = *(self->_cellStyles.__begin_ + 8);
    *(archive + 4) |= 0x80000u;
    v67 = *(archive + 23);
    if (!v67)
    {
      v68 = *(archive + 1);
      if (v68)
      {
        v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
      }

      v67 = MEMORY[0x223DA0390](v68);
      *(archive + 23) = v67;
    }

    objc_msgSend_setStrongReference_message_(v168, v65, v66, v67);
    v70 = *(self->_cellStyles.__begin_ + 9);
    *(archive + 4) |= 0x100000u;
    v71 = *(archive + 24);
    if (!v71)
    {
      v72 = *(archive + 1);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = MEMORY[0x223DA0390](v72);
      *(archive + 24) = v71;
    }

    objc_msgSend_setStrongReference_message_(v168, v69, v70, v71);
    v74 = *(self->_cellStyles.__begin_ + 10);
    *(archive + 4) |= 0x4000000u;
    v75 = *(archive + 30);
    if (!v75)
    {
      v76 = *(archive + 1);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = MEMORY[0x223DA0390](v76);
      *(archive + 30) = v75;
    }

    objc_msgSend_setStrongReference_message_(v168, v73, v74, v75);
    v78 = *(self->_cellStyles.__begin_ + 11);
    *(archive + 4) |= 0x8000000u;
    v79 = *(archive + 31);
    if (!v79)
    {
      v80 = *(archive + 1);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x223DA0390](v80);
      *(archive + 31) = v79;
    }

    objc_msgSend_setStrongReference_message_(v168, v77, v78, v79);
    v82 = *(self->_cellStyles.__begin_ + 12);
    *(archive + 4) |= 0x10000000u;
    v83 = *(archive + 32);
    if (!v83)
    {
      v84 = *(archive + 1);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x223DA0390](v84);
      *(archive + 32) = v83;
    }

    objc_msgSend_setStrongReference_message_(v168, v81, v82, v83);
    v86 = *(self->_cellStyles.__begin_ + 13);
    *(archive + 4) |= 0x20000000u;
    v87 = *(archive + 33);
    if (!v87)
    {
      v88 = *(archive + 1);
      if (v88)
      {
        v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
      }

      v87 = MEMORY[0x223DA0390](v88);
      *(archive + 33) = v87;
    }

    objc_msgSend_setStrongReference_message_(v168, v85, v86, v87);
    v90 = *(self->_cellStyles.__begin_ + 14);
    *(archive + 4) |= 0x40000000u;
    v91 = *(archive + 34);
    if (!v91)
    {
      v92 = *(archive + 1);
      if (v92)
      {
        v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
      }

      v91 = MEMORY[0x223DA0390](v92);
      *(archive + 34) = v91;
    }

    objc_msgSend_setStrongReference_message_(v168, v89, v90, v91);
    v94 = *(self->_textStyles.__begin_ + 5);
    *(archive + 4) |= 0x800u;
    v95 = *(archive + 15);
    if (!v95)
    {
      v96 = *(archive + 1);
      if (v96)
      {
        v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
      }

      v95 = MEMORY[0x223DA0390](v96);
      *(archive + 15) = v95;
    }

    objc_msgSend_setStrongReference_message_(v168, v93, v94, v95);
    v98 = *(self->_textStyles.__begin_ + 6);
    *(archive + 4) |= 0x1000u;
    v99 = *(archive + 16);
    if (!v99)
    {
      v100 = *(archive + 1);
      if (v100)
      {
        v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
      }

      v99 = MEMORY[0x223DA0390](v100);
      *(archive + 16) = v99;
    }

    objc_msgSend_setStrongReference_message_(v168, v97, v98, v99);
    v102 = *(self->_textStyles.__begin_ + 7);
    *(archive + 4) |= 0x2000u;
    v103 = *(archive + 17);
    if (!v103)
    {
      v104 = *(archive + 1);
      if (v104)
      {
        v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
      }

      v103 = MEMORY[0x223DA0390](v104);
      *(archive + 17) = v103;
    }

    objc_msgSend_setStrongReference_message_(v168, v101, v102, v103);
    v106 = *(self->_textStyles.__begin_ + 8);
    *(archive + 4) |= 0x4000u;
    v107 = *(archive + 18);
    if (!v107)
    {
      v108 = *(archive + 1);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = MEMORY[0x223DA0390](v108);
      *(archive + 18) = v107;
    }

    objc_msgSend_setStrongReference_message_(v168, v105, v106, v107);
    v110 = *(self->_textStyles.__begin_ + 9);
    *(archive + 4) |= 0x8000u;
    v111 = *(archive + 19);
    if (!v111)
    {
      v112 = *(archive + 1);
      if (v112)
      {
        v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
      }

      v111 = MEMORY[0x223DA0390](v112);
      *(archive + 19) = v111;
    }

    objc_msgSend_setStrongReference_message_(v168, v109, v110, v111);
    v114 = *(self->_textStyles.__begin_ + 10);
    *(archive + 4) |= 0x200000u;
    v115 = *(archive + 25);
    if (!v115)
    {
      v116 = *(archive + 1);
      if (v116)
      {
        v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
      }

      v115 = MEMORY[0x223DA0390](v116);
      *(archive + 25) = v115;
    }

    objc_msgSend_setStrongReference_message_(v168, v113, v114, v115);
    v118 = *(self->_textStyles.__begin_ + 11);
    *(archive + 4) |= 0x400000u;
    v119 = *(archive + 26);
    if (!v119)
    {
      v120 = *(archive + 1);
      if (v120)
      {
        v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
      }

      v119 = MEMORY[0x223DA0390](v120);
      *(archive + 26) = v119;
    }

    objc_msgSend_setStrongReference_message_(v168, v117, v118, v119);
    v122 = *(self->_textStyles.__begin_ + 12);
    *(archive + 4) |= 0x800000u;
    v123 = *(archive + 27);
    if (!v123)
    {
      v124 = *(archive + 1);
      if (v124)
      {
        v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
      }

      v123 = MEMORY[0x223DA0390](v124);
      *(archive + 27) = v123;
    }

    objc_msgSend_setStrongReference_message_(v168, v121, v122, v123);
    v126 = *(self->_textStyles.__begin_ + 13);
    *(archive + 4) |= 0x1000000u;
    v127 = *(archive + 28);
    if (!v127)
    {
      v128 = *(archive + 1);
      if (v128)
      {
        v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
      }

      v127 = MEMORY[0x223DA0390](v128);
      *(archive + 28) = v127;
    }

    objc_msgSend_setStrongReference_message_(v168, v125, v126, v127);
    v130 = *(self->_textStyles.__begin_ + 14);
    *(archive + 4) |= 0x2000000u;
    v131 = *(archive + 29);
    if (!v131)
    {
      v132 = *(archive + 1);
      if (v132)
      {
        v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
      }

      v131 = MEMORY[0x223DA0390](v132);
      *(archive + 29) = v131;
    }

    objc_msgSend_setStrongReference_message_(v168, v129, v130, v131);
    v134 = *(self->_cellStyles.__begin_ + 15);
    *(archive + 4) |= 0x80000000;
    v135 = *(archive + 35);
    if (!v135)
    {
      v136 = *(archive + 1);
      if (v136)
      {
        v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
      }

      v135 = MEMORY[0x223DA0390](v136);
      *(archive + 35) = v135;
    }

    objc_msgSend_setStrongReference_message_(v168, v133, v134, v135);
    v138 = *(self->_cellStyles.__begin_ + 16);
    *(archive + 5) |= 1u;
    v139 = *(archive + 36);
    if (!v139)
    {
      v140 = *(archive + 1);
      if (v140)
      {
        v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
      }

      v139 = MEMORY[0x223DA0390](v140);
      *(archive + 36) = v139;
    }

    objc_msgSend_setStrongReference_message_(v168, v137, v138, v139);
    v142 = *(self->_cellStyles.__begin_ + 17);
    *(archive + 5) |= 2u;
    v143 = *(archive + 37);
    if (!v143)
    {
      v144 = *(archive + 1);
      if (v144)
      {
        v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
      }

      v143 = MEMORY[0x223DA0390](v144);
      *(archive + 37) = v143;
    }

    objc_msgSend_setStrongReference_message_(v168, v141, v142, v143);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v145, 18, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v146, 19, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v147, 20, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v148, 21, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v149, 22, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v150, 13, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v151, 14, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v152, 15, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v153, 16, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v154, 17, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v155, 28, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v156, 29, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v157, 30, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v158, 31, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v159, 32, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v160, 23, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v161, 24, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v162, 25, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v163, 26, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v164, 27, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v165, 33, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v166, 34, archive);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v168, v167, 35, archive);
  }
}

- (void)upgradeIfNecessary
{
  v104 = objc_msgSend_bodyCellStyle(self, a2, v2, v3);
  objc_msgSend_upgradeIfNecessary(v104, v5, v6, v7);

  v105 = objc_msgSend_headerRowCellStyle(self, v8, v9, v10);
  objc_msgSend_upgradeIfNecessary(v105, v11, v12, v13);

  v106 = objc_msgSend_headerColumnCellStyle(self, v14, v15, v16);
  objc_msgSend_upgradeIfNecessary(v106, v17, v18, v19);

  v107 = objc_msgSend_footerRowCellStyle(self, v20, v21, v22);
  objc_msgSend_upgradeIfNecessary(v107, v23, v24, v25);

  v108 = objc_msgSend_categoryLevel1CellStyle(self, v26, v27, v28);
  objc_msgSend_upgradeIfNecessary(v108, v29, v30, v31);

  v109 = objc_msgSend_categoryLevel2CellStyle(self, v32, v33, v34);
  objc_msgSend_upgradeIfNecessary(v109, v35, v36, v37);

  v110 = objc_msgSend_categoryLevel3CellStyle(self, v38, v39, v40);
  objc_msgSend_upgradeIfNecessary(v110, v41, v42, v43);

  v111 = objc_msgSend_categoryLevel4CellStyle(self, v44, v45, v46);
  objc_msgSend_upgradeIfNecessary(v111, v47, v48, v49);

  v112 = objc_msgSend_categoryLevel5CellStyle(self, v50, v51, v52);
  objc_msgSend_upgradeIfNecessary(v112, v53, v54, v55);

  v113 = objc_msgSend_labelLevel1CellStyle(self, v56, v57, v58);
  objc_msgSend_upgradeIfNecessary(v113, v59, v60, v61);

  v114 = objc_msgSend_labelLevel2CellStyle(self, v62, v63, v64);
  objc_msgSend_upgradeIfNecessary(v114, v65, v66, v67);

  v115 = objc_msgSend_labelLevel3CellStyle(self, v68, v69, v70);
  objc_msgSend_upgradeIfNecessary(v115, v71, v72, v73);

  v116 = objc_msgSend_labelLevel4CellStyle(self, v74, v75, v76);
  objc_msgSend_upgradeIfNecessary(v116, v77, v78, v79);

  v117 = objc_msgSend_labelLevel5CellStyle(self, v80, v81, v82);
  objc_msgSend_upgradeIfNecessary(v117, v83, v84, v85);

  v118 = objc_msgSend_pivotBodySummaryRowCellStyle(self, v86, v87, v88);
  objc_msgSend_upgradeIfNecessary(v118, v89, v90, v91);

  v119 = objc_msgSend_pivotBodySummaryColumnCellStyle(self, v92, v93, v94);
  objc_msgSend_upgradeIfNecessary(v119, v95, v96, v97);

  v120 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(self, v98, v99, v100);
  objc_msgSend_upgradeIfNecessary(v120, v101, v102, v103);
}

- (void)p_clearCategoryStyles
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  begin = self->_cellStyles.__begin_;
  v6 = begin[5];
  begin[5] = 0;

  v7 = self->_cellStyles.__begin_;
  v8 = v7[6];
  v7[6] = 0;

  v9 = self->_cellStyles.__begin_;
  v10 = v9[7];
  v9[7] = 0;

  v11 = self->_cellStyles.__begin_;
  v12 = v11[8];
  v11[8] = 0;

  v13 = self->_cellStyles.__begin_;
  v14 = v13[9];
  v13[9] = 0;

  v15 = self->_textStyles.__begin_;
  v16 = v15[5];
  v15[5] = 0;

  v17 = self->_textStyles.__begin_;
  v18 = v17[6];
  v17[6] = 0;

  v19 = self->_textStyles.__begin_;
  v20 = v19[7];
  v19[7] = 0;

  v21 = self->_textStyles.__begin_;
  v22 = v21[8];
  v21[8] = 0;

  v23 = self->_textStyles.__begin_;
  v24 = v23[9];
  v23[9] = 0;

  v25 = self->_cellStyles.__begin_;
  v26 = v25[10];
  v25[10] = 0;

  v27 = self->_cellStyles.__begin_;
  v28 = v27[11];
  v27[11] = 0;

  v29 = self->_cellStyles.__begin_;
  v30 = v29[12];
  v29[12] = 0;

  v31 = self->_cellStyles.__begin_;
  v32 = v31[13];
  v31[13] = 0;

  v33 = self->_cellStyles.__begin_;
  v34 = v33[14];
  v33[14] = 0;

  v35 = self->_textStyles.__begin_;
  v36 = v35[10];
  v35[10] = 0;

  v37 = self->_textStyles.__begin_;
  v38 = v37[11];
  v37[11] = 0;

  v39 = self->_textStyles.__begin_;
  v40 = v39[12];
  v39[12] = 0;

  v41 = self->_textStyles.__begin_;
  v42 = v41[13];
  v41[13] = 0;

  v43 = self->_textStyles.__begin_;
  v44 = v43[14];
  v43[14] = 0;
}

- (void)clearAndGenerateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  objc_msgSend_p_clearCategoryStyles(self, a2, stylesheet, v3);

  objc_msgSend_generateCategoryStylesConnectedToStylesheet_(self, v6, stylesheetCopy, v7);
}

- (void)generateCategoryStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  begin = self->_cellStyles.__begin_;
  if (!begin[5] || !begin[6] || !begin[7] || !begin[8] || !begin[9] || !begin[10] || !begin[11] || !begin[12] || !begin[13] || !begin[14] || (v7 = self->_textStyles.__begin_, !v7[5]) || !v7[6] || !v7[7] || !v7[8] || !v7[9] || !v7[10] || !v7[11] || !v7[12] || !v7[13] || !v7[14])
  {
    objc_msgSend_willModifyForUpgrade(self, a2, stylesheet, v3);
    if (stylesheetCopy)
    {
      v31 = objc_msgSend_documentRoot(self, v8, v9, v10);
      v14 = objc_msgSend_stylesheet(v31, v11, v12, v13);

      v32 = v14;
    }

    else
    {
      v32 = 0;
    }

    for (i = 5; i != 15; ++i)
    {
      v16 = objc_msgSend_deriveCategoryCellStyleForTableStyleArea_connectedToStylesheet_(self, v8, i, stylesheetCopy);
      objc_msgSend_setCellStyle_forTableStyleArea_(self, v17, v16, i);
      v19 = objc_msgSend_deriveCategoryTextStyleForTableStyleArea_connectedToStylesheet_(self, v18, i, stylesheetCopy);
      objc_msgSend_setTextStyle_forTableStyleArea_(self, v20, v19, i);
      if (v32)
      {
        v24 = objc_msgSend_stylesheet(v16, v21, v22, v23);

        if (!v24)
        {
          objc_msgSend_addStyle_(v32, v25, v16, v27);
        }

        v28 = objc_msgSend_stylesheet(v19, v25, v26, v27);

        if (!v28)
        {
          objc_msgSend_addStyle_(v32, v29, v19, v30);
        }
      }
    }
  }
}

- (void)generateCategoryStrokesInTableStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v5 = objc_msgSend_valueForProperty_(styleCopy, v3, 783, v4);
  v6 = TSUCheckedDynamicCast();

  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 784, v8);
  v10 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_deriveCategoryTopStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v11, v6, v12);
  v16 = objc_msgSend_deriveCategoryBottomStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v14, v6, v15);
  v19 = objc_msgSend_deriveCategoryInteriorStrokeFromFooterRowVerticalStroke_(TSTTableStyleNetwork, v17, v10, v18);
  objc_msgSend_setValue_forProperty_(styleCopy, v20, v13, 808);
  objc_msgSend_setValue_forProperty_(styleCopy, v21, v13, 809);
  objc_msgSend_setValue_forProperty_(styleCopy, v22, v13, 810);
  objc_msgSend_setValue_forProperty_(styleCopy, v23, v13, 811);
  objc_msgSend_setValue_forProperty_(styleCopy, v24, v13, 812);
  v28 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v25, v26, v27);
  objc_msgSend_setValue_forProperty_(styleCopy, v29, v28, 818);

  v33 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v30, v31, v32);
  objc_msgSend_setValue_forProperty_(styleCopy, v34, v33, 819);

  v38 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v35, v36, v37);
  objc_msgSend_setValue_forProperty_(styleCopy, v39, v38, 820);

  v43 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v40, v41, v42);
  objc_msgSend_setValue_forProperty_(styleCopy, v44, v43, 821);

  v48 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v45, v46, v47);
  objc_msgSend_setValue_forProperty_(styleCopy, v49, v48, 822);

  objc_msgSend_setValue_forProperty_(styleCopy, v50, v16, 813);
  objc_msgSend_setValue_forProperty_(styleCopy, v51, v16, 814);
  objc_msgSend_setValue_forProperty_(styleCopy, v52, v16, 815);
  objc_msgSend_setValue_forProperty_(styleCopy, v53, v16, 816);
  objc_msgSend_setValue_forProperty_(styleCopy, v54, v16, 817);
  objc_msgSend_setValue_forProperty_(styleCopy, v55, v19, 823);
  objc_msgSend_setValue_forProperty_(styleCopy, v56, v19, 824);
  objc_msgSend_setValue_forProperty_(styleCopy, v57, v19, 825);
  objc_msgSend_setValue_forProperty_(styleCopy, v58, v19, 826);
  objc_msgSend_setValue_forProperty_(styleCopy, v59, v19, 827);
}

- (void)generatePivotStrokesInTableStyle:(id)style
{
  styleCopy = style;
  v35 = objc_msgSend_deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v3, styleCopy, 0);
  v5 = objc_msgSend_deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v4, styleCopy, 0);
  v7 = objc_msgSend_deriveHeaderColumnPivotSeparatorStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v6, styleCopy, 0);
  v9 = objc_msgSend_deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v8, styleCopy, 0);
  v11 = objc_msgSend_deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v10, styleCopy, 0);
  v13 = objc_msgSend_deriveHeaderRowPivotTitleStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v12, styleCopy, 0);
  v15 = objc_msgSend_deriveFooterRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v14, styleCopy, 0);
  v17 = objc_msgSend_deriveBodyPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v16, styleCopy, 0);
  v19 = objc_msgSend_deriveBodyPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v18, styleCopy, 0);
  v21 = objc_msgSend_deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v20, styleCopy, 0);
  v23 = objc_msgSend_deriveBodyPivotEmphasisVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v22, styleCopy, 0);
  objc_msgSend_setValue_forProperty_(styleCopy, v24, v17, 828);
  objc_msgSend_setValue_forProperty_(styleCopy, v25, v19, 829);
  objc_msgSend_setValue_forProperty_(styleCopy, v26, v21, 830);
  objc_msgSend_setValue_forProperty_(styleCopy, v27, v23, 831);
  objc_msgSend_setValue_forProperty_(styleCopy, v28, v35, 832);
  objc_msgSend_setValue_forProperty_(styleCopy, v29, v5, 833);
  objc_msgSend_setValue_forProperty_(styleCopy, v30, v7, 834);
  objc_msgSend_setValue_forProperty_(styleCopy, v31, v9, 835);
  objc_msgSend_setValue_forProperty_(styleCopy, v32, v11, 836);
  objc_msgSend_setValue_forProperty_(styleCopy, v33, v13, 837);
  objc_msgSend_setValue_forProperty_(styleCopy, v34, v15, 838);
}

- (void)maintainPivotStrokesInTableStyle:(id)style fromTable:(id)table
{
  styleCopy = style;
  tableCopy = table;
  v9 = objc_msgSend_tableStyle(tableCopy, v6, v7, v8);
  v12 = objc_msgSend_valueForProperty_(v9, v10, 780, v11);

  objc_msgSend_setValue_forProperty_(styleCopy, v13, v12, 780);
  v17 = objc_msgSend_tableStyle(tableCopy, v14, v15, v16);
  v20 = objc_msgSend_valueForProperty_(v17, v18, 776, v19);

  objc_msgSend_setValue_forProperty_(styleCopy, v21, v20, 776);
}

- (id)deriveCategoryCellStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  v7 = objc_msgSend_headerColumnCellStyle(self, a2, area, stylesheet);
  v9 = objc_msgSend_p_deriveCategoryCellStyleForTableStyleArea_fromCellStyle_connectedToStylesheet_(self, v8, area, v7, stylesheetCopy);

  return v9;
}

- (id)sheetFill
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_stylesheet(v4, v5, v6, v7);

  v11 = objc_msgSend_styleWithIdentifier_(v8, v9, @"sheet-0-sheetStyle", v10);
  v14 = objc_msgSend_valueForProperty_(v11, v12, 516, v13);

  return v14;
}

- (id)p_deriveCategoryCellStyleForTableStyleArea:(unint64_t)area fromCellStyle:(id)style connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  v12 = objc_msgSend_documentRoot(self, v9, v10, v11);
  v109 = objc_msgSend_stylesheet(v12, v13, v14, v15);

  v108 = objc_msgSend_objectForProperty_(styleCopy, v16, 898, v17);
  if (v108 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = objc_msgSend_referenceColor(v108, v18, v19, v20);
    objc_msgSend_hueComponent(v26, v27, v28, v29);
  }

  else
  {
    v21 = objc_msgSend_sheetFill(self, v18, v19, v20);
    v25 = v21;
    if (v21)
    {
      objc_msgSend_referenceColor(v21, v22, v23, v24);
    }

    else
    {
      objc_msgSend_whiteColor(MEMORY[0x277D81180], v22, v23, v24);
    }
    v26 = ;

    objc_msgSend_hueComponent(v26, v34, v35, v36);
  }

  v37 = v33;
  objc_msgSend_saturationComponent(v26, v30, v31, v32);
  v39 = v38;
  objc_msgSend_brightnessComponent(v26, v40, v41, v42);
  v44 = v43;
  objc_msgSend_alphaComponent(v26, v45, v46, v47);
  v52 = v51;
  if (area > 9)
  {
    if (area > 11)
    {
      if (area != 12)
      {
        if (area != 13)
        {
          if (area != 14)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        goto LABEL_25;
      }

LABEL_24:
      v53 = v44 + 0.12;
      v54 = 0.88;
      goto LABEL_26;
    }

    if (area != 10)
    {
LABEL_22:
      v53 = v44 + 0.08;
      v54 = 0.92;
      goto LABEL_26;
    }

LABEL_23:
    v53 = v44 + 0.04;
    v54 = 0.96;
    goto LABEL_26;
  }

  if (area <= 6)
  {
    if (area != 5)
    {
      if (area != 6)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (area == 7)
  {
    goto LABEL_24;
  }

  if (area != 8)
  {
LABEL_17:
    v53 = v44 + 0.2;
    v54 = 0.8;
    goto LABEL_26;
  }

LABEL_25:
  v53 = v44 + 0.16;
  v54 = 0.84;
LABEL_26:
  v55 = v44 * v54;
  if (v44 > 0.5)
  {
    v44 = v55;
  }

  else
  {
    v44 = v53;
  }

LABEL_29:
  v56 = MEMORY[0x277D801F8];
  v57 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D81180], v48, v49, v50, v37, v39, v44, v52);
  v60 = objc_msgSend_colorWithColor_(v56, v58, v57, v59);

  v64 = objc_msgSend_fullPropertyMap(styleCopy, v61, v62, v63);
  objc_msgSend_setObject_forProperty_(v64, v65, v60, 898);
  objc_msgSend_setBoolValue_forProperty_(v64, v66, 0, 896);
  if (!stylesheetCopy)
  {
LABEL_38:
    v95 = [TSTCellStyle alloc];
    v99 = objc_msgSend_context(styleCopy, v96, v97, v98);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v95, v100, v99, 0, v64, 0);
    goto LABEL_43;
  }

  v73 = objc_msgSend_stylesheet(styleCopy, v67, v68, v69);
  if (v73 != v109)
  {
    v57 = objc_msgSend_stylesheet(styleCopy, v70, v71, v72);
    if ((objc_msgSend_isAncestorOf_(v57, v74, v109, v75) & 1) == 0)
    {

      goto LABEL_38;
    }
  }

  v79 = objc_msgSend_parent(styleCopy, v70, v71, v72);
  if (!v79)
  {
    if (v73 == v109)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_40:

    goto LABEL_41;
  }

  v106 = v57;
  v107 = objc_msgSend_parent(styleCopy, v76, v77, v78);
  v83 = objc_msgSend_stylesheet(v107, v80, v81, v82);
  v87 = v83;
  if (v83 == v109)
  {

    if (v73 == v109)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v88 = objc_msgSend_parent(styleCopy, v84, v85, v86);
  v92 = objc_msgSend_stylesheet(v88, v89, v90, v91);
  isAncestorOf = objc_msgSend_isAncestorOf_(v92, v93, v109, v94);

  if (v73 != v109)
  {
  }

  if ((isAncestorOf & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  objc_opt_class();
  v99 = objc_msgSend_variationOfStyle_propertyMap_(v109, v102, styleCopy, v64);
  isVariation = TSUCheckedDynamicCast();
LABEL_43:
  v103 = isVariation;

  return v103;
}

- (id)deriveCategoryTextStyleForTableStyleArea:(unint64_t)area connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  v7 = objc_msgSend_headerColumnTextStyle(self, a2, area, stylesheet);
  v9 = objc_msgSend_p_deriveCategoryTextStyleForTableStyleArea_fromTextStyle_connectedToStylesheet_(self, v8, area, v7, stylesheetCopy);

  return v9;
}

- (id)p_deriveCategoryTextStyleForTableStyleArea:(unint64_t)area fromTextStyle:(id)style connectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  v12 = styleCopy;
  if (area - 10 > 4)
  {
    v32 = styleCopy;
    goto LABEL_19;
  }

  v13 = objc_msgSend_fullPropertyMap(styleCopy, v9, v10, v11);
  objc_msgSend_setIntValue_forProperty_(v13, v14, 0, 19);
  v18 = objc_msgSend_documentRoot(self, v15, v16, v17);
  v22 = objc_msgSend_stylesheet(v18, v19, v20, v21);

  if (!stylesheetCopy)
  {
    goto LABEL_12;
  }

  v29 = objc_msgSend_stylesheet(v12, v23, v24, v25);
  if (v29 == v22 || (objc_msgSend_stylesheet(v12, v26, v27, v28), v63 = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isAncestorOf_(v63, v30, v22, v31) & 1) != 0))
  {
    v36 = objc_msgSend_parent(v12, v26, v27, v28);
    if (v36)
    {
      v37 = objc_msgSend_parent(v12, v33, v34, v35);
      v41 = objc_msgSend_stylesheet(v37, v38, v39, v40);
      v45 = v41;
      if (v41 != v22)
      {
        v46 = objc_msgSend_parent(v12, v42, v43, v44);
        v50 = objc_msgSend_stylesheet(v46, v47, v48, v49);
        isAncestorOf = objc_msgSend_isAncestorOf_(v50, v51, v22, v52);

        if (v29 != v22)
        {
        }

        if ((isAncestorOf & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_17:
        objc_opt_class();
        v58 = objc_msgSend_variationOfStyle_propertyMap_(v22, v61, v12, v13);
        isVariation = TSUCheckedDynamicCast();
        goto LABEL_18;
      }
    }

    if (v29 != v22)
    {
    }

    goto LABEL_17;
  }

LABEL_12:
  v54 = objc_alloc(MEMORY[0x277D80EC8]);
  v58 = objc_msgSend_context(v12, v55, v56, v57);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v54, v59, v58, 0, v13, 0);
LABEL_18:
  v32 = isVariation;

LABEL_19:

  return v32;
}

+ (id)deriveCategoryTopStrokeFromFooterRowSeparatorStroke:(id)stroke
{
  v4 = objc_msgSend_mutableCopy(stroke, a2, stroke, v3);
  objc_msgSend_setWidth_(v4, v5, v6, v7, 2.0);
  v11 = objc_msgSend_copy(v4, v8, v9, v10);

  return v11;
}

+ (id)deriveCategoryBottomStrokeFromFooterRowSeparatorStroke:(id)stroke
{
  v4 = objc_msgSend_mutableCopy(stroke, a2, stroke, v3);
  objc_msgSend_setWidth_(v4, v5, v6, v7, 0.75);
  v11 = objc_msgSend_copy(v4, v8, v9, v10);

  return v11;
}

+ (unint64_t)pivotTableStyleAreaForRowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel numberOfRowLevels:(unint64_t)levels numberOfColumnLevels:(unint64_t)columnLevels columnIndex:(TSUViewColumnIndex)index
{
  levelCopy = level;
  v8 = 3;
  if (level >= levels)
  {
    v8 = 0;
    levelCopy = 0;
  }

  if (!level)
  {
    v8 = 6;
    levelCopy = 0;
  }

  if (level == 255)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (level == 255)
  {
    v10 = 0;
  }

  else
  {
    v10 = levelCopy;
  }

  v11 = 3;
  if (columnLevel < columnLevels)
  {
    var0 = columnLevel;
  }

  else
  {
    v11 = 0;
    var0 = 0;
  }

  if (columnLevel == 255)
  {
    v11 = 1;
    var0 = index.var0;
  }

  if (columnLevel)
  {
    v13 = v11;
  }

  else
  {
    v13 = 6;
  }

  if (columnLevel)
  {
    v14 = var0;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_221229CA8(v13, v14, level, columnLevel);
  v18 = sub_221229CA8(v9, v10, v16, v17);

  return MEMORY[0x2821F9670](TSTTableStyleNetwork, sel_styleAreaForColumnType_rowType_forAPivotTable_, v15, v18);
}

+ (unint64_t)styleAreaForColumnType:(unsigned __int8)type rowType:(unsigned __int8)rowType forAPivotTable:(BOOL)table
{
  v5 = rowType >> 4;
  if (rowType >> 4 == 1)
  {
    return 2;
  }

  if ((rowType & 0xB0) == 0x20)
  {
    return 4;
  }

  v7 = rowType & 0xF;
  if (v5 == 3 && !table)
  {
    return v7 + 4;
  }

  if (v5 == 4 && !table)
  {
    return v7 + 9;
  }

  v8 = type >> 4;
  if ((type & 0xB0) == 0x10 || v8 == 6)
  {
    result = 3;
    if (v5 == 3 && table)
    {
      v12 = v7 - 1 <= (type & 0xF) || v8 == 6;
      if (v12)
      {
        return 17;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v9 = v5 == 3 || !table;
    v10 = 15;
    if (!table)
    {
      v10 = 1;
    }

    v12 = v8 == 3;
    v11 = 16;
    if (!v12)
    {
      v11 = 1;
    }

    if (v9)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

- (void)p_clearPivotStyles
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  begin = self->_cellStyles.__begin_;
  v6 = begin[15];
  begin[15] = 0;

  v7 = self->_cellStyles.__begin_;
  v8 = v7[16];
  v7[16] = 0;

  v9 = self->_cellStyles.__begin_;
  v10 = v9[17];
  v9[17] = 0;
}

- (void)clearAndGeneratePivotStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  objc_msgSend_p_clearPivotStyles(self, a2, stylesheet, v3);

  objc_msgSend_generatePivotStylesConnectedToStylesheet_(self, v6, stylesheetCopy, v7);
}

- (void)generatePivotStylesConnectedToStylesheet:(BOOL)stylesheet
{
  stylesheetCopy = stylesheet;
  begin = self->_cellStyles.__begin_;
  if (!begin[15] || !begin[16] || !begin[17])
  {
    objc_msgSend_willModifyForUpgrade(self, a2, stylesheet, v3);
    v9 = self->_cellStyles.__begin_;
    if (!v9[15])
    {
      v10 = v9[1];
      v11 = objc_msgSend_valueForProperty_(self->_tableStyle, v7, 770, v8);
      v13 = objc_msgSend_p_derivePivotCellStyleFromCellStyle_optionalSourceFill_brightnessShift_connectedToStylesheet_styleArea_(self, v12, v10, v11, stylesheetCopy, 15, 0.07);
      v14 = self->_cellStyles.__begin_;
      v15 = v14[15];
      v14[15] = v13;

      v9 = self->_cellStyles.__begin_;
    }

    if (!v9[16])
    {
      v16 = v9[1];
      v17 = objc_msgSend_valueForProperty_(self->_tableStyle, v7, 770, v8);
      v19 = objc_msgSend_p_derivePivotCellStyleFromCellStyle_optionalSourceFill_brightnessShift_connectedToStylesheet_styleArea_(self, v18, v16, v17, stylesheetCopy, 16, 0.0);
      v20 = self->_cellStyles.__begin_;
      v21 = v20[16];
      v20[16] = v19;

      v9 = self->_cellStyles.__begin_;
    }

    if (!v9[17])
    {
      v22 = objc_msgSend_p_derivePivotCellStyleFromCellStyle_optionalSourceFill_brightnessShift_connectedToStylesheet_styleArea_(self, v7, v9[5], 0, stylesheetCopy, 17, 0.0);
      v23 = self->_cellStyles.__begin_;
      v24 = v23[17];
      v23[17] = v22;
    }
  }
}

- (id)p_derivePivotCellStyleFromCellStyle:(id)style optionalSourceFill:(id)fill brightnessShift:(double)shift connectedToStylesheet:(BOOL)stylesheet styleArea:(unint64_t)area
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  fillCopy = fill;
  if (shift < 0.0)
  {
    shift = 0.0;
  }

  selfCopy = self;
  v16 = objc_msgSend_documentRoot(self, v12, v13, v14);
  v120 = objc_msgSend_stylesheet(v16, v17, v18, v19);

  v22 = 0x277D81000;
  if ((fillCopy || (objc_msgSend_valueForProperty_(styleCopy, v20, 898, v21), (fillCopy = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = objc_msgSend_referenceColor(fillCopy, v23, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_lightGrayColor(MEMORY[0x277D81180], v23, v24, v25);
  }

  v30 = v26;
  v31 = fmin(shift, 1.0);
  if (v31 <= 0.0)
  {
    v119 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v27, v26, v29);
  }

  else
  {
    objc_msgSend_hueComponent(v26, v27, v28, v29);
    v33 = v32;
    objc_msgSend_saturationComponent(v30, v34, v35, v36);
    v38 = v37;
    objc_msgSend_brightnessComponent(v30, v39, v40, v41);
    v43 = v42;
    objc_msgSend_alphaComponent(v30, v44, v45, v46);
    v51 = v50;
    v52 = -v31;
    if (v43 <= 0.5)
    {
      v52 = v31;
    }

    v53 = MEMORY[0x277D801F8];
    v22 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D81180], v47, v48, v49, v33, v38, v43 * (v52 + 1.0), v51);
    v119 = objc_msgSend_colorWithColor_(v53, v54, v22, v55);
  }

  v59 = objc_msgSend_fullPropertyMap(styleCopy, v56, v57, v58);
  objc_msgSend_setObject_forProperty_(v59, v60, v119, 898);
  objc_msgSend_setBoolValue_forProperty_(v59, v61, 1, 896);
  if (!stylesheetCopy)
  {
    goto LABEL_22;
  }

  v68 = objc_msgSend_stylesheet(styleCopy, v62, v63, v64);
  if (v68 == v120 || (objc_msgSend_stylesheet(styleCopy, v65, v66, v67), v22 = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isAncestorOf_(v22, v69, v120, v70) & 1) != 0))
  {
    v74 = objc_msgSend_parent(styleCopy, v65, v66, v67);
    if (v74)
    {
      v115 = v22;
      v116 = objc_msgSend_parent(styleCopy, v71, v72, v73);
      v78 = objc_msgSend_stylesheet(v116, v75, v76, v77);
      v82 = v78;
      if (v78 != v120)
      {
        v83 = objc_msgSend_parent(styleCopy, v79, v80, v81);
        v87 = objc_msgSend_stylesheet(v83, v84, v85, v86);
        isAncestorOf = objc_msgSend_isAncestorOf_(v87, v88, v120, v89);

        if (v68 != v120)
        {
        }

        if ((isAncestorOf & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_26:
        v100 = objc_msgSend_presetID(selfCopy, v90, v91, v92);
        v97 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v101, v100, area);
        objc_opt_class();
        v104 = objc_msgSend_cascadedStyleWithIdentifier_(v120, v102, v97, v103);
        v105 = TSUDynamicCast();

        if (v105)
        {
          isVariation = v105;
        }

        else
        {
          v106 = [TSTCellStyle alloc];
          v110 = objc_msgSend_context(styleCopy, v107, v108, v109);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v106, v111, v110, 0, v59, 0);

          objc_msgSend_addStyle_withIdentifier_(v120, v112, isVariation, v97);
        }

        goto LABEL_30;
      }

      v22 = v115;
      if (v68 == v120)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (v68 == v120)
    {
      goto LABEL_25;
    }

    goto LABEL_25;
  }

LABEL_22:
  v93 = [TSTCellStyle alloc];
  v97 = objc_msgSend_context(styleCopy, v94, v95, v96);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v93, v98, v97, 0, v59, 0);
LABEL_30:

  return isVariation;
}

+ (id)deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 776, v8);
  v10 = TSUCheckedDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(mapCopy, v13, 776, v14);
    v12 = TSUCheckedDynamicCast();
  }

  v19 = objc_msgSend_strokeApplyingEmphasis(v12, v16, v17, v18);

  return v19;
}

+ (id)deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], a2, style, map, 0.0);

  return v4;
}

+ (id)p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map returnHeaderRowPivotGroupVerticalStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v11 = objc_msgSend_valueForProperty_(styleCopy, v9, 775, v10);
  v12 = TSUCheckedDynamicCast();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(mapCopy, v15, 775, v16);
    v14 = TSUCheckedDynamicCast();
  }

  objc_opt_class();
  v20 = objc_msgSend_valueForProperty_(styleCopy, v18, 780, v19);
  v21 = TSUCheckedDynamicCast();
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    objc_opt_class();
    v26 = objc_msgSend_objectForProperty_(mapCopy, v24, 780, v25);
    v23 = TSUCheckedDynamicCast();
  }

  v30 = objc_msgSend_strokeApplyingEmphasis(v14, v27, v28, v29);
  v34 = objc_msgSend_strokeApplyingEmphasis(v23, v31, v32, v33);
  objc_msgSend_width(v30, v35, v36, v37);
  v39 = v38;
  objc_msgSend_width(v34, v40, v41, v42);
  if (v39 < v46)
  {
    v46 = v39;
  }

  if (strokeCopy)
  {
    objc_msgSend_strokeApplyingWidth_(v23, v43, v44, v45, v46);
  }

  else
  {
    objc_msgSend_strokeApplyingWidth_(v14, v43, v44, v45, v46);
  }
  v47 = ;

  return v47;
}

+ (id)deriveHeaderColumnPivotSeparatorStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_returnHeaderRowPivotGroupVerticalStroke_(self, a2, style, map, 0);

  return v4;
}

+ (id)deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_p_deriveHeaderColumnPivotSeparatorAndHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_returnHeaderRowPivotGroupVerticalStroke_(self, a2, style, map, 1);

  return v4;
}

+ (id)deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], a2, style, map, 0.0);

  return v4;
}

+ (id)deriveHeaderRowPivotTitleStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 781, v8);
  v10 = TSUCheckedDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(mapCopy, v13, 781, v14);
    v12 = TSUCheckedDynamicCast();
  }

  v19 = objc_msgSend_strokeApplyingEmphasis(v12, v16, v17, v18);
  v23 = objc_msgSend_strokeApplyingEmphasis(v19, v20, v21, v22);

  return v23;
}

+ (id)deriveFooterRowPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 784, v8);
  v10 = TSUCheckedDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(mapCopy, v13, 784, v14);
    v12 = TSUCheckedDynamicCast();
  }

  v19 = objc_msgSend_strokeApplyingEmphasis(v12, v16, v17, v18);

  return v19;
}

+ (id)deriveBodyPivotGroupHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 773, v8);
  v10 = TSUCheckedDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(mapCopy, v13, 773, v14);
    v12 = TSUCheckedDynamicCast();
  }

  v19 = objc_msgSend_strokeApplyingEmphasis(v12, v16, v17, v18);

  return v19;
}

+ (id)deriveBodyPivotGroupVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 774, v8);
  v10 = TSUCheckedDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(mapCopy, v13, 774, v14);
    v12 = TSUCheckedDynamicCast();
  }

  v19 = objc_msgSend_strokeApplyingEmphasis(v12, v16, v17, v18);

  return v19;
}

+ (id)deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  v4 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], a2, style, map, 0.0);

  return v4;
}

+ (id)deriveBodyPivotEmphasisVerticalStrokeFromTableStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  objc_opt_class();
  v9 = objc_msgSend_valueForProperty_(styleCopy, v7, 774, v8);
  v10 = TSUCheckedDynamicCast();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(mapCopy, v13, 774, v14);
    v12 = TSUCheckedDynamicCast();
  }

  v19 = objc_msgSend_strokeApplyingEmphasis(v12, v16, v17, v18);

  return v19;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end