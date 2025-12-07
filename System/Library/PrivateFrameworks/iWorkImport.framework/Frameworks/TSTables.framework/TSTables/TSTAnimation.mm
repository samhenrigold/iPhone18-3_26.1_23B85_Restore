@interface TSTAnimation
+ (BOOL)deliveryStyleSupportedForExport:(unint64_t)export;
+ (id)newAnimationWithLayout:(id)layout andCellRange:(TSUCellRect)range;
+ (id)newAnimationWithLayout:(id)layout andDeliveryStyle:(unint64_t)style;
+ (id)textureDeliveryStylesLocalized:(BOOL)localized;
+ (unint64_t)p_NumberOfCellBuilds:(id)builds;
+ (unint64_t)p_NumberOfColumnBuilds:(id)builds;
+ (unint64_t)p_NumberOfRowBuilds:(id)builds;
+ (unint64_t)p_stageCountForProvider:(id)provider withAnimationKind:(int)kind;
+ (unint64_t)stageCountForTextureDeliveryStyle:(unint64_t)style tableProvider:(id)provider;
+ (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string;
- (BOOL)clipStrokes;
- (BOOL)drawCellBackground;
- (BOOL)drawCellContent;
- (BOOL)drawStrokes;
- (BOOL)drawTableBackground;
- (BOOL)drawTableName;
- (BOOL)isHidingContentOfCellID:(TSUCellCoord)d;
- (TSTLayout)layout;
- (TSUCellRect)cellRangeAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)cellRangeCount;
- (void)addCellRange:(TSUCellRect)range;
- (void)clearCellRanges;
- (void)dealloc;
- (void)setStage:(unint64_t)stage andFinal:(BOOL)final;
@end

@implementation TSTAnimation

+ (id)newAnimationWithLayout:(id)layout andDeliveryStyle:(unint64_t)style
{
  layoutCopy = layout;
  v6 = objc_alloc_init(TSTAnimation);
  objc_storeWeak(&v6->mLayout, layoutCopy);
  if (style > 0xC)
  {
    v7 = 1;
  }

  else
  {
    v7 = dword_2217E1B98[style];
  }

  sub_221403DE8(v6, v7);

  return v6;
}

+ (id)newAnimationWithLayout:(id)layout andCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  layoutCopy = layout;
  v7 = objc_alloc_init(TSTAnimation);
  objc_storeWeak(&v7->mLayout, layoutCopy);
  sub_221403DE8(v7, 14);
  objc_msgSend_addCellRange_(v7, v8, origin, size);

  return v7;
}

- (void)dealloc
{
  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
  }

  v4.receiver = self;
  v4.super_class = TSTAnimation;
  [(TSTAnimation *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSTAnimation, a2, zone, v3);
  v9 = objc_msgSend_init(v5, v6, v7, v8);
  WeakRetained = objc_loadWeakRetained(&self->mLayout);
  objc_storeWeak((v9 + 64), WeakRetained);

  *(v9 + 8) = self->mKind;
  v11 = malloc_type_malloc(16 * self->mCellRangeCount, 0x1000040451B5BE8uLL);
  *(v9 + 16) = v11;
  memcpy(v11, self->mCellRanges, 16 * self->mCellRangeCount);
  *(v9 + 24) = self->mCellRangeCount;
  *(v9 + 32) = self->mStageCount;
  *(v9 + 40) = self->mStage;
  *(v9 + 48) = self->mFinal;
  *(v9 + 49) = self->mByColumn;
  *(v9 + 50) = self->mByRow;
  *(v9 + 51) = self->mByCell;
  *(v9 + 52) = self->mByContent;
  *(v9 + 53) = self->mByCellRange;
  *(v9 + 54) = self->mByMissingCellRange;
  *(v9 + 55) = self->mReverse;
  *(v9 + 56) = self->mShowsTableChrome;
  *(v9 + 57) = self->mShowsOverlayLayers;
  *(v9 + 58) = self->mExpandBackgroundFill;
  *(v9 + 59) = self->mDrawsBlackAndWhite;
  return v9;
}

+ (unint64_t)p_NumberOfCellBuilds:(id)builds
{
  buildsCopy = builds;
  v7 = objc_msgSend_numberOfColumns(buildsCopy, v4, v5, v6);
  v11 = objc_msgSend_numberOfRows(buildsCopy, v8, v9, v10);
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = v11;
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = objc_msgSend_expandCellRangeToCoverMergedCells_(buildsCopy, v12, v13 | (i << 32), 0x100000001);
          v19 = v17 & 0xFFFF00000000;
          v24 = v17 != 0x7FFFFFFFLL && v19 != 0x7FFF00000000 && v12 >> 32 != 0 && v12 != 0 && v13 == v17 && i << 32 == v19;
          if (v24 && (objc_msgSend_hasHiddenColumnAtIndex_(buildsCopy, v12, i, v18) & 1) == 0)
          {
            v14 += objc_msgSend_hasHiddenRowAtIndex_(buildsCopy, v12, v13, v25) ^ 1;
          }
        }
      }

      ++v13;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (unint64_t)p_NumberOfRowBuilds:(id)builds
{
  buildsCopy = builds;
  v7 = objc_msgSend_numberOfColumns(buildsCopy, v4, v5, v6);
  v11 = objc_msgSend_numberOfRows(buildsCopy, v8, v9, v10);
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = v11;
    while (!v7)
    {
LABEL_31:
      if (++v13 == v15)
      {
        goto LABEL_34;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = objc_msgSend_expandCellRangeToCoverMergedCells_(buildsCopy, v12, v13 | (v16 << 32), 0x100000001);
      if (v17 == 0x7FFFFFFFLL || (v17 & 0xFFFF00000000) == 0x7FFF00000000 || v12 >> 32 == 0 || v12 == 0 || ((HIDWORD(v12) * v12) & 0xFFFFFFFE) == 0)
      {
        if ((objc_msgSend_hasHiddenRowAtIndex_(buildsCopy, v12, v13, v18) & 1) == 0)
        {
          hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(buildsCopy, v12, v16, v23);
LABEL_21:
          if (!hasHiddenColumnAtIndex)
          {
            v16 = 999;
          }

          v14 += hasHiddenColumnAtIndex ^ 1u;
        }
      }

      else if ((v13 == 0x7FFFFFFF || v13 == v17) && (v7 - 1) >= WORD2(v17) && (objc_msgSend_hasHiddenColumnAtIndex_(buildsCopy, v12, v16, v18) & 1) == 0)
      {
        hasHiddenColumnAtIndex = objc_msgSend_hasHiddenRowAtIndex_(buildsCopy, v12, v13, v25);
        goto LABEL_21;
      }

      if (v7 <= ++v16)
      {
        goto LABEL_31;
      }
    }
  }

  v14 = 0;
LABEL_34:

  return v14;
}

+ (unint64_t)p_NumberOfColumnBuilds:(id)builds
{
  buildsCopy = builds;
  v7 = objc_msgSend_numberOfColumns(buildsCopy, v4, v5, v6);
  v11 = objc_msgSend_numberOfRows(buildsCopy, v8, v9, v10);
  if (v7)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v16 = v11 - 1;
    v28 = v7;
    while (!v13)
    {
LABEL_31:
      if (++v14 == v28)
      {
        goto LABEL_34;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = objc_msgSend_expandCellRangeToCoverMergedCells_(buildsCopy, v12, (v14 << 32) | v17, 0x100000001);
      if (v18 == 0x7FFFFFFF || (v18 & 0xFFFF00000000) == 0x7FFF00000000 || v12 >> 32 == 0 || v12 == 0 || ((HIDWORD(v12) * v12) & 0xFFFFFFFE) == 0)
      {
        if ((objc_msgSend_hasHiddenRowAtIndex_(buildsCopy, v12, v17, v19) & 1) == 0)
        {
          hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(buildsCopy, v12, v14, v24);
LABEL_21:
          if (!hasHiddenColumnAtIndex)
          {
            LODWORD(v17) = 999999;
          }

          v15 += hasHiddenColumnAtIndex ^ 1u;
        }
      }

      else if (v16 >= v18 && (v14 == 0x7FFF || v14 == WORD2(v18)) && (objc_msgSend_hasHiddenColumnAtIndex_(buildsCopy, v12, v14, v19) & 1) == 0)
      {
        hasHiddenColumnAtIndex = objc_msgSend_hasHiddenRowAtIndex_(buildsCopy, v12, v17, v26);
        goto LABEL_21;
      }

      v17 = (v17 + 1);
      if (v17 >= v13)
      {
        goto LABEL_31;
      }
    }
  }

  v15 = 0;
LABEL_34:

  return v15;
}

+ (unint64_t)p_stageCountForProvider:(id)provider withAnimationKind:(int)kind
{
  providerCopy = provider;
  v8 = 0;
  if (kind > 7)
  {
    if (kind > 11)
    {
      if ((kind - 12) >= 2)
      {
        if (kind != 14)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v10 = objc_msgSend_p_NumberOfCellBuilds_(TSTAnimation, v5, providerCopy, v6);
    }

    else if ((kind - 8) < 2)
    {
      v10 = objc_msgSend_p_NumberOfColumnBuilds_(TSTAnimation, v5, providerCopy, v6);
    }

    else
    {
      if ((kind - 10) >= 2)
      {
        goto LABEL_21;
      }

      v10 = objc_msgSend_p_NumberOfRowBuilds_(TSTAnimation, v5, providerCopy, v6);
    }

    v8 = v10 + 1;
    goto LABEL_21;
  }

  if (kind <= 3)
  {
    if (kind >= 2)
    {
      if ((kind - 2) < 2)
      {
        v9 = objc_msgSend_p_NumberOfColumnBuilds_(TSTAnimation, v5, providerCopy, v6);
LABEL_18:
        v8 = v9;
        goto LABEL_21;
      }

      goto LABEL_21;
    }

LABEL_20:
    v8 = 1;
    goto LABEL_21;
  }

  if ((kind - 4) < 2)
  {
    v9 = objc_msgSend_p_NumberOfRowBuilds_(TSTAnimation, v5, providerCopy, v6);
    goto LABEL_18;
  }

  if ((kind - 6) < 2)
  {
    v9 = objc_msgSend_p_NumberOfCellBuilds_(TSTAnimation, v5, providerCopy, v6);
    goto LABEL_18;
  }

LABEL_21:

  return v8;
}

+ (id)textureDeliveryStylesLocalized:(BOOL)localized
{
  v82[13] = *MEMORY[0x277D85DE8];
  if (localized)
  {
    v81 = sub_2214AAEA8(self, a2, localized, v3);
    v82[0] = objc_msgSend_localizedStringForKey_value_table_(v81, v4, @"All at Once", &stru_2834BADA0, @"TSTables");
    v80 = v82[0];
    v79 = sub_2214AAEA8(v82[0], v5, v6, v7);
    v78 = objc_msgSend_localizedStringForKey_value_table_(v79, v8, @"By Row", &stru_2834BADA0, @"TSTables");
    v82[1] = v78;
    v77 = sub_2214AAEA8(v78, v9, v10, v11);
    v76 = objc_msgSend_localizedStringForKey_value_table_(v77, v12, @"By Column", &stru_2834BADA0, @"TSTables");
    v82[2] = v76;
    v75 = sub_2214AAEA8(v76, v13, v14, v15);
    v74 = objc_msgSend_localizedStringForKey_value_table_(v75, v16, @"By Cell", &stru_2834BADA0, @"TSTables");
    v82[3] = v74;
    v73 = sub_2214AAEA8(v74, v17, v18, v19);
    v72 = objc_msgSend_localizedStringForKey_value_table_(v73, v20, @"By Row Content", &stru_2834BADA0, @"TSTables");
    v82[4] = v72;
    v71 = sub_2214AAEA8(v72, v21, v22, v23);
    v70 = objc_msgSend_localizedStringForKey_value_table_(v71, v24, @"By Column Content", &stru_2834BADA0, @"TSTables");
    v82[5] = v70;
    v69 = sub_2214AAEA8(v70, v25, v26, v27);
    v68 = objc_msgSend_localizedStringForKey_value_table_(v69, v28, @"By Cell Content", &stru_2834BADA0, @"TSTables");
    v82[6] = v68;
    v67 = sub_2214AAEA8(v68, v29, v30, v31);
    v66 = objc_msgSend_localizedStringForKey_value_table_(v67, v32, @"By Row Reverse", &stru_2834BADA0, @"TSTables");
    v82[7] = v66;
    v65 = sub_2214AAEA8(v66, v33, v34, v35);
    v37 = objc_msgSend_localizedStringForKey_value_table_(v65, v36, @"By Row Content Reverse", &stru_2834BADA0, @"TSTables");
    v82[8] = v37;
    v41 = sub_2214AAEA8(v37, v38, v39, v40);
    v43 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"By Column Reverse", &stru_2834BADA0, @"TSTables");
    v82[9] = v43;
    v47 = sub_2214AAEA8(v43, v44, v45, v46);
    v49 = objc_msgSend_localizedStringForKey_value_table_(v47, v48, @"By Column Content Reverse", &stru_2834BADA0, @"TSTables");
    v82[10] = v49;
    v53 = sub_2214AAEA8(v49, v50, v51, v52);
    v55 = objc_msgSend_localizedStringForKey_value_table_(v53, v54, @"By Cell Reverse", &stru_2834BADA0, @"TSTables");
    v82[11] = v55;
    v59 = sub_2214AAEA8(v55, v56, v57, v58);
    v61 = objc_msgSend_localizedStringForKey_value_table_(v59, v60, @"By Cell Content Reverse", &stru_2834BADA0, @"TSTables");
    v82[12] = v61;
    v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, v82, 13);
  }

  else
  {
    v63 = &unk_28350EED8;
  }

  return v63;
}

+ (unint64_t)stageCountForTextureDeliveryStyle:(unint64_t)style tableProvider:(id)provider
{
  providerCopy = provider;
  if (style > 0xC)
  {
    v7 = objc_msgSend_p_stageCountForProvider_withAnimationKind_(TSTAnimation, v5, providerCopy, 1);
  }

  else
  {
    v7 = objc_msgSend_p_stageCountForProvider_withAnimationKind_(TSTAnimation, v5, providerCopy, dword_2217E1B98[style]);
  }

  v8 = v7;

  return v8;
}

+ (unint64_t)textureDeliveryStyleFromDeliveryString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_class();
  v7 = objc_msgSend_textureDeliveryStylesLocalized_(v4, v5, 0, v6);
  v12 = objc_msgSend_indexOfObject_(v7, v8, stringCopy, v9);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSTAnimation textureDeliveryStyleFromDeliveryString:]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAnimation.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 646, 0, "bad delivery string to delivery style mapping");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    v12 = 0;
  }

  return v12;
}

+ (BOOL)deliveryStyleSupportedForExport:(unint64_t)export
{
  if (export > 0xC)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x5D77u >> dword_2217E1B98[export];
  }

  return v3 & 1;
}

- (void)setStage:(unint64_t)stage andFinal:(BOOL)final
{
  if (self->mStageCount > stage)
  {
    self->mStage = stage;
  }

  self->mFinal = final;
}

- (TSUCellRect)cellRangeAtIndex:(unint64_t)index
{
  if (self->mCellRangeCount <= index)
  {
    size = 0;
    origin = 0x7FFF7FFFFFFFLL;
  }

  else
  {
    v3 = &self->mCellRanges[index];
    origin = v3->origin;
    size = v3->size;
  }

  result.size = size;
  result.origin = origin;
  return result;
}

- (unint64_t)cellRangeCount
{
  WeakRetained = objc_loadWeakRetained(&self->mLayout);
  v4 = sub_2211B6DA4(WeakRetained);
  v6 = v5;

  mKind = self->mKind;
  if (mKind == 14)
  {
    return self->mCellRangeCount;
  }

  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
    self->mCellRanges = 0;
    self->mCellRangeCount = 0;
    mKind = self->mKind;
  }

  if (mKind > 5)
  {
    if (mKind > 0xD)
    {
      goto LABEL_17;
    }

    if (((1 << mKind) & 0x300) == 0)
    {
      if (((1 << mKind) & 0xC00) != 0)
      {
        mStage = self->mStage;
        if (mStage)
        {
          if (self->mReverse)
          {
            mStageCount = self->mStageCount;
            v12 = objc_loadWeakRetained(&self->mLayout);
            v16 = objc_msgSend_layoutEngine(v12, v35, v36, v37);
            sub_221405714(self, v16, mStageCount + ~mStage);
          }

          else
          {
            v12 = objc_loadWeakRetained(&self->mLayout);
            v16 = objc_msgSend_layoutEngine(v12, v55, v56, v57);
            sub_221405714(self, v16, mStage - 1);
          }

          goto LABEL_36;
        }

        goto LABEL_26;
      }

      if (((1 << mKind) & 0x3000) != 0)
      {
        v10 = self->mStage;
        if (v10)
        {
          if (self->mReverse)
          {
            v11 = self->mStageCount;
            v12 = objc_loadWeakRetained(&self->mLayout);
            v16 = objc_msgSend_layoutEngine(v12, v13, v14, v15);
            sub_221405A60(self, v16, v11 + ~v10);
          }

          else
          {
            v12 = objc_loadWeakRetained(&self->mLayout);
            v16 = objc_msgSend_layoutEngine(v12, v58, v59, v60);
            sub_221405A60(self, v16, v10 - 1);
          }

LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_26;
      }

LABEL_17:
      if ((mKind - 6) < 2)
      {
        v23 = self->mStage;
        if (self->mReverse)
        {
          v24 = self->mStageCount;
          v12 = objc_loadWeakRetained(&self->mLayout);
          v22 = objc_msgSend_layoutEngine(v12, v25, v26, v27);
          sub_221405A60(self, v22, v24 + ~v23);
        }

        else
        {
          v12 = objc_loadWeakRetained(&self->mLayout);
          v22 = objc_msgSend_layoutEngine(v12, v43, v44, v45);
          sub_221405A60(self, v22, v23);
        }

LABEL_32:

LABEL_37:
        return self->mCellRangeCount;
      }

      return self->mCellRangeCount;
    }

    v28 = self->mStage;
    if (v28)
    {
      if (self->mReverse)
      {
        v29 = self->mStageCount;
        v12 = objc_loadWeakRetained(&self->mLayout);
        v16 = objc_msgSend_layoutEngine(v12, v30, v31, v32);
        sub_2214052CC(self, v16, v29 + ~v28);
      }

      else
      {
        v12 = objc_loadWeakRetained(&self->mLayout);
        v16 = objc_msgSend_layoutEngine(v12, v52, v53, v54);
        sub_2214052CC(self, v16, v28 - 1);
      }

      goto LABEL_36;
    }

LABEL_26:
    objc_msgSend_addCellRange_(self, v7, v4, v6);
    return self->mCellRangeCount;
  }

  if (mKind < 2)
  {
    goto LABEL_26;
  }

  if ((mKind - 2) < 2)
  {
    v38 = self->mStage;
    if (self->mReverse)
    {
      v39 = self->mStageCount;
      v12 = objc_loadWeakRetained(&self->mLayout);
      v16 = objc_msgSend_layoutEngine(v12, v40, v41, v42);
      sub_2214052CC(self, v16, v39 + ~v38);
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->mLayout);
      v16 = objc_msgSend_layoutEngine(v12, v46, v47, v48);
      sub_2214052CC(self, v16, v38);
    }

    goto LABEL_36;
  }

  if ((mKind - 4) < 2)
  {
    v17 = self->mStage;
    if (self->mReverse)
    {
      v18 = self->mStageCount;
      v12 = objc_loadWeakRetained(&self->mLayout);
      v22 = objc_msgSend_layoutEngine(v12, v19, v20, v21);
      sub_221405714(self, v22, v18 + ~v17);
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->mLayout);
      v22 = objc_msgSend_layoutEngine(v12, v49, v50, v51);
      sub_221405714(self, v22, v17);
    }

    goto LABEL_32;
  }

  return self->mCellRangeCount;
}

- (void)addCellRange:(TSUCellRect)range
{
  origin = range.origin;
  if (range.origin.row != 0x7FFFFFFF && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = range.size;
    if (range.size.numberOfRows)
    {
      if (range.size.numberOfColumns)
      {
        p_mCellRanges = &self->mCellRanges;
        mCellRanges = self->mCellRanges;
        v8 = &p_mCellRanges[1]->origin + 1;
        self->mCellRangeCount = v8;
        v9 = malloc_type_realloc(mCellRanges, 16 * v8, 0x1000040451B5BE8uLL);
        self->mCellRanges = v9;
        v10 = &v9[self->mCellRangeCount];
        v10[-1].origin = origin;
        v10[-1].size = size;
      }
    }
  }
}

- (void)clearCellRanges
{
  p_mCellRanges = &self->mCellRanges;
  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
    *p_mCellRanges = 0;
    p_mCellRanges[1] = 0;
  }
}

- (BOOL)drawTableName
{
  v5 = objc_msgSend_enabled(self, a2, v2, v3);
  if (v5)
  {
    LOBYTE(v5) = !self->mByCellRange && (self->mFinal || self->mStage == 0);
  }

  return v5;
}

- (BOOL)drawTableBackground
{
  v5 = objc_msgSend_enabled(self, a2, v2, v3);
  if (v5)
  {
    LOBYTE(v5) = (objc_msgSend_drawsBlackAndWhite(self, v6, v7, v8) & 1) == 0 && (self->mFinal || self->mByCellRange || !self->mByContent || self->mStage == 0);
  }

  return v5;
}

- (BOOL)drawCellBackground
{
  v5 = objc_msgSend_enabled(self, a2, v2, v3);
  if (v5)
  {
    LOBYTE(v5) = (objc_msgSend_drawsBlackAndWhite(self, v6, v7, v8) & 1) == 0 && (self->mByCellRange || !self->mByContent || self->mStage != 0);
  }

  return v5;
}

- (BOOL)drawCellContent
{
  v5 = objc_msgSend_enabled(self, a2, v2, v3);
  if (v5)
  {
    LOBYTE(v5) = self->mByCellRange || !self->mByContent || self->mStage != 0;
  }

  return v5;
}

- (BOOL)clipStrokes
{
  if (objc_msgSend_enabled(self, a2, v2, v3))
  {
    return self->mByCellRange || !self->mByContent;
  }

  else
  {
    return 0;
  }
}

- (BOOL)drawStrokes
{
  v5 = objc_msgSend_enabled(self, a2, v2, v3);
  if (v5)
  {
    LOBYTE(v5) = self->mFinal || self->mByCellRange || !self->mByContent || self->mStage == 0;
  }

  return v5;
}

- (BOOL)isHidingContentOfCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_enabled(self, a2, *&d, v3);
  if (v6)
  {
    if (!objc_msgSend_drawCellContent(self, v7, v8, v9) || (mCellRangeCount = self->mCellRangeCount) == 0)
    {
LABEL_36:
      LOBYTE(v6) = 1;
      return v6;
    }

    p_size = &self->mCellRanges->size;
    while (1)
    {
      v12 = *p_size;
      v13 = HIDWORD(*p_size);
      if (v13)
      {
        v14 = p_size->numberOfColumns == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = p_size[-1];
        v16 = *&v15 & 0xFFFF00000000;
        if (v15.numberOfColumns != 0x7FFFFFFFLL || v16 == 0x7FFF00000000)
        {
          v19 = v15.numberOfColumns == 0x7FFFFFFF && v16 != 0x7FFF00000000;
          if (v15.numberOfColumns > d.row && !v19)
          {
            goto LABEL_35;
          }

          v20 = v15.numberOfColumns + v13 - 1;
          if (v15.numberOfColumns == 0x7FFFFFFF)
          {
            v20 = 0x7FFFFFFF;
          }

          if (v20 < d.row)
          {
            goto LABEL_35;
          }

          if (v15.numberOfColumns != 0x7FFFFFFFLL && v16 == 0x7FFF00000000)
          {
            goto LABEL_38;
          }
        }

        if (LOWORD(v15.numberOfRows) <= d.column)
        {
          v21 = LOWORD(v15.numberOfRows) == 0x7FFF || v12.numberOfColumns == 0;
          v22 = v21 ? 0x7FFF : LOWORD(v12.numberOfColumns) + LOWORD(v15.numberOfRows) - 1;
          if (v22 >= d.column)
          {
LABEL_38:
            LOBYTE(v6) = 0;
            return v6;
          }
        }
      }

LABEL_35:
      p_size += 2;
      if (!--mCellRangeCount)
      {
        goto LABEL_36;
      }
    }
  }

  return v6;
}

- (TSTLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->mLayout);

  return WeakRetained;
}

@end