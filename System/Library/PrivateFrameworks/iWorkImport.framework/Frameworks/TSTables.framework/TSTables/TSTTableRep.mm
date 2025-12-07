@interface TSTTableRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context;
+ (unint64_t)p_countOfIdenticalCellsBetweenOutgoingTableInfo:(id)info incomingTableInfo:(id)tableInfo;
- (BOOL)hasVisibleCellWarnings;
- (BOOL)isDraggable;
- (BOOL)isFullyVisibleWithBorder:(int)border;
- (BOOL)layoutDirectionIsLeftToRight;
- (BOOL)mustDrawOnMainThreadForInteractiveCanvas;
- (BOOL)p_drawingCheckboxOrRatingInCell:(id)cell cellID:(TSUCellCoord)d;
- (BOOL)p_isTableRenderingRotated;
- (BOOL)p_prefersHDRRendering;
- (BOOL)p_prefersHDRRenderingForFill:(id)fill;
- (BOOL)tappedControlCellAtUnscaledPoint:(CGPoint)point;
- (BOOL)tappedStockCellAtUnscaledPoint:(CGPoint)point;
- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithBounds:(SEL)bounds inCell:(CGRect)cell;
- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithColumn:(SEL)column cell:(id)cell cellID:(id)d;
- (CGAffineTransform)transformToCanvas;
- (CGRect)boundsForCellSelection:(TSUCellCoord)selection;
- (CGRect)canvasBoundsForCellRange:(TSUCellRect)range;
- (CGRect)canvasVisibleRect;
- (CGRect)deviceBoundsForCellRange:(TSUCellRect)range;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)naturalBoundsRectForHyperlinkField:(id)field;
- (CGRect)p_alignedLayerFrameForLayoutSpace:(id)space transform:(CGAffineTransform *)transform;
- (CGRect)p_contentFrameWithCellID:(TSUCellCoord)d;
- (CGRect)p_getImageFrameForAnimation:(id)animation;
- (CGRect)p_naturalBoundsRectForHyperlinkField:(id)field cellID:(TSUCellCoord)d column:(id)column contentFrame:(CGRect)frame horizontalAlignmentTransform:(CGAffineTransform *)transform;
- (CGRect)p_scaledCanvasFrame;
- (CGRect)searchSelectionBounds;
- (NSArray)viewsOverlappingTableCells;
- (TSTAnimation)currentAnimation;
- (TSTCanvasReferenceController)canvasReferenceController;
- (TSTCellSelection)selection;
- (TSTLayoutEngine)layoutEngine;
- (TSTSelectionDragController)cellDragController;
- (TSTTableAnimationController)animationController;
- (TSTTableRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSUCellCoord)logicalCellIDForUnscaledCanvasPoint:(CGPoint)point;
- (TSUCellCoord)p_cellIDForHyperlinkField:(id)field;
- (TSUCellRect)zoomToEditVisibleCellRange;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)attachmentCellRepForCellID:(TSUCellCoord)d optionalCell:(id)cell;
- (id)hyperlinkRegions;
- (id)p_cellAtUnscaledPoint:(CGPoint)point;
- (id)p_columnForCellID:(TSUCellCoord)d useCache:(BOOL)cache;
- (id)p_fontColorAtCellID:(TSUCellCoord)d cell:(id)cell;
- (id)textureForDescription:(id)description;
- (void)contentsRectForCellRangeAcrossSpaces:(TSUCellRect)spaces contentsCenterInfo:(id *)info canvasFrame:(CGRect *)frame contentsRect:(CGRect *)rect;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)p_addTexture:(id)texture forAnimationStage:(unint64_t)stage isFinal:(BOOL)final description:(id)description;
- (void)p_drawAnimation:(id)animation inContext:(CGContext *)context;
- (void)p_drawBackgroundFillInLayoutSpace:(id)space gridRange:(id)range context:(CGContext *)context;
- (void)p_drawCheckboxOrRatingInContext:(CGContext *)context viewScale:(double)scale contentFrame:(CGRect)frame cell:(id)cell cellID:(TSUCellCoord)d;
- (void)p_drawFinalElements:(id)elements inContext:(CGContext *)context;
- (void)p_drawGroupingArrowInContext:(CGContext *)context contentFrame:(CGRect)frame cell:(id)cell cellID:(TSUCellCoord)d groupingArrowState:(int64_t)state alignedClipFrame:(CGRect)clipFrame verticalAlignment:(int)alignment wpColumn:(id)self0;
- (void)p_drawLayoutSpace:(id)space dirtyRect:(CGRect)rect inContext:(CGContext *)context;
- (void)p_drawLayoutSpace:(id)space range:(TSUCellRect)range inContext:(CGContext *)context;
- (void)p_drawTableNameInContext:(CGContext *)context animation:(id)animation;
- (void)p_lockAndDrawLayoutSpace:(id)space checkFrameHasWidthAndHeight:(BOOL)height dirtyRect:(CGRect)rect inContext:(CGContext *)context;
- (void)p_removeObservers;
- (void)popAnimation;
- (void)pushAnimation:(id)animation;
- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)setTableChrome:(id)chrome;
- (void)updateChildrenFromLayout;
- (void)updateFromLayout;
- (void)validateStrokesInEditingSpillingTextRange;
- (void)validateVisibleRect;
- (void)willBeRemoved;
@end

@implementation TSTTableRep

- (BOOL)layoutDirectionIsLeftToRight
{
  v4 = objc_msgSend_tableLayout(self, a2, v2, v3);
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v4, v5, v6, v7);

  return IsLeftToRight;
}

- (TSTLayoutEngine)layoutEngine
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_layoutEngine(v4, v5, v6, v7);

  return v8;
}

- (CGAffineTransform)transformToCanvas
{
  objc_msgSend_frameInUnscaledCanvas(self, a3, v3, v4);

  return CGAffineTransformMakeTranslation(retstr, v6, v7);
}

- (CGRect)canvasVisibleRect
{
  v4 = objc_msgSend_canvas(self, a2, v2, v3);
  objc_msgSend_visibleUnscaledRectForClippingReps(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (TSTCellSelection)selection
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  isDynamicallyChangingSelection = objc_msgSend_isDynamicallyChangingSelection(v5, v6, v7, v8);

  if (isDynamicallyChangingSelection)
  {
    v13 = objc_msgSend_layoutEngine(self, v10, v11, v12);
    v17 = objc_msgSend_dynamicSelection(v13, v14, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_editorSelection(self, v10, v11, v12);
  }

  return v17;
}

- (id)attachmentCellRepForCellID:(TSUCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  v10 = objc_msgSend_tableLayout(self, v7, v8, v9);
  v12 = objc_msgSend_attachmentCellLayoutForCellID_optionalCell_(v10, v11, *&d, cellCopy);

  if (v12)
  {
    objc_opt_class();
    v16 = objc_msgSend_canvas(self, v13, v14, v15);
    v19 = objc_msgSend_repForLayout_(v16, v17, v12, v18);
    v20 = TSUCheckedDynamicCast();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)hasVisibleCellWarnings
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  hasImportWarnings = objc_msgSend_hasImportWarnings(v5, v6, v7, v8);

  if (hasImportWarnings)
  {
    v13 = 1;
  }

  else
  {
    v14 = objc_msgSend_tableLayout(self, v10, v11, v12);
    v40 = sub_2211BB074(v14);

    v18 = objc_msgSend_invalidRegion(TSTCellRegion, v15, v16, v17);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = v40;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v46, v50, 16);
    if (v24)
    {
      v25 = *v47;
      do
      {
        v26 = 0;
        v27 = v18;
        do
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v28 = *(*(&v46 + 1) + 8 * v26);
          v29 = objc_msgSend_tableLayout(self, v21, v22, v23, v40);
          v30 = sub_2211BA768(v29, v28);
          v32 = v31;

          v18 = objc_msgSend_region_addingRange_(TSTCellRegion, v33, v27, v30, v32);

          ++v26;
          v27 = v18;
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v46, v50, 16);
      }

      while (v24);
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v37 = objc_msgSend_tableInfo(self, v34, v35, v36);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2216E4E64;
    v41[3] = &unk_27845DD70;
    v41[4] = &v42;
    objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v37, v38, v18, 0, 0x1000000, v41);

    v13 = *(v43 + 24);
    _Block_object_dispose(&v42, 8);
  }

  return v13 & 1;
}

- (NSArray)viewsOverlappingTableCells
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v2;
}

- (BOOL)p_isTableRenderingRotated
{
  v4 = objc_msgSend_layout(self, a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    objc_msgSend_transformInRoot(v4, v5, v6, v7);
  }

  TSUTransformAngleInRadians();
  return v9 != 0.0;
}

- (CGRect)layerFrameInScaledCanvas
{
  v5 = objc_msgSend_canvas(self, a2, v2, v3);
  objc_msgSend_frameInUnscaledCanvas(self, v6, v7, v8);
  objc_msgSend_convertUnscaledToBoundsRect_(v5, v9, v10, v11);
  objc_msgSend_currentScreenScale(self, v12, v13, v14);
  TSURoundedRectForScale();
  v16 = v15;
  v18 = v17;

  TSUCeilSize();
  v20 = v19;
  v22 = v21;
  v23 = v16;
  v24 = v18;
  result.size.height = v22;
  result.size.width = v20;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 dealloc];
}

- (void)p_removeObservers
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_(v7, v5, self, v6);
}

- (TSTTableRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  v35.receiver = self;
  v35.super_class = TSTTableRep;
  v11 = [(TSWPTextHostRep *)&v35 initWithLayout:layoutCopy canvas:canvasCopy];
  if (v11)
  {
    v12 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v8, v9, v10);
    objc_msgSend_contentsScale(canvasCopy, v13, v14, v15);
    v11->_currentScreenScale = v16;
    v11->_dragByHandleOnly = objc_msgSend_dragByHandleOnly(v12, v17, v18, v19);
    v11->_selectionUsesBezierPath = objc_msgSend_selectionUsesBezierPath(v12, v20, v21, v22);
    v11->_selectsCellOnInitialTap = objc_msgSend_selectsCellOnInitialTap(v12, v23, v24, v25);
    v11->_usesSelectionChromeResizer = objc_msgSend_usesSelectionChromeResizer(v12, v26, v27, v28);
    v29 = objc_alloc_init(MEMORY[0x277CBEB98]);
    visibleFillKnobs = v11->_visibleFillKnobs;
    v11->_visibleFillKnobs = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    animationStack = v11->_animationStack;
    v11->_animationStack = v31;

    v34.receiver = v11;
    v34.super_class = TSTTableRep;
    [(TSWPTextHostRep *)&v34 finishInit];
  }

  return v11;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 willBeRemoved];
}

- (void)updateChildrenFromLayout
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 updateChildrenFromLayout];
}

- (BOOL)isDraggable
{
  v4 = objc_msgSend_info(self, a2, v2, v3);
  isInlineWithText = objc_msgSend_isInlineWithText(v4, v5, v6, v7);

  return isInlineWithText ^ 1;
}

- (CGRect)deviceBoundsForCellRange:(TSUCellRect)range
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)canvasBoundsForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_canvas(self, a2, *&range.origin, *&range.size);
  objc_msgSend_contentsScale(v6, v7, v8, v9);

  objc_msgSend_deviceBoundsForCellRange_(self, v10, origin, size);

  TSUMultiplyRectScalar();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)boundsForCellSelection:(TSUCellCoord)selection
{
  v6 = objc_msgSend_layout(self, a2, *&selection, v3);
  v10 = objc_msgSend_geometry(v6, v7, v8, v9);
  objc_msgSend_size(v10, v11, v12, v13);

  if (selection.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = selection.column;
  }

  if (selection.row == 0x7FFFFFFF)
  {
    v18 = 0xFFFFFFFF00000000;
  }

  else
  {
    v18 = *&selection << 32;
  }

  v19 = objc_msgSend_tableLayout(self, v14, v15, v16);
  v20 = sub_2211BC400(v19, v18 | column, ((v18 + 0x100000001) & 0xFFFFFFFF00000000 | column) - 0x100000000);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)contentsRectForCellRangeAcrossSpaces:(TSUCellRect)spaces contentsCenterInfo:(id *)info canvasFrame:(CGRect *)frame contentsRect:(CGRect *)rect
{
  size = spaces.size;
  origin = spaces.origin;
  x = frame->origin.x;
  y = frame->origin.y;
  width = frame->size.width;
  height = frame->size.height;
  v15 = *(MEMORY[0x277D814E0] + 8);
  v99 = *MEMORY[0x277D814E0];
  v17 = *(MEMORY[0x277D814E0] + 16);
  v16 = *(MEMORY[0x277D814E0] + 24);
  v18 = objc_msgSend_tableLayout(self, a2, *&spaces.origin, *&spaces.size);
  v22 = objc_msgSend_tableLayout(self, v19, v20, v21);
  v26 = sub_2211B4394(v22, v23, v24, v25);

  v30 = sub_2211B7AFC(v18, v27, v28, v29);
  v34 = sub_2211B7AA0(v18, v31, v32, v33);
  v38 = v34;
  if (origin != 0x7FFFFFFF && (origin & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(size) && size && v30 | v34)
  {
    v39 = objc_msgSend_canvas(self, v35, v36, v37);
    objc_msgSend_viewScale(v39, v40, v41, v42);
    v44 = v43;

    memset(&v101, 0, sizeof(v101));
    CGAffineTransformMakeScale(&v101, v44, v44);
    v102.origin.x = sub_2211B7C10(v18, v26);
    v100 = v101;
    v103 = CGRectApplyAffineTransform(v102, &v100);
    v104 = CGRectIntegral(v103);
    v96 = v104.origin.y;
    v97 = v104.origin.x;
    v94 = v104.size.width;
    v95 = v104.size.height;
    if (objc_msgSend_layoutDirectionIsLeftToRight(self, v45, v46, v47))
    {
      if (!v38 || !sub_2211B82D0(v18) || info && info->var1 <= 0.0)
      {
        goto LABEL_32;
      }

      v105.origin.x = x;
      v105.origin.y = y;
      v105.size.width = width;
      v105.size.height = height;
      MinX = CGRectGetMinX(v105);
      v106.origin.y = v96;
      v106.origin.x = v97;
      v106.size.width = v94;
      v106.size.height = v95;
      if (MinX >= CGRectGetMinX(v106))
      {
        goto LABEL_32;
      }

      v52 = objc_msgSend_cellRange(v38, v49, v50, v51);
      v54 = sub_221119E0C(v52, v53, origin, size);
      v56 = v97 - x;
      if (HIDWORD(v55) && v55)
      {
        if (v54 == origin && ((v54 ^ origin) & 0x101FFFF00000000) == 0 && v55 == size || (v107.origin.x = x, v107.origin.y = y, v107.size.width = width, v107.size.height = height, MaxX = CGRectGetMaxX(v107), v108.origin.y = v96, v108.origin.x = v97, v108.size.width = v94, v108.size.height = v95, MaxX >= CGRectGetMinX(v108)))
        {
LABEL_32:
          v56 = width;
          goto LABEL_33;
        }

LABEL_31:
        v17 = 1.00000012;
LABEL_33:
        if (!v30 || !sub_2211B848C(v18) || info && info->var4 <= 0.0 || (v115.origin.x = x, v115.origin.y = y, v115.size.width = v56, v115.size.height = height, MinY = CGRectGetMinY(v115), v116.origin.y = v96, v116.origin.x = v97, v116.size.width = v94, v116.size.height = v95, MinY >= CGRectGetMinY(v116)))
        {
LABEL_72:
          frame->origin.x = x;
          frame->origin.y = y;
          frame->size.width = v56;
          frame->size.height = height;
          rect->origin.x = v99;
          rect->origin.y = v15;
          rect->size.width = v17;
          rect->size.height = v16;
          goto LABEL_73;
        }

        v71 = objc_msgSend_cellRange(v30, v68, v69, v70);
        v73 = sub_221119E0C(v71, v72, origin, size);
        if (HIDWORD(v74) && v74)
        {
          if (v73 != origin || ((v73 ^ origin) & 0x101FFFF00000000) != 0 || v74 != size)
          {
            v117.origin.x = x;
            v117.origin.y = y;
            v117.size.width = v56;
            v117.size.height = height;
            MaxY = CGRectGetMaxY(v117);
            v118.origin.y = v96;
            v118.origin.x = v97;
            v118.size.width = v94;
            v118.size.height = v95;
            if (MaxY < CGRectGetMinY(v118))
            {
              height = v96 - y;
              v16 = 1.00000012;
            }
          }

          goto LABEL_72;
        }

        v119.origin.x = x;
        v119.origin.y = y;
        v119.size.width = v56;
        v119.size.height = height;
        v76 = CGRectGetMaxY(v119);
        v120.origin.y = v96;
        v120.origin.x = v97;
        v120.size.width = v94;
        v120.size.height = v95;
        if (v76 >= CGRectGetMinY(v120))
        {
          if (info && info->var0)
          {
            v77 = v96 - y;
            y = v96;
            var5 = info->var5;
            if (v77 <= var5)
            {
              v15 = v77 / info->var4;
            }

            else
            {
              var4 = info->var4;
              if (height - v77 <= var5 + info->var6)
              {
                v15 = 1.0 - (height - v77) / var4;
              }

              else
              {
                v15 = var5 / var4;
              }
            }
          }

          else
          {
            v77 = v96 - y;
            y = v96;
            v15 = v77 / height;
          }

          v16 = 1.0 - v15;
          height = height - v77;
          goto LABEL_72;
        }

        goto LABEL_58;
      }

      v121.origin.x = x;
      v121.origin.y = y;
      v121.size.width = width;
      v121.size.height = height;
      v80 = CGRectGetMaxX(v121);
      v122.origin.y = v96;
      v122.origin.x = v97;
      v122.size.width = v94;
      v122.size.height = v95;
      if (v80 >= CGRectGetMinX(v122))
      {
        if (info && info->var0)
        {
          var2 = info->var2;
          if (v56 <= var2)
          {
            v83 = v56 / info->var1;
          }

          else
          {
            var1 = info->var1;
            if (width - v56 <= var2 + info->var3)
            {
              v83 = 1.0 - (width - v56) / var1;
            }

            else
            {
              v83 = var2 / var1;
            }
          }
        }

        else
        {
          v83 = v56 / width;
        }

        v99 = v83;
        v17 = 1.0 - v83;
        v56 = width - v56;
        x = v97;
        goto LABEL_33;
      }
    }

    else
    {
      if (!v38 || !sub_2211B82D0(v18) || info && info->var1 <= 0.0)
      {
        goto LABEL_32;
      }

      v109.origin.x = x;
      v109.origin.y = y;
      v109.size.width = width;
      v109.size.height = height;
      v57 = CGRectGetMaxX(v109);
      v110.origin.y = v96;
      v110.origin.x = v97;
      v110.size.width = v94;
      v110.size.height = v95;
      if (v57 <= CGRectGetMaxX(v110))
      {
        goto LABEL_32;
      }

      v61 = objc_msgSend_cellRange(v38, v58, v59, v60);
      v63 = sub_221119E0C(v61, v62, origin, size);
      v65 = v64;
      v111.origin.x = x;
      v111.origin.y = y;
      v111.size.width = width;
      v111.size.height = height;
      v93 = CGRectGetMaxX(v111);
      v112.origin.y = v96;
      v112.origin.x = v97;
      v112.size.width = v94;
      v112.size.height = v95;
      v91 = CGRectGetMaxX(v112);
      if (HIDWORD(v65) && v65)
      {
        if (v63 == origin && ((v63 ^ origin) & 0x101FFFF00000000) == 0 && v65 == size)
        {
          goto LABEL_32;
        }

        v113.origin.x = x;
        v113.origin.y = y;
        v113.size.width = width;
        v113.size.height = height;
        v66 = CGRectGetMaxX(v113);
        v114.origin.y = v96;
        v114.origin.x = v97;
        v114.size.width = v94;
        v114.size.height = v95;
        if (v66 >= CGRectGetMinX(v114))
        {
          goto LABEL_32;
        }

        v56 = v97 - x;
        goto LABEL_31;
      }

      v123.origin.x = x;
      v123.origin.y = y;
      v123.size.width = width;
      v123.size.height = height;
      v84 = CGRectGetMinX(v123);
      v124.origin.y = v96;
      v124.origin.x = v97;
      v124.size.width = v94;
      v124.size.height = v95;
      if (v84 <= CGRectGetMaxX(v124))
      {
        v86 = v93 - v91;
        if (info && info->var0)
        {
          var3 = info->var3;
          if (v86 <= var3)
          {
            v90 = v86 / info->var1;
          }

          else
          {
            v89 = info->var1;
            v88 = info->var2;
            if (width - v86 <= var3 + v88)
            {
              v90 = 1.0 - (width - v86) / v89;
              v99 = v90;
            }

            else
            {
              v90 = v88 / v89;
            }
          }
        }

        else
        {
          v90 = v86 / width;
        }

        v17 = 1.0 - v90;
        v56 = width - v86;
        goto LABEL_33;
      }
    }

LABEL_58:
    v85 = *(MEMORY[0x277CBF3A0] + 16);
    frame->origin = *MEMORY[0x277CBF3A0];
    frame->size = v85;
    rect->origin = xmmword_2217E0840;
    rect->size = *algn_2217E0850;
  }

LABEL_73:
}

- (TSUCellCoord)logicalCellIDForUnscaledCanvasPoint:(CGPoint)point
{
  v7 = sub_2216E5284(self, 0, point.x, point.y);
  if (v7.row != 0x7FFFFFFF && (*&v7 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v8 = objc_msgSend_tableInfo(self, v4, v5, v6);
    v7 = objc_msgSend_expandCellRangeToCoverMergedCells_(v8, v9, *&v7, 0x100000001);
  }

  return v7;
}

- (id)p_columnForCellID:(TSUCellCoord)d useCache:(BOOL)cache
{
  cacheCopy = cache;
  v7 = d.row << 15;
  column = d.column;
  if (!cache)
  {
    v9 = objc_msgSend_layoutEngine(self, a2, *&d, cache);
    v13 = objc_msgSend_cellIDToWPColumnCache(v9, v10, v11, v12);
    v16 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v14, v7 | column, v15);
    objc_msgSend_removeObjectForKey_andWait_(v13, v17, v16, 1);
  }

  v18 = objc_msgSend_layoutEngine(self, a2, *&d, cache);
  v22 = objc_msgSend_cellIDToWPColumnCache(v18, v19, v20, v21);
  v25 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v23, v7 | column, v24);
  v28 = objc_msgSend_objectForKey_(v22, v26, v25, v27);

  if (!v28)
  {
    v32 = objc_msgSend_layoutEngine(self, v29, v30, v31);
    v82 = 0;
    v34 = objc_msgSend_cell_forCellID_(v32, v33, &v82, *&d);
    v35 = v82;

    if (v34)
    {
      v39 = v35;
      v40 = objc_msgSend_valueType(v35, v36, v37, v38);
    }

    else
    {
      v44 = objc_msgSend_tableInfo(self, v36, v37, v38);
      v39 = objc_msgSend_newCell(v44, v45, v46, v47);

      v51 = objc_msgSend_tableInfo(self, v48, v49, v50);
      v55 = objc_msgSend_canvas(self, v52, v53, v54);
      v59 = objc_msgSend_accessController(v55, v56, v57, v58);
      objc_msgSend_getCell_atCellID_holdingReadLockWithAccessController_(v51, v60, v39, *&d, v59);

      v40 = objc_msgSend_valueType(v39, v61, v62, v63);
    }

    if (v40 == 9)
    {
      objc_msgSend_richTextValue(v39, v41, v42, v43);
    }

    else
    {
      objc_msgSend_formattedValue(v39, v41, v42, v43);
    }
    v64 = ;
    v81 = 0;
    v80 = 1;
    v68 = objc_msgSend_tableInfo(self, v65, v66, v67);
    v79 = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v68, v69, v39, *&d, &v81, 0, &v80, &v79);
    v70 = v79;

    v74 = objc_msgSend_layoutEngine(self, v71, v72, v73);
    v76 = v74;
    if (cacheCopy)
    {
      v77 = 15;
    }

    else
    {
      v77 = 0;
    }

    v28 = objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v74, v75, *&d, v39, v64, v81, v80, v70, v77, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
  }

  return v28;
}

- (TSUCellCoord)p_cellIDForHyperlinkField:(id)field
{
  v4 = objc_msgSend_parentStorage(field, a2, field, v3);
  if (objc_msgSend_wpKind(v4, v5, v6, v7) == 5)
  {
    v11 = objc_msgSend_hyperlinkCellID(v4, v8, v9, v10);
  }

  else
  {
    v11 = 0x7FFF7FFFFFFFLL;
  }

  return v11;
}

- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithBounds:(SEL)bounds inCell:(CGRect)cell
{
  height = cell.size.height;
  width = cell.size.width;
  y = cell.origin.y;
  x = cell.origin.x;
  v12 = objc_msgSend_tableInfo(self, bounds, *&a5, v5);
  v16 = objc_msgSend_newCell(v12, v13, v14, v15);

  v17 = MEMORY[0x277CBF2C0];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v18;
  *&retstr->tx = *(v17 + 32);
  v22 = objc_msgSend_tableInfo(self, v19, v20, v21);
  Cell_atCellID = objc_msgSend_getCell_atCellID_(v22, v23, v16, *&a5);

  if (!Cell_atCellID)
  {
    v70 = 0;
    v28 = objc_msgSend_tableInfo(self, v25, v26, v27);
    v69 = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v28, v29, v16, *&a5, 0, &v70, 0, &v69);
    v30 = v69;

    v34 = objc_msgSend_tableInfo(self, v31, v32, v33);
    v37 = objc_msgSend_mergeRangeAtCellID_(v34, v35, *&a5, v36);
    v39 = v38;

    if (v37 == 0x7FFFFFFF || (v37 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v39) || !v39)
    {
      v39 = 0x100000001;
      v37 = a5;
    }

    v43 = objc_msgSend_tableLayout(self, v40, v41, v42, *&height);
    v44 = sub_2211BC850(v43, v37, v39);
    v46 = v45;
    v48 = v47;
    v50 = v49;

    if (v30)
    {
      v54 = objc_msgSend_layoutEngine(self, v51, v52, v53);
      objc_msgSend_edgeInsetsFromPadding_(v54, v55, v30, v56);
      v58 = v57;
      v60 = v59;

      x = x - v58;
      width = v60 + width + v58;
    }

    v61 = v44 + x;
    v71.size.height = rect;
    v71.origin.x = v61;
    v71.origin.y = y + v46;
    v71.size.width = width;
    MaxX = CGRectGetMaxX(v71);
    v72.origin.x = v44;
    v72.origin.y = v46;
    v72.size.width = v48;
    v72.size.height = v50;
    if (MaxX <= CGRectGetMaxX(v72))
    {
      goto LABEL_15;
    }

    v73.origin.x = v61;
    v73.origin.y = y + v46;
    v73.size.width = width;
    v73.size.height = rect;
    v63 = CGRectGetMaxX(v73);
    v74.origin.x = v44;
    v74.origin.y = v46;
    v74.size.width = v48;
    v74.size.height = v50;
    v64 = v63 - CGRectGetMaxX(v74);
    if (v70 == 1)
    {
      v65 = -v64;
    }

    else
    {
      if (v70 != 2)
      {
LABEL_15:

        goto LABEL_16;
      }

      v65 = v64 * -0.5;
    }

    CGAffineTransformMakeTranslation(retstr, v65, 0.0);
    goto LABEL_15;
  }

LABEL_16:

  return result;
}

- (CGRect)naturalBoundsRectForHyperlinkField:(id)field
{
  fieldCopy = field;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v11 = objc_msgSend_p_cellIDForHyperlinkField_(self, v9, fieldCopy, v10);
  v15 = objc_msgSend_p_columnForCellID_useCache_(self, v12, v11, 0);
  if (v15)
  {
    objc_msgSend_p_contentFrameWithCellID_(self, v13, v11, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    objc_msgSend_p_horizontalAlignmentTransformForHyperlinkWithColumn_cell_cellID_(self, v24, v15, 0, v11);
    v34[0] = v35;
    v34[1] = v36;
    v34[2] = v37;
    objc_msgSend_p_naturalBoundsRectForHyperlinkField_cellID_column_contentFrame_horizontalAlignmentTransform_(self, v25, fieldCopy, v11, v15, v34, v17, v19, v21, v23);
    v5 = v26;
    v6 = v27;
    v7 = v28;
    v8 = v29;
  }

  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)p_naturalBoundsRectForHyperlinkField:(id)field cellID:(TSUCellCoord)d column:(id)column contentFrame:(CGRect)frame horizontalAlignmentTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  v47[1] = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  columnCopy = column;
  v14 = MEMORY[0x277D80EF8];
  v18 = objc_msgSend_range(fieldCopy, v15, v16, v17);
  v20 = objc_msgSend_selectionWithRange_(v14, v19, v18, v19);
  v21 = MEMORY[0x277D80DC0];
  v47[0] = columnCopy;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v47, 1);
  objc_msgSend_boundsRectForSelection_columnArray_includeRuby_includePaginatedAttachments_(v21, v24, v20, v23, 0, 0);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (height >= v32)
  {
    v35 = v32;
  }

  else
  {
    v35 = height;
  }

  v36 = *&transform->c;
  *&v46.a = *&transform->a;
  *&v46.c = v36;
  *&v46.tx = *&transform->tx;
  v37 = v30;
  v33 = x + v26;
  v34 = y + v28;
  v48 = CGRectApplyAffineTransform(*(&v35 - 3), &v46);
  v38 = v48.origin.x;
  v39 = v48.origin.y;
  width = v48.size.width;
  v41 = v48.size.height;

  v42 = v38;
  v43 = v39;
  v44 = width;
  v45 = v41;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGRect)p_contentFrameWithCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_tableLayout(self, a2, *&d, v3);
  v6 = sub_2211BC850(v5, *&d, 0x100000001uLL);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithColumn:(SEL)column cell:(id)cell cellID:(id)d
{
  cellCopy = cell;
  dCopy = d;
  v38 = 0;
  v15 = objc_msgSend_tableInfo(self, v12, v13, v14);
  v19 = v15;
  if (!dCopy)
  {
    dCopy = objc_msgSend_newCell(v15, v16, v17, v18);
  }

  v20 = objc_msgSend_canvas(self, v16, v17, v18);
  v24 = objc_msgSend_accessController(v20, v21, v22, v23);
  objc_msgSend_getCell_atCellID_holdingReadLockWithAccessController_(v19, v25, dCopy, *&a6, v24);

  objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v19, v26, dCopy, *&a6, &v38, 0, 0, 0);
  v30 = MEMORY[0x277CBF2C0];
  v31 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v31;
  *&retstr->tx = *(v30 + 32);
  if ((v38 & 1) == 0)
  {
    objc_msgSend_typographicBounds(cellCopy, v27, v28, v29);
    objc_msgSend_p_horizontalAlignmentTransformForHyperlinkWithBounds_inCell_(self, v32, *&a6, v33);
    *&retstr->a = v35;
    *&retstr->c = v36;
    *&retstr->tx = v37;
  }

  return result;
}

- (id)hyperlinkRegions
{
  v33.receiver = self;
  v33.super_class = TSTTableRep;
  hyperlinkRegions = [(TSDRep *)&v33 hyperlinkRegions];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
  v11 = v7;
  if (hyperlinkRegions)
  {
    objc_msgSend_addObjectsFromArray_(v7, v8, hyperlinkRegions, v10);
  }

  v12 = objc_msgSend_tableInfo(self, v8, v9, v10);
  v16 = objc_msgSend_tableLayout(self, v13, v14, v15);
  v17 = sub_2211B6DA4(v16);
  v19 = v18;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_2216E6C10;
  v30 = &unk_27845E3A8;
  selfCopy = self;
  v20 = v11;
  v32 = v20;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v12, v21, v17, v19, 0, 0x80000, &v27);

  v25 = objc_msgSend_copy(v20, v22, v23, v24, v27, v28, v29, v30, selfCopy);

  return v25;
}

- (void)updateFromLayout
{
  v5 = objc_msgSend_tableLayout(self, a2, v2, v3);
  v9 = objc_msgSend_canvas(self, v6, v7, v8);
  objc_msgSend_viewScale(v9, v10, v11, v12);
  v14 = v13;

  sub_2211B86D0(v5, v14, v15, v16, v17);
  v21 = objc_msgSend_canvas(self, v18, v19, v20);
  objc_msgSend_contentsScale(v21, v22, v23, v24);
  sub_2216E538C(self, v14, v25);

  objc_msgSend_validateVisibleRect(self, v26, v27, v28);
  v32 = objc_msgSend_layoutEngine(v5, v29, v30, v31);
  v36 = objc_msgSend_cellRange(v32, v33, v34, v35);
  v38 = v37;

  v42 = objc_msgSend_dirtyCellRegionGatherer(self, v39, v40, v41);
  v46 = objc_msgSend_gatheredCellRegion(v42, v43, v44, v45);

  v50 = objc_msgSend_layoutEngine(self, v47, v48, v49);
  if (objc_msgSend_emptyFilteredTable(v50, v51, v52, v53))
  {
    isValid = objc_msgSend_isValid(v46, v54, v55, v56);

    if (isValid)
    {
      v59 = objc_msgSend_regionFromRange_(TSTCellRegion, v58, v36, v38);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v59 = objc_msgSend_regionByIntersectingRange_(v46, v58, v36, v38);
LABEL_6:
  v60 = v59;

  v64 = objc_msgSend_gatherer(TSTCellRegionGatherer, v61, v62, v63);
  objc_msgSend_setDirtyCellRegionGatherer_(self, v65, v64, v66);

  if ((objc_msgSend_isTableNameValid(self, v67, v68, v69) & 1) == 0)
  {
    objc_msgSend_setTableNameValid_(self, v70, 1, v71);
  }

  v72.receiver = self;
  v72.super_class = TSTTableRep;
  [(TSDRep *)&v72 updateFromLayout];
}

- (void)validateStrokesInEditingSpillingTextRange
{
  v5 = objc_msgSend_tableLayout(self, a2, v2, v3);
  v9 = objc_msgSend_editingSpillingTextRange(v5, v6, v7, v8);
  v11 = v10;
  EditingSpillingTextRange = objc_msgSend_prevEditingSpillingTextRange(v5, v10, v12, v13);
  v16 = v15;
  objc_msgSend_setPrevEditingSpillingTextRange_(v5, v15, v9, v11);
  v17 = sub_2211B6DA4(v5);
  v19 = v18;
  v20 = sub_221119E0C(v9, v11, v17, v18);
  v22 = v21;
  v25 = objc_msgSend_layoutEngine(self, v21, v23, v24);
  v26 = sub_221119E0C(EditingSpillingTextRange, v16, v17, v19);
  objc_msgSend_clearDynamicStrokesForCellRange_(v25, v27, v26, v27);

  v31 = objc_msgSend_layoutEngine(self, v28, v29, v30);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2216E744C;
  v33[3] = &unk_278468A80;
  v33[5] = v20;
  v33[6] = v22;
  v33[4] = self;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v31, v32, v20, v22, 128, 536871936, v33);
}

- (void)validateVisibleRect
{
  v7 = objc_msgSend_tableLayout(self, a2, v2, v3);
  objc_msgSend_validate(v7, v4, v5, v6);
}

- (BOOL)p_prefersHDRRenderingForFill:(id)fill
{
  fillCopy = fill;
  if (fillCopy)
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v4, v5, v6);
      v12 = objc_msgSend_imageData(v7, v9, v10, v11);
      v14 = objc_msgSend_providerForData_shouldValidate_(v8, v13, v12, 1);

      v18 = objc_msgSend_prefersHDRRendering(v14, v15, v16, v17);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)p_prefersHDRRendering
{
  v5 = objc_msgSend_tableLayout(self, a2, v2, v3);
  v9 = objc_msgSend_tableInfo(v5, v6, v7, v8);
  v172 = 0;
  v173 = &v172;
  v174 = 0x2020000000;
  v175 = 0;
  v13 = objc_msgSend_range(v9, v10, v11, v12);
  v171[0] = MEMORY[0x277D85DD0];
  v171[1] = 3221225472;
  v171[2] = sub_2216E82DC;
  v171[3] = &unk_278464090;
  v171[4] = v9;
  v171[5] = self;
  v171[6] = &v172;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v9, v14, v13, v14, 0, 2048, v171);
  v18 = objc_msgSend_bodyCellStyle(v9, v15, v16, v17);
  v21 = objc_msgSend_valueForProperty_(v18, v19, 898, v20);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v22, v21, v23))
  {
    goto LABEL_10;
  }

  v27 = objc_msgSend_headerRowCellStyle(v9, v24, v25, v26);
  v30 = objc_msgSend_valueForProperty_(v27, v28, 898, v29);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v31, v30, v32))
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v36 = objc_msgSend_headerColumnCellStyle(v9, v33, v34, v35);
  v39 = objc_msgSend_valueForProperty_(v36, v37, 898, v38);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v40, v39, v41))
  {
LABEL_8:

    goto LABEL_9;
  }

  v170 = objc_msgSend_footerRowCellStyle(v9, v42, v43, v44);
  v47 = objc_msgSend_valueForProperty_(v170, v45, 898, v46);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v48, v47, v49))
  {
LABEL_7:

    goto LABEL_8;
  }

  v169 = objc_msgSend_categoryLevel1CellStyle(v9, v50, v51, v52);
  v168 = objc_msgSend_valueForProperty_(v169, v53, 898, v54);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v55, v168, v56))
  {

    goto LABEL_7;
  }

  v167 = objc_msgSend_categoryLevel2CellStyle(v9, v57, v58, v59);
  v166 = objc_msgSend_valueForProperty_(v167, v62, 898, v63);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v64, v166, v65))
  {
    v69 = 1;
  }

  else
  {
    v165 = objc_msgSend_categoryLevel3CellStyle(v9, v66, v67, v68);
    v164 = objc_msgSend_valueForProperty_(v165, v70, 898, v71);
    if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v72, v164, v73))
    {
      v69 = 1;
    }

    else
    {
      v163 = objc_msgSend_categoryLevel4CellStyle(v9, v74, v75, v76);
      v162 = objc_msgSend_valueForProperty_(v163, v77, 898, v78);
      if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v79, v162, v80))
      {
        v69 = 1;
      }

      else
      {
        v161 = objc_msgSend_categoryLevel5CellStyle(v9, v81, v82, v83);
        v160 = objc_msgSend_valueForProperty_(v161, v84, 898, v85);
        if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v86, v160, v87))
        {
          v69 = 1;
        }

        else
        {
          v159 = objc_msgSend_labelLevel1CellStyle(v9, v88, v89, v90);
          v158 = objc_msgSend_valueForProperty_(v159, v91, 898, v92);
          if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v93, v158, v94))
          {
            v69 = 1;
          }

          else
          {
            v157 = objc_msgSend_labelLevel2CellStyle(v9, v95, v96, v97);
            v156 = objc_msgSend_valueForProperty_(v157, v98, 898, v99);
            if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v100, v156, v101))
            {
              v69 = 1;
            }

            else
            {
              v155 = objc_msgSend_labelLevel3CellStyle(v9, v102, v103, v104);
              v154 = objc_msgSend_valueForProperty_(v155, v105, 898, v106);
              if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v107, v154, v108))
              {
                v69 = 1;
              }

              else
              {
                v153 = objc_msgSend_labelLevel4CellStyle(v9, v109, v110, v111);
                v152 = objc_msgSend_valueForProperty_(v153, v112, 898, v113);
                if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v114, v152, v115))
                {
                  v69 = 1;
                }

                else
                {
                  v151 = objc_msgSend_labelLevel5CellStyle(v9, v116, v117, v118);
                  v150 = objc_msgSend_valueForProperty_(v151, v119, 898, v120);
                  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v121, v150, v122))
                  {
                    v69 = 1;
                  }

                  else
                  {
                    v149 = objc_msgSend_pivotBodySummaryRowCellStyle(v9, v123, v124, v125);
                    v148 = objc_msgSend_valueForProperty_(v149, v126, 898, v127);
                    if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v128, v148, v129))
                    {
                      v69 = 1;
                    }

                    else
                    {
                      v147 = objc_msgSend_pivotBodySummaryColumnCellStyle(v9, v130, v131, v132);
                      v146 = objc_msgSend_valueForProperty_(v147, v133, 898, v134);
                      if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v135, v146, v136))
                      {
                        v69 = 1;
                      }

                      else
                      {
                        v145 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v9, v137, v138, v139);
                        v144 = objc_msgSend_valueForProperty_(v145, v140, 898, v141);
                        v69 = objc_msgSend_p_prefersHDRRenderingForFill_(self, v142, v144, v143);
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

  if ((v69 & 1) == 0)
  {
    v60 = *(v173 + 24);
    goto LABEL_12;
  }

LABEL_11:
  v60 = 1;
  *(v173 + 24) = 1;
LABEL_12:
  _Block_object_dispose(&v172, 8);

  return v60 & 1;
}

- (BOOL)isFullyVisibleWithBorder:(int)border
{
  borderCopy = border;
  objc_msgSend_canvasVisibleRect(self, a2, *&border, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v17 = objc_msgSend_tableLayout(self, v14, v15, v16);
  v22.origin.x = sub_2211B89E4(v17, v18, v19, v20);
  v24 = CGRectInset(v22, -borderCopy, -borderCopy);
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  LOBYTE(borderCopy) = CGRectContainsRect(v23, v24);

  return borderCopy;
}

- (void)setTableChrome:(id)chrome
{
  chromeCopy = chrome;
  tableChrome = self->_tableChrome;
  v9 = chromeCopy;
  if (tableChrome != chromeCopy)
  {
    objc_msgSend_willBeRemoved(tableChrome, chromeCopy, v6, v7);
    objc_storeStrong(&self->_tableChrome, chrome);
  }
}

- (TSTAnimation)currentAnimation
{
  v4 = objc_msgSend_animationStack(self, a2, v2, v3);
  v8 = objc_msgSend_lastObject(v4, v5, v6, v7);

  return v8;
}

- (void)pushAnimation:(id)animation
{
  animationCopy = animation;
  v7 = objc_msgSend_animationStack(self, v4, v5, v6);
  objc_msgSend_tsu_push_(v7, v8, animationCopy, v9);
}

- (void)popAnimation
{
  v8 = objc_msgSend_animationStack(self, a2, v2, v3);
  v7 = objc_msgSend_tsu_pop(v8, v4, v5, v6);
}

- (void)p_addTexture:(id)texture forAnimationStage:(unint64_t)stage isFinal:(BOOL)final description:(id)description
{
  finalCopy = final;
  textureCopy = texture;
  descriptionCopy = description;
  v13 = objc_msgSend_tableLayout(self, v10, v11, v12);
  v17 = objc_msgSend_layoutEngine(self, v14, v15, v16);
  v21 = objc_msgSend_deliveryStyle(descriptionCopy, v18, v19, v20, v17);
  v23 = objc_msgSend_newAnimationWithLayout_andDeliveryStyle_(TSTAnimation, v22, v13, v21);
  objc_msgSend_setStage_andFinal_(v23, v24, stage, finalCopy);
  v28 = objc_msgSend_canvas(self, v25, v26, v27);
  LODWORD(description) = objc_msgSend_shouldSuppressBackgrounds(v28, v29, v30, v31);

  if (description)
  {
    objc_msgSend_setDrawsBlackAndWhite_(v23, v32, 1, v34);
    objc_msgSend_setExpandBackgroundFill_(v23, v35, 0, v36);
  }

  v37 = objc_msgSend_canvas(self, v32, v33, v34);
  objc_msgSend_viewScale(v37, v38, v39, v40);
  v42 = v41;

  sub_2216E538C(self, v42, 1.0);
  objc_msgSend_frameInUnscaledCanvas(self, v43, v44, v45);
  objc_msgSend_currentScreenScale(self, v46, v47, v48);
  TSURoundedRectForScale();
  TSUSubtractPoints();
  objc_msgSend_p_getImageFrameForAnimation_(self, v49, v23, v50);
  objc_msgSend_currentScreenScale(self, v51, v52, v53);
  TSURoundedRectForScale();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  TSUCeilSize();
  v87 = v63;
  v88 = v62;
  v105 = 0u;
  memset(v104, 0, sizeof(v104));
  sub_2211B8638(v13, v104, v64, v65, v66);
  v67 = v105;
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = sub_2216E8AF8;
  v95[3] = &unk_278468AA8;
  v95[4] = self;
  v99 = v42;
  v100 = v55;
  v101 = v57;
  v102 = v59;
  v103 = v61;
  v68 = v13;
  v96 = v68;
  v69 = v23;
  v97 = v69;
  v70 = v17;
  v98 = v70;
  v71 = MEMORY[0x223DA1C10](v95);
  v72 = objc_alloc(MEMORY[0x277D803E8]);
  TSUAddPoints();
  v77 = objc_msgSend_initWithSize_offset_renderBlock_(v72, v75, v71, v76, v88, v87, v74 - *&v67, v73 - *(&v67 + 1));
  objc_msgSend_setTextureType_(v77, v78, 5, v79);
  objc_msgSend_setTextureOpacity_(v77, v80, v81, v82, 1.0);
  if (finalCopy)
  {
    objc_msgSend_addFinalTexture_forStage_(textureCopy, v83, v77, stage);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_2216E8D48;
    v91[3] = &unk_278468AD0;
    v92[0] = textureCopy;
    v92[1] = stage;
    objc_msgSend_enumerateChildTexturesForDescription_passingTest_withBlock_(self, v84, descriptionCopy, 0, v91);
    v85 = v92;
LABEL_7:

    goto LABEL_8;
  }

  objc_msgSend_addRenderable_forStage_(textureCopy, v83, v77, stage);
  if (!stage)
  {
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = sub_2216E8D38;
    v93[3] = &unk_278468AD0;
    v94[0] = textureCopy;
    v94[1] = 0;
    objc_msgSend_enumerateChildTexturesForDescription_passingTest_withBlock_(self, v86, descriptionCopy, 0, v93);
    v85 = v94;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  v8 = objc_msgSend_deliveryStyle(descriptionCopy, v5, v6, v7);
  v12 = objc_msgSend_layoutEngine(self, v9, v10, v11);
  v14 = objc_msgSend_stageCountForTextureDeliveryStyle_tableProvider_(TSTAnimation, v13, v8, v12);

  v15 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v15, v16, self, v17);
  isMagicMove = objc_msgSend_isMagicMove(descriptionCopy, v18, v19, v20);
  objc_msgSend_setIsMagicMove_(v15, v22, isMagicMove, v23);
  objc_msgSend_setObjectType_(v15, v24, 5, v25);
  if (objc_msgSend_stage(descriptionCopy, v26, v27, v28))
  {
    v32 = objc_msgSend_stage(descriptionCopy, v29, v30, v31);
    objc_msgSend_p_addTexture_forAnimationStage_isFinal_description_(self, v33, v15, v32 - 1, 1, descriptionCopy);
  }

  if (objc_msgSend_stage(descriptionCopy, v29, v30, v31) < v14)
  {
    v37 = objc_msgSend_stage(descriptionCopy, v34, v35, v36);
    objc_msgSend_p_addTexture_forAnimationStage_isFinal_description_(self, v38, v15, v37, 0, descriptionCopy);
  }

  return v15;
}

+ (unint64_t)p_countOfIdenticalCellsBetweenOutgoingTableInfo:(id)info incomingTableInfo:(id)tableInfo
{
  infoCopy = info;
  tableInfoCopy = tableInfo;
  v10 = objc_msgSend_numberOfColumns(infoCopy, v7, v8, v9);
  if (v10 != objc_msgSend_numberOfColumns(tableInfoCopy, v11, v12, v13))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSTTableRep p_countOfIdenticalCellsBetweenOutgoingTableInfo:incomingTableInfo:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 4616, 0, "numberOfColumns not equal!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v26 = objc_msgSend_numberOfRows(infoCopy, v14, v15, v16);
  if (v26 != objc_msgSend_numberOfRows(tableInfoCopy, v27, v28, v29))
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "+[TSTTableRep p_countOfIdenticalCellsBetweenOutgoingTableInfo:incomingTableInfo:]", v31);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 4617, 0, "numberOfColumns not equal!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
  }

  objc_opt_class();
  v42 = objc_msgSend_cellIteratorWithFlags_searchFlags_(infoCopy, v41, 2, 0x20000000);
  v43 = TSUDynamicCast();

  objc_opt_class();
  v45 = objc_msgSend_cellIteratorWithFlags_searchFlags_(tableInfoCopy, v44, 2, 0x20000000);
  v46 = TSUDynamicCast();

  v49 = 0;
  v50 = 0;
  v51 = 0;
  while (1)
  {
    v71 = v49;
    NextCellData = objc_msgSend_getNextCellData_(v43, v47, &v71, v48);
    v53 = v71;

    if (!NextCellData)
    {
      break;
    }

    v70 = v50;
    v57 = objc_msgSend_getNextCellData_(v46, v54, &v70, v56);
    v58 = v70;

    if (!v57)
    {
      v50 = v58;
      break;
    }

    v59 = objc_msgSend_cell(v53, v54, v55, v56);
    v63 = objc_msgSend_cell(v58, v60, v61, v62);
    v51 += objc_msgSend_hasEqualContentToCell_(v59, v64, v63, v65);

    v49 = v53;
    v50 = v58;
  }

  objc_msgSend_terminate(v46, v54, v55, v56);
  objc_msgSend_terminate(v43, v66, v67, v68);

  return v51;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context
{
  objectCopy = object;
  incomingObjectCopy = incomingObject;
  contextCopy = context;
  v14 = objc_msgSend_tableInfo(objectCopy, v11, v12, v13);
  v18 = objc_msgSend_tableInfo(incomingObjectCopy, v15, v16, v17);
  v20 = objc_msgSend_mixingTypeWithObject_context_(v14, v19, v18, contextCopy);

  v24 = objc_msgSend_tableInfo(objectCopy, v21, v22, v23);
  v31 = objc_msgSend_tableInfo(incomingObjectCopy, v25, v26, v27);
  v32 = 0.0;
  if (v20 == 1)
  {
    goto LABEL_34;
  }

  v33 = objc_msgSend_numberOfColumns(v24, v28, v29, v30);
  if (v33 != objc_msgSend_numberOfColumns(v31, v34, v35, v36))
  {
    goto LABEL_34;
  }

  v40 = objc_msgSend_numberOfRows(v24, v37, v38, v39);
  if (v40 != objc_msgSend_numberOfRows(v31, v41, v42, v43))
  {
    goto LABEL_34;
  }

  v47 = objc_msgSend_numberOfHeaderRows(v24, v44, v45, v46);
  if (v47 != objc_msgSend_numberOfHeaderRows(v31, v48, v49, v50))
  {
    goto LABEL_34;
  }

  v54 = objc_msgSend_numberOfFooterRows(v24, v51, v52, v53);
  if (v54 != objc_msgSend_numberOfFooterRows(v31, v55, v56, v57))
  {
    goto LABEL_34;
  }

  if (v20 == 5)
  {
    v61 = 10.0;
  }

  else
  {
    v61 = 0.0;
  }

  v65 = objc_msgSend_tableName(v24, v58, v59, v60);
  if (!v65)
  {
    v139 = objc_msgSend_tableName(v31, v62, v63, v64);
    if (!v139)
    {
LABEL_22:
      v61 = v61 + 5.0;
      goto LABEL_23;
    }
  }

  v69 = objc_msgSend_tableName(v24, v62, v63, v64);
  if (v69)
  {
    v140 = objc_msgSend_tableName(v31, v66, v67, v68);
    if (v140)
    {
      v138 = objc_msgSend_tableName(v24, v70, v71, v72);
      v76 = objc_msgSend_tableName(v31, v73, v74, v75);
      isEqualToString = objc_msgSend_isEqualToString_(v138, v77, v76, v78);

      if (v65)
      {
      }

      else
      {
      }

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v65)
    {
      goto LABEL_16;
    }
  }

  else if (!v65)
  {
LABEL_16:
  }

LABEL_23:
  v79 = objc_msgSend_tableNameEnabled(v24, v62, v63, v64);
  if (v79 == objc_msgSend_tableNameEnabled(v31, v80, v81, v82))
  {
    v61 = v61 + 1.0;
  }

  hasTableBorder = objc_msgSend_hasTableBorder(v24, v83, v84, v85);
  if (hasTableBorder == objc_msgSend_hasTableBorder(v31, v87, v88, v89))
  {
    v61 = v61 + 1.0;
  }

  hasAlternatingRows = objc_msgSend_hasAlternatingRows(v24, v90, v91, v92);
  if (hasAlternatingRows == objc_msgSend_hasAlternatingRows(v31, v94, v95, v96))
  {
    v61 = v61 + 1.0;
  }

  v100 = objc_msgSend_tableStyle(v24, v97, v98, v99);
  v104 = objc_msgSend_tableStyle(v31, v101, v102, v103);
  v105 = TSDMixingTypeWithObjects();

  if (v105 == 5)
  {
    v61 = v61 + 2.0;
  }

  v109 = objc_msgSend_numberOfColumns(v24, v106, v107, v108);
  v113 = objc_msgSend_numberOfRows(v24, v110, v111, v112);
  v117 = objc_msgSend_tableInfo(objectCopy, v114, v115, v116);
  v121 = objc_msgSend_tableInfo(incomingObjectCopy, v118, v119, v120);
  v123 = objc_msgSend_p_countOfIdenticalCellsBetweenOutgoingTableInfo_incomingTableInfo_(self, v122, v117, v121);
  v124 = (v113 * v109);

  if (v123 > v124)
  {
    v127 = MEMORY[0x277D81150];
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "+[TSTTableRep magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]", v126);
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v130);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v132, v128, v131, 4698, 0, "equalCellCount(%d) > totalCellCount(%d)!", v123, v124);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135);
  }

  v32 = (v61 + v123 / v124 * 5.0) / 25.0;
LABEL_34:

  return v32;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v6 = objc_msgSend_layoutEngine(self, a2, layer, context);
  objc_msgSend_readSafelyUsingBlock_(v6, v4, &unk_2834BAB90, v5);
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy, v5, @"delegate", v6))
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8, v9);
  }

  return v10;
}

- (void)p_drawTableNameInContext:(CGContext *)context animation:(id)animation
{
  animationCopy = animation;
  v10 = objc_msgSend_tableLayout(self, v7, v8, v9);
  v125.origin.x = sub_2211C0188(v10);
  x = v125.origin.x;
  y = v125.origin.y;
  width = v125.size.width;
  height = v125.size.height;
  if (!CGRectIsEmpty(v125) && sub_2211B7A08(v10, v15, v16, v17))
  {
    v18 = TSDCGContextGetPdfTagger();
    v111 = &unk_283599118;
    v19 = TSUProtocolCast();

    if (v19)
    {
      objc_msgSend_beginTableNameForChunk_(v19, v20, self, v22, &unk_283599118);
    }

    v23 = objc_msgSend_tableInfo(self, v20, v21, v22, v111);
    v27 = objc_msgSend_tableName(v23, v24, v25, v26);

    if ((objc_msgSend_isRecursivelyDrawingInContext(self, v28, v29, v30) & 1) == 0 && (objc_msgSend_inPrintPreviewMode(v10, v31, v32, v33) & 1) == 0 && (objc_msgSend_p_isTableRenderingRotated(self, v31, v32, v33) & 1) == 0 && objc_msgSend_enabled(animationCopy, v31, v32, v33))
    {
      objc_msgSend_drawTableName(animationCopy, v31, v32, v33);
    }

    v34 = objc_msgSend_layoutEngine(self, v31, v32, v33);
    v38 = objc_msgSend_tableNameTextEngine(v34, v35, v36, v37);

    isDrawingInFlippedContext = objc_msgSend_isDrawingInFlippedContext(self, v39, v40, v41);
    objc_msgSend_drawText_inContext_minSize_maxSize_anchor_flags_isFlipped_viewScale_(v38, v43, v27, context, 4096, isDrawingInFlippedContext, width, height, width, height, x, y, 1.0);

    if (sub_2211C027C(v10))
    {
      v114 = sub_2211B4394(v10, v44, v45, v46);
      objc_msgSend_lockForRead(v114, v47, v48, v49);
      v53 = objc_msgSend_tableInfo(self, v50, v51, v52);
      v57 = objc_msgSend_tableNameBorderStroke(v53, v54, v55, v56);

      v113 = v57;
      v115 = objc_msgSend_layoutEngine(v10, v58, v59, v60);
      v126.origin.x = sub_2211C03BC(v10, v61, v62, v63);
      v64 = v126.origin.x;
      v65 = v126.origin.y;
      v66 = v126.size.width;
      v67 = v126.size.height;
      MaxX = CGRectGetMaxX(v126);
      v123 = v64;
      v124 = v65;
      v121 = MaxX;
      v122 = v65;
      objc_msgSend_width(v57, v69, v70, v71);
      v120 = v72;
      objc_msgSend_strokeWidthForDrawingWithAlignedWidth_originalWidth_(v114, v73, v74, v75, v72, v72);
      v77 = v76;
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(v114, v78, &v123, &v121, &v120);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(v114, v79, v57, context, v123, v124, v121, v122, v120, v77, *&v64, *&v65, *&v66, *&v67);
      contextCopy = context;
      v83 = objc_msgSend_cellRange(v114, v80, v81, v82);
      v86 = v83;
      v87 = v84;
      v88 = v83 & 0xFFFF00000000;
      if ((v83 & 0xFFFF00000000) != 0x7FFF00000000 && v83 == 0x7FFFFFFF)
      {
        v90 = 0;
      }

      else
      {
        v90 = v83;
      }

      v93 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v115, v84, v90, v85);
      if (v86 != 0x7FFFFFFF && v88 == 0x7FFF00000000)
      {
        v95 = 0;
      }

      else
      {
        v95 = WORD2(v86);
      }

      v98 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v115, v91, v95, v92);
      if (v87)
      {
        v99 = WORD2(v86) == 0x7FFF;
      }

      else
      {
        v99 = 1;
      }

      if (v99)
      {
        v100 = 0x7FFF;
      }

      else
      {
        v100 = v87 + WORD2(v86) - 1;
      }

      v101 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v115, v96, v100, v97);
      objc_msgSend_alignedStrokeFrameForCellRange_(v114, v102, v93 | (v98 << 32), 0x100000001);
      v123 = v64;
      v124 = v124 + v120 * -0.5;
      v118 = v64;
      MinY = CGRectGetMinY(v127);
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(v114, v103, &v123, &v118, &v120);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(v114, v104, v113, contextCopy, v123, v124, v118, MinY, v120, v77, *&v64, *&v65, *&v66, *&v67);
      objc_msgSend_alignedStrokeFrameForCellRange_(v114, v105, v93 | (v101 << 32), 0x100000001);
      v121 = MaxX;
      v122 = v122 + v120 * -0.5;
      v116 = MaxX;
      v117 = CGRectGetMinY(v128);
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(v114, v106, &v121, &v116, &v120);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(v114, v107, v113, contextCopy, v121, v122, v116, v117, v120, v77, *&v64, *&v65, *&v66, *&v67);
      objc_msgSend_unlock(v114, v108, v109, v110);
    }

    if (v19)
    {
      objc_msgSend_endTableNameForChunk_(v19, v44, self, v46);
    }
  }
}

- (CGRect)p_alignedLayerFrameForLayoutSpace:(id)space transform:(CGAffineTransform *)transform
{
  spaceCopy = space;
  v10 = objc_msgSend_tableLayout(self, v7, v8, v9);
  v11 = sub_2211B410C(v10, spaceCopy);
  objc_msgSend_canvasRectForLayoutRect_(spaceCopy, v12, v13, v14, v11);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v26 = objc_msgSend_canvas(self, v23, v24, v25);
  objc_msgSend_convertUnscaledToBoundsRect_(v26, v27, v28, v29, v16, v18, v20, v22);
  v33 = objc_msgSend_canvas(self, v30, v31, v32);
  objc_msgSend_contentsScale(v33, v34, v35, v36);

  v37 = *&transform->c;
  *&v71.a = *&transform->a;
  *&v71.c = v37;
  *&v71.tx = *&transform->tx;
  v38 = v16;
  *&v37 = v18;
  v39 = v20;
  v40 = v22;
  v72 = CGRectApplyAffineTransform(*(&v37 - 8), &v71);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  v48 = objc_msgSend_canvas(self, v45, v46, v47);
  objc_msgSend_convertUnscaledToBoundsRect_(v48, v49, v50, v51, x, y, width, height);
  v55 = objc_msgSend_canvas(self, v52, v53, v54);
  objc_msgSend_contentsScale(v55, v56, v57, v58);
  TSURoundedRectForScale();
  TSUCeilSize();
  v60 = v59;
  v62 = v61;
  TSURoundedRectForScale();
  v64 = v63;
  v66 = v65;

  v67 = v64;
  v68 = v66;
  v69 = v60 + 6.0;
  v70 = v62 + 6.0;
  result.size.height = v70;
  result.size.width = v69;
  result.origin.y = v68;
  result.origin.x = v67;
  return result;
}

- (void)p_drawBackgroundFillInLayoutSpace:(id)space gridRange:(id)range context:(CGContext *)context
{
  var0 = range.var0;
  var1 = range.var1;
  spaceCopy = space;
  v222 = objc_msgSend_tableLayout(self, v7, v8, v9);
  v226 = objc_msgSend_layoutEngine(self, v10, v11, v12);
  isDynamicallyChangingCellFill = objc_msgSend_isDynamicallyChangingCellFill(v226, v13, v14, v15);
  v229 = objc_msgSend_tableInfo(v222, v16, v17, v18);
  v210 = 0;
  v22 = HIDWORD(*&var0);
  v23 = HIDWORD(*&var1);
  if (var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
  {
    v210 = 0;
    if (v22 != 0xFFFFFFFF && v23 != 0xFFFFFFFF && v22 <= v23)
    {
      v210 = ((*&var1 - (*&var0 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (LOWORD(var1.var0) - LOWORD(var0.var0) + 1)) + 0x100000000;
    }
  }

  v24 = LOWORD(var0.var0) << 32;
  if (var0.var0 == -1)
  {
    v24 = 0x7FFF00000000;
  }

  v209 = v24;
  v25 = 0x7FFFFFFFLL;
  if (v22 != 0xFFFFFFFF)
  {
    v25 = HIDWORD(*&var0);
  }

  v211 = v25;
  v205 = objc_msgSend_useBandedFill(v226, v19, v20, v21);
  v230 = objc_msgSend_newCell(v229, v26, v27, v28);
  v228 = objc_msgSend_newCell(v229, v29, v30, v31);
  v225 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33, v34);
  v202 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v35, v36, v37);
  v39 = objc_msgSend_regionFromRange_(TSTCellRegion, v38, v209 | v211, v210);
  hasMergeRangesIntersectingCellRegion = objc_msgSend_hasMergeRangesIntersectingCellRegion_(v229, v40, v39, v41);

  v45 = objc_msgSend_canvas(self, v42, v43, v44);
  if (objc_msgSend_isCanvasInteractive(v45, v46, v47, v48))
  {
    goto LABEL_15;
  }

  v52 = objc_msgSend_canvas(self, v49, v50, v51);
  if (objc_msgSend_isPrinting(v52, v53, v54, v55))
  {

LABEL_15:
LABEL_16:
    v199 = 0;
    goto LABEL_17;
  }

  v194 = objc_msgSend_canvas(self, v56, v57, v58);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v194, v195, v196, v197);

  if (isDrawingIntoPDF)
  {
    goto LABEL_16;
  }

  CGContextBeginTransparencyLayer(context, 0);
  v199 = 1;
LABEL_17:
  if (v22 <= v23)
  {
    v61 = v211 + HIDWORD(v210) - 1;
    v62 = v211 == 0x7FFFFFFF;
    if (v211 == 0x7FFFFFFF)
    {
      v61 = 0x7FFFFFFF;
    }

    v201 = v61;
    v63 = v211 != 0x7FFFFFFF;
    if (v209 == 0x7FFF00000000)
    {
      v62 = 0;
    }

    v216 = v62;
    if (v209 != 0x7FFF00000000)
    {
      v63 = 0;
    }

    v208 = v63;
    if (v210)
    {
      v64 = HIDWORD(v210) != 0;
    }

    else
    {
      v64 = 0;
    }

    v219 = v64;
    if (v210)
    {
      v65 = v209 == 0x7FFF00000000;
    }

    else
    {
      v65 = 1;
    }

    selfCopy = self;
    if (v65)
    {
      v66 = 0x7FFF;
    }

    else
    {
      v66 = WORD2(v209) + v210 - 1;
    }

    v212 = v66;
    v67 = HIDWORD(*&var0);
    v218 = var1.var0;
    v204 = HIDWORD(*&var1);
    while (1)
    {
      v217 = objc_msgSend_fillForRow_(v229, v59, v67, v60);
      if (var0.var0 <= var1.var0)
      {
        break;
      }

LABEL_219:
      v67 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v226, v68, (v67 + 1), v69);

      self = selfCopy;
      if (v67 > v204)
      {
        goto LABEL_220;
      }
    }

    v221 = v67;
    v70 = 0xFFFFFFFF00000000;
    if (v67 != 0x7FFFFFFF)
    {
      v70 = v67 << 32;
    }

    v203 = v70;
    v200 = HIDWORD(v70);
    v72 = v67 >= v211 && v201 >= v67;
    v213 = v72;
    v73 = var0.var0;
    v223 = v67;
    while (1)
    {
      v74 = v221 & 0xFFFF0000FFFFFFFFLL | (v73 << 32);
      if (!hasMergeRangesIntersectingCellRegion)
      {
        break;
      }

      v75 = objc_msgSend_modelCellIDForLayoutCellID_(v226, v68, v221 & 0xFFFF0000FFFFFFFFLL | (v73 << 32), v69);
      v78 = objc_msgSend_mergeRangeAtCellID_(v229, v76, v75, v77);
      if (v78 == 0x7FFFFFFF || (v78 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        break;
      }

      v80 = 0;
      if (!(v68 >> 32))
      {
        goto LABEL_51;
      }

      LOWORD(v81) = v73;
      if (v68)
      {
        v107 = objc_msgSend_layoutCellIDForModelCellID_(v226, v68, v78, v69);
        LODWORD(v67) = v107;
        v81 = HIDWORD(v107);
        v80 = v107 & 0xFFFF000000000000;
      }

LABEL_52:
      v82 = objc_msgSend_tableStyleAreaForCellID_(v226, v68, v74, v69);
      objc_msgSend_getDefaultCell_forTableStyleArea_(v229, v83, v228, v82);
      v87 = objc_msgSend_cellFill(v228, v84, v85, v86);
      v227 = objc_msgSend_fillForColumn_(v229, v88, v81, v89);
      v93 = objc_msgSend_editingSpillingTextRange(v222, v90, v91, v92);
      v95 = 0;
      if (v93 != 0x7FFFFFFF && (v93 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v95 = 0;
        if (v94 >> 32)
        {
          if (v94)
          {
            if (v67 >= v93 && v93 + HIDWORD(v94) - 1 >= v67 && v81 >= WORD2(v93))
            {
              v124 = v94 + WORD2(v93) - 1;
              if (WORD2(v93) == 0x7FFF || v94 == 0)
              {
                v124 = 0x7FFF;
              }

              v95 = v124 >= v81;
            }

            else
            {
              v95 = 0;
            }
          }
        }
      }

      v96 = v81;
      if (objc_msgSend_getCell_atCellID_suppressCellBorder_(v229, v94, v230, v80 | v67 | (v81 << 32), 1))
      {
        objc_msgSend_copyJustStyleAndStrokesToCell_(v228, v97, v230, v98);
      }

      v234[0] = 0;
      v102 = objc_msgSend_cellFillComparedToDefault_suppressCS_isDefault_(v230, v97, v87, 0, v234);
      v103 = v73 << 32;
      if (v234[0] == 1 && v82 == 1)
      {
        v104 = v217;
        if (v217 || (v104 = v227) != 0)
        {
          v105 = v104;
LABEL_67:
          v106 = v105;

          goto LABEL_81;
        }

        if (v205)
        {
          v108 = v96 << 32 == v103 && v223 == v67;
          if (v108 ? objc_msgSend_shouldRowUseBandedFill_(v226, v99, v223, v101) : objc_msgSend_shouldRowUseBandedFill_(v226, v99, v67, v101))
          {
            v105 = objc_msgSend_bandedFillObject(v226, v99, v100, v101);
            goto LABEL_67;
          }
        }
      }

      v106 = v102;
LABEL_81:
      if (v106)
      {
        v110 = v106 == v225;
      }

      else
      {
        v110 = 1;
      }

      v111 = !v110;
      if (((v111 | isDynamicallyChangingCellFill) & v219 & 1) == 0)
      {
        goto LABEL_218;
      }

      if (!v216)
      {
        if (!v213)
        {
          goto LABEL_218;
        }

        if (v208)
        {
          goto LABEL_94;
        }
      }

      if (HIDWORD(v209) <= v73 && v212 >= v73)
      {
LABEL_94:
        v112 = objc_msgSend_layoutEngine(selfCopy, v99, v100, v101);
        v113 = sub_2213AA890(v112, v74);
        v115 = v114;

        if (v95)
        {
          v119 = objc_msgSend_editingSpillingTextRange(v222, v116, v117, v118);
          v121 = v120;
          v122 = sub_221119E0C(v119, v120, v209 | v211, v210);
          v115 = 0x100000001;
          if (v223 == v122)
          {
            v113 = v221 & 0xFFFF0000FFFFFFFFLL | (v73 << 32);
            if (v103 == (v122 & 0xFFFF00000000))
            {
              v113 = v119;
              goto LABEL_114;
            }
          }

          else
          {
            v113 = v221 & 0xFFFF0000FFFFFFFFLL | (v73 << 32);
          }

LABEL_113:
          v126 = v225;

          v121 = v115;
          v106 = v126;
        }

        else
        {
          v121 = 0x100000001;
          if (v113 == 0x7FFFFFFF || (v113 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v115) || !v115)
          {
            v113 = v221 & 0xFFFF0000FFFFFFFFLL | (v73 << 32);
          }

          else
          {
            v123 = sub_221119E0C(v113, v115, v209 | v211, v210);
            if (v223 != v123 || v103 != (v123 & 0xFFFF00000000))
            {
              goto LABEL_113;
            }

            v121 = v115;
          }
        }

LABEL_114:
        v127 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v116, spaceCopy, v118);
        v129 = WORD2(v113);
        if (WORD2(v113) == 0x7FFF)
        {
          LODWORD(v130) = -1;
        }

        else
        {
          LODWORD(v130) = WORD2(v113);
        }

        if (v113 == 0x7FFFFFFF)
        {
          v131 = 0xFFFFFFFF00000000;
        }

        else
        {
          v131 = v113 << 32;
        }

        if (v121)
        {
          LODWORD(v132) = v121 + v130 - 1;
        }

        else
        {
          LODWORD(v132) = -1;
        }

        if (HIDWORD(v121))
        {
          v133 = (v121 - 0x100000000 + v131) >> 32;
        }

        else
        {
          v133 = 0xFFFFFFFFLL;
        }

        v134 = -1;
        if (v129 == 0x7FFF || v132 == -1)
        {
          v135 = -1;
        }

        else
        {
          v135 = -1;
          if (v130 <= v132 && v131 != 0xFFFFFFFF00000000 && v133 != 0xFFFFFFFF)
          {
            v136 = HIDWORD(v131);
            if (v136 <= v133 && v127 != -1 && v128 != -1 && v127 <= v128)
            {
              v137 = HIDWORD(v127);
              if (HIDWORD(v127) != 0xFFFFFFFF)
              {
                v138 = v128 >> 32;
                if (v128 >> 32 != 0xFFFFFFFF && v137 <= v138)
                {
                  v130 = v130 <= v127 ? v127 : v130;
                  v132 = v132 >= v128 ? v128 : v132;
                  if (v130 <= v132)
                  {
                    if (v133 < v138)
                    {
                      v138 = v133;
                    }

                    v139 = v136 <= v137 ? HIDWORD(v127) : v136;
                    if (v139 <= v138)
                    {
                      v135 = v132 | (v138 << 32);
                      v134 = v130 | (v139 << 32);
                      objc_msgSend_alignedFrameForGridRange_(spaceCopy, v128, v134, v135);
                      goto LABEL_154;
                    }
                  }
                }
              }
            }
          }
        }

        objc_msgSend_alignedFrameForGridRange_(spaceCopy, v128, -1, -1);
LABEL_154:
        v144 = v140;
        v145 = v141;
        v146 = v142;
        v147 = v143;
        if (v106 != v225)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((objc_msgSend_isClear(v106, v148, v149, v150) & 1) == 0)
            {
              objc_msgSend_paintRect_inContext_(v106, v99, context, v101, v144, v145, v146, v147);
              objc_opt_class();
              v153 = TSUDynamicCast();
              if (v153)
              {
                v232 = 0;
                v233 = 0;
                v154 = objc_msgSend_objectForKey_(v202, v151, v153, v152);
                v157 = v154;
                if (v154)
                {
                  objc_msgSend_getValue_(v154, v155, &v232, v156);
                }

                v232 = sub_221286760(v232, v233, v74);
                v233 = v158;
                v232 = objc_msgSend_expandCellRangeToCoverMergedCells_(v226, v158, v232, v158);
                v233 = v159;
                v160 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v159, &v232, "{TSUCellRect={TSUCellCoord=ISBB}{?=II}}");
                objc_msgSend_setObject_forKey_(v202, v161, v160, v153);
              }

              goto LABEL_188;
            }
          }

          else
          {
            v162 = MEMORY[0x277CCACA8];
            v163 = HIDWORD(v134);
            if (v134 != -1 || (v164 = @"{invalid, invalid}", v163 != 0xFFFFFFFF))
            {
              if (v134 == -1 || v163 == 0xFFFFFFFF)
              {
                if (v134 == -1)
                {
                  v166 = HIDWORD(v134);
                }

                else
                {
                  v166 = v134;
                }

                if (v134 == -1)
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"{invalid, %u}", v150, v166);
                }

                else
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"{%u, invalid}", v150, v166);
                }
                v165 = ;
              }

              else
              {
                v165 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"{%u, %u}", v150, v134, HIDWORD(v134));
              }

              v164 = v165;
            }

            v167 = v162;
            v168 = HIDWORD(v135);
            if (v135 != -1 || (v169 = @"{invalid, invalid}", v168 != 0xFFFFFFFF))
            {
              if (v135 == -1 || v168 == 0xFFFFFFFF)
              {
                if (v135 == -1)
                {
                  v171 = HIDWORD(v135);
                }

                else
                {
                  v171 = v135;
                }

                if (v135 == -1)
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"{invalid, %u}", v150, v171);
                }

                else
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"{%u, invalid}", v150, v171);
                }
                v170 = ;
              }

              else
              {
                v170 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"{%u, %u}", v150, v135, HIDWORD(v135));
              }

              v169 = v170;
            }

            v153 = objc_msgSend_stringWithFormat_(v167, v148, @"{%@->%@}", v150, v164, v169);

            NSLog(&cfstr_WarningInvalid.isa, v153, v106);
LABEL_188:
          }
        }

        if (isDynamicallyChangingCellFill)
        {
          v172 = objc_msgSend_dynamicCellFillDelegate(v226, v99, v100, v101);
          v175 = objc_msgSend_changingCellFillAtCellID_(v172, v173, v74, v174);

          if (v175)
          {
            if (v121 != 0x100000001)
            {
              v176 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v99, spaceCopy, v101);
              v178 = -1;
              if (v73 == 0x7FFF)
              {
                LODWORD(v179) = -1;
              }

              else
              {
                LODWORD(v179) = v73;
              }

              v180 = -1;
              if (v73 != 0x7FFF && v203 != 0xFFFFFFFF00000000 && v176 != -1 && v177 != -1 && v176 <= v177)
              {
                v181 = HIDWORD(v176);
                if (HIDWORD(v176) != 0xFFFFFFFF)
                {
                  v182 = v177 >> 32;
                  if (v177 >> 32 != 0xFFFFFFFF && v181 <= v182)
                  {
                    v183 = v179 <= v176 ? v176 : v179;
                    v179 = v179 >= v177 ? v177 : v179;
                    if (v183 <= v179)
                    {
                      if (v200 < v182)
                      {
                        v182 = v200;
                      }

                      if (v200 > v181)
                      {
                        v181 = v200;
                      }

                      if (v181 <= v182)
                      {
                        v180 = v179 | (v182 << 32);
                        v178 = v183 | (v181 << 32);
                      }
                    }
                  }
                }
              }

              objc_msgSend_alignedFrameForGridRange_(spaceCopy, v177, v178, v180);
              v144 = v184;
              v145 = v185;
              v146 = v186;
              v147 = v187;
            }

            v188 = objc_msgSend_dynamicCellFillDelegate(v226, v99, v100, v101);
            objc_msgSend_paintRect_inContext_(v188, v189, context, v190, v144, v145, v146, v147);
          }
        }
      }

LABEL_218:
      objc_msgSend_clear(v230, v99, v100, v101);
      objc_msgSend_clear(v228, v191, v192, v193);

      ++v73;
      var1.var0 = v218;
      LODWORD(v67) = v223;
      if (v73 > v218)
      {
        goto LABEL_219;
      }
    }

    v80 = 0;
LABEL_51:
    LOWORD(v81) = v73;
    goto LABEL_52;
  }

LABEL_220:
  if (v199)
  {
    CGContextEndTransparencyLayer(context);
  }

  v231[0] = MEMORY[0x277D85DD0];
  v231[1] = 3221225472;
  v231[2] = sub_2216EBAB4;
  v231[3] = &unk_278468AF8;
  v231[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v202, v59, v231, v60);
}

- (void)p_drawFinalElements:(id)elements inContext:(CGContext *)context
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  elementsCopy = elements;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(elementsCopy, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(elementsCopy);
        }

        objc_msgSend_drawInContext_(*(*(&v12 + 1) + 8 * v11++), v7, context, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(elementsCopy, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)p_drawLayoutSpace:(id)space range:(TSUCellRect)range inContext:(CGContext *)context
{
  size = range.size;
  origin = range.origin;
  v236[8] = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  v11 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v9, spaceCopy, v10);
  if (origin.column == 0x7FFF)
  {
    column = -1;
  }

  else
  {
    column = origin.column;
  }

  if (origin.row == 0x7FFFFFFF)
  {
    v16 = 0xFFFFFFFF00000000;
  }

  else
  {
    v16 = *&origin << 32;
  }

  if (size.numberOfColumns)
  {
    v17 = size.numberOfColumns + column - 1;
  }

  else
  {
    v17 = -1;
  }

  v18 = 0xFFFFFFFFLL;
  if (HIDWORD(*&size))
  {
    v18 = (*&size - 0x100000000 + v16) >> 32;
  }

  if (origin.column != 0x7FFF && v17 != -1 && column <= v17 && v16 != 0xFFFFFFFF00000000 && v18 != 0xFFFFFFFF)
  {
    v19 = HIDWORD(v16);
    if (v19 <= v18 && v11 != -1 && v12 != -1 && v11 <= v12)
    {
      v20 = HIDWORD(v11);
      if (HIDWORD(v11) != 0xFFFFFFFF)
      {
        v21 = v12 >> 32;
        if (v12 >> 32 != 0xFFFFFFFF && v20 <= v21)
        {
          v22 = column <= v11 ? v11 : column;
          v23 = v17 >= v12 ? v12 : v17;
          if (v22 <= v23)
          {
            v34 = v18 >= v21 ? v12 >> 32 : v18;
            v35 = v19 <= v20 ? HIDWORD(v11) : v19;
            if (v35 <= v34 && v35 != 0xFFFFFFFF)
            {
              sub_2216E9F3C(self, spaceCopy, context);
              selfCopy = self;
              v233 = spaceCopy;
              v230 = objc_msgSend_layoutEngine(selfCopy, v37, v38, v39);
              v231 = objc_msgSend_tableInfo(selfCopy, v40, v41, v42);
              v232 = objc_msgSend_array(MEMORY[0x277CBEB18], v43, v44, v45);
              v49 = objc_msgSend_canvas(selfCopy, v46, v47, v48);
              shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v49, v50, v51, v52);

              v234 = objc_msgSend_currentAnimation(selfCopy, v53, v54, v55);
              v59 = objc_msgSend_cellRange(v230, v56, v57, v58);
              if (WORD2(v59) == 0x7FFF)
              {
                v63 = 0xFFFFFFFFLL;
              }

              else
              {
                v63 = WORD2(v59);
              }

              v64 = v59 << 32;
              if (v59 == 0x7FFFFFFF)
              {
                v64 = 0xFFFFFFFF00000000;
              }

              v65 = v64 | v63;
              v66 = (v60 + v63 - 1);
              v67 = (&v60[v64] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v60 >> 32))
              {
                v67 = 0xFFFFFFFF00000000;
              }

              if (!v60)
              {
                v66 = 0xFFFFFFFFLL;
              }

              v236[0] = v65;
              v236[1] = v66 | v67;
              v68 = objc_msgSend_entireHeaderColumnsCellRange(v230, v60, v61, v62);
              if (WORD2(v68) == 0x7FFF)
              {
                v72 = 0xFFFFFFFFLL;
              }

              else
              {
                v72 = WORD2(v68);
              }

              v73 = v68 << 32;
              if (v68 == 0x7FFFFFFF)
              {
                v73 = 0xFFFFFFFF00000000;
              }

              v74 = v73 | v72;
              v75 = (v69 + v72 - 1);
              v76 = (&v69[v73] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v69 >> 32))
              {
                v76 = 0xFFFFFFFF00000000;
              }

              if (!v69)
              {
                v75 = 0xFFFFFFFFLL;
              }

              v236[2] = v74;
              v236[3] = v75 | v76;
              v77 = objc_msgSend_entireHeaderRowsCellRange(v230, v69, v70, v71);
              if (WORD2(v77) == 0x7FFF)
              {
                v81 = 0xFFFFFFFFLL;
              }

              else
              {
                v81 = WORD2(v77);
              }

              v82 = v77 << 32;
              if (v77 == 0x7FFFFFFF)
              {
                v82 = 0xFFFFFFFF00000000;
              }

              v83 = v82 | v81;
              v84 = (v78 + v81 - 1);
              v85 = (&v78[v82] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v78 >> 32))
              {
                v85 = 0xFFFFFFFF00000000;
              }

              if (!v78)
              {
                v84 = 0xFFFFFFFFLL;
              }

              v236[4] = v83;
              v236[5] = v84 | v85;
              v86 = objc_msgSend_entireFooterRowsCellRange(v230, v78, v79, v80);
              v90 = 0;
              if (WORD2(v86) == 0x7FFF)
              {
                v91 = 0xFFFFFFFFLL;
              }

              else
              {
                v91 = WORD2(v86);
              }

              v92 = v86 << 32;
              if (v86 == 0x7FFFFFFF)
              {
                v92 = 0xFFFFFFFF00000000;
              }

              v93 = v92 | v91;
              v94 = (v87 + v91 - 1);
              if (v87 >> 32)
              {
                v95 = (&v87[v92] & 0xFFFFFFFF00000000) - 0x100000000;
              }

              else
              {
                v95 = 0xFFFFFFFF00000000;
              }

              if (!v87)
              {
                v94 = 0xFFFFFFFFLL;
              }

              v236[6] = v93;
              v236[7] = v94 | v95;
              do
              {
                v97 = v236[v90];
                v96 = v236[v90 + 1];
                v99 = v97 == -1 || v96 == -1 || v97 > v96;
                if (v99 || ((v100 = HIDWORD(v97), v101 = HIDWORD(v96), HIDWORD(v97) != 0xFFFFFFFF) ? (v102 = v101 == 0xFFFFFFFF) : (v102 = 1), !v102 ? (v103 = v100 > v101) : (v103 = 1), v103 || (v22 <= v97 ? (v97 = v97) : (v97 = v22), v23 >= v96 ? (v96 = v96) : (v96 = v23), v97 > v96 || (v34 >= v101 ? (v104 = v101) : (v104 = v34), v35 <= v100 ? (v105 = v100) : (v105 = v35), v105 > v104))))
                {
                  v106 = -1;
                  v107 = -1;
                }

                else
                {
                  v107 = v96 | (v104 << 32);
                  v106 = v97 | (v105 << 32);
                }

                v236[v90] = v106;
                v236[v90 + 1] = v107;
                v90 += 2;
              }

              while (v90 != 8);
              v108 = 0;
              v109 = -1;
              LODWORD(v110) = -1;
              LODWORD(v111) = -1;
              v112 = selfCopy;
              do
              {
                v114 = v236[v108];
                v113 = v236[v108 + 1];
                if (v111 == -1 || v109 == -1 || v111 > v109 || v110 == -1 || (v115 = HIDWORD(v109), HIDWORD(v109) == 0xFFFFFFFF) || v115 < v110)
                {
                  v109 = v236[v108 + 1];
                  v111 = v236[v108];
                }

                else if (v114 == -1 || v113 == -1 || v114 > v113 || (v116 = HIDWORD(v114), HIDWORD(v114) == 0xFFFFFFFF) || (v117 = HIDWORD(v113), HIDWORD(v113) == 0xFFFFFFFF) || v116 > v117)
                {
                  LODWORD(v113) = v109;
                  LODWORD(v114) = v111;
                  v111 = v111 | (v110 << 32);
                }

                else
                {
                  if (v111 >= v114)
                  {
                    v114 = v114;
                  }

                  else
                  {
                    v114 = v111;
                  }

                  if (v110 >= v116)
                  {
                    v118 = v116;
                  }

                  else
                  {
                    v118 = v110;
                  }

                  if (v109 <= v113)
                  {
                    v113 = v113;
                  }

                  else
                  {
                    v113 = v109;
                  }

                  if (v115 <= v117)
                  {
                    v119 = v117;
                  }

                  else
                  {
                    v119 = HIDWORD(v109);
                  }

                  v109 = v113 | (v119 << 32);
                  v111 = v114 | (v118 << 32);
                }

                v121 = v114 == -1 || v113 == -1 || v114 > v113;
                if (v121 || (HIDWORD(v111) <= HIDWORD(v109) ? (v122 = HIDWORD(v111) == 0xFFFFFFFF) : (v122 = 1), !v122 ? (v123 = HIDWORD(v109) == 0xFFFFFFFF) : (v123 = 1), v123))
                {
                  v109 = -1;
                  v111 = -1;
                }

                v110 = HIDWORD(v111);
                v108 += 2;
              }

              while (v108 != 8);
              if (v111 == -1)
              {
                goto LABEL_256;
              }

              if (v109 == -1)
              {
                goto LABEL_256;
              }

              if (v111 > v109)
              {
                goto LABEL_256;
              }

              if (v110 == 0xFFFFFFFF)
              {
                goto LABEL_256;
              }

              v124 = HIDWORD(v109);
              if (HIDWORD(v109) == 0xFFFFFFFF || v124 < v110)
              {
                goto LABEL_256;
              }

              v228 = objc_msgSend_enabled(v234, v87, v88, v89);
              if (v228)
              {
                v128 = objc_msgSend_alignedStrokeFramePathForGridRange_transform_inset_reoriginToZero_cornerRadius_(v233, v125, v111, v109, 0, 0, 0.0, 0.0);
                v129 = v128;
                v133 = objc_msgSend_CGPath(v129, v130, v131, v132);
                path = CGPathRetain(v133);
              }

              else
              {
                path = 0;
              }

              if (objc_msgSend_drawTableName(v234, v125, v126, v127))
              {
                objc_msgSend_p_drawTableNameInContext_animation_(selfCopy, v134, context, v234);
              }

              v135 = TSDCGContextGetPdfTagger();
              v225 = &unk_283599118;
              v136 = TSUProtocolCast();

              v227 = v136;
              if (v136)
              {
                objc_msgSend_beginTableLayoutSpace_(v136, v137, v233, v139, &unk_283599118);
              }

              v112 = selfCopy;
              if (!objc_msgSend_enabled(v234, v137, v138, v139, v225) || (v112 = selfCopy, objc_msgSend_drawTableBackground(v234, v140, v141, v142)))
              {
                v143 = objc_msgSend_backgroundFill(v231, v140, v141, v142);
                if (v143)
                {
                  CGContextSaveGState(context);
                  if (v228)
                  {
                    CGContextAddPathSafe();
                    CGContextClip(context);
                  }

                  CGContextSetBlendMode(context, kCGBlendModeClear);
                  objc_msgSend_frame(v233, v144, v145, v146);
                  CGContextFillRect(context, v238);
                  CGContextRestoreGState(context);
                }
              }

              if (HIDWORD(v111))
              {
                v147 = (HIDWORD(v111) - 1);
              }

              else
              {
                v147 = 0;
              }

              v148 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v140, v233, v142);
              if (v111)
              {
                LODWORD(v152) = v111 - 1;
              }

              else
              {
                LODWORD(v152) = 0;
              }

              LODWORD(v153) = v109 + 1;
              v154 = -1;
              v155 = -1;
              if (v109 != -2 && v152 <= v153)
              {
                v156 = v124 + 1;
                if (v124 != 4294967294 && v156 >= v147 && v148 != -1 && v149 != -1 && v148 <= v149)
                {
                  v157 = HIDWORD(v148);
                  if (HIDWORD(v148) != 0xFFFFFFFF)
                  {
                    v158 = v149 >> 32;
                    if (v149 >> 32 != 0xFFFFFFFF && v157 <= v158)
                    {
                      v152 = v152 <= v148 ? v148 : v152;
                      v153 = v153 >= v149 ? v149 : v153;
                      if (v152 <= v153)
                      {
                        if (v156 < v158)
                        {
                          v158 = v124 + 1;
                        }

                        if (v147 <= v157)
                        {
                          v159 = HIDWORD(v148);
                        }

                        else
                        {
                          v159 = v147;
                        }

                        if (v159 <= v158)
                        {
                          v155 = v153 | (v158 << 32);
                          v154 = v152 | (v159 << 32);
                        }
                      }
                    }
                  }
                }
              }

              if ((shouldSuppressBackgrounds & 1) == 0 && (!objc_msgSend_enabled(v234, v149, v150, v151) || objc_msgSend_drawCellBackground(v234, v160, v161, v162)))
              {
                CGContextSaveGState(context);
                if (v228)
                {
                  CGContextAddPathSafe();
                  CGContextClip(context);
                }

                v165 = v154;
                v166 = v155;
                if (v234)
                {
                  if (!objc_msgSend_enabled(v234, v163, v164, v154, v155) || (v169 = objc_msgSend_expandBackgroundFill(v234, v163, v167, v168), v165 = v154, v166 = v155, (v169 & 1) == 0))
                  {
                    v165 = v111;
                    v166 = v109;
                  }
                }

                objc_msgSend_p_drawBackgroundFillInLayoutSpace_gridRange_context_(v112, v163, v233, v165, v166, context);
                CGContextRestoreGState(context);
              }

              if (!objc_msgSend_enabled(v234, v149, v150, v151) || objc_msgSend_drawCellContent(v234, v170, v171, v172))
              {
                CGContextSaveGState(context);
                if (v228)
                {
                  CGContextAddPathSafe();
                  CGContextClip(context);
                }

                if (shouldSuppressBackgrounds)
                {
                  v179 = objc_msgSend_tableLayout(v112, v176, v177, v178);
                  objc_msgSend_beginDynamicMode_(v230, v180, v179, v181);

                  v185 = objc_msgSend_blackColor(MEMORY[0x277D81180], v182, v183, v184);
                  v189 = objc_msgSend_cellRange(v230, v186, v187, v188);
                  objc_msgSend_updateDynamicFontColor_andRange_(v230, v190, v185, v189, v190);
                }

                sub_2216EBCA8(v112, v233, v111, v109, v232, 0, 0, context);
                if (shouldSuppressBackgrounds)
                {
                  v194 = objc_msgSend_layout(v112, v191, v192, v193);
                  objc_msgSend_endDynamicMode_(v230, v195, v194, v196);
                }

                CGContextRestoreGState(context);
              }

              if (objc_msgSend_enabled(v234, v173, v174, v175) && !objc_msgSend_drawStrokes(v234, v197, v198, v199))
              {
                if (!objc_msgSend_enabled(v234, v200, v201, v202))
                {
                  goto LABEL_239;
                }

                CGContextSaveGState(context);
                if (v228)
                {
                  CGContextAddPathSafe();
                  CGContextClip(context);
                }

                v204 = 1;
                if (v154 == -1 || v155 == -1 || v154 > v155 || HIDWORD(v154) == 0xFFFFFFFF || HIDWORD(v155) == 0xFFFFFFFF || HIDWORD(v154) > HIDWORD(v155))
                {
LABEL_238:
                  objc_msgSend_drawStrokesInGridRange_clearStrokes_context_(v233, v203, v154, v155, v204, context);
                  CGContextRestoreGState(context);
LABEL_239:
                  if ((!objc_msgSend_enabled(v234, v205, v206, v207) || objc_msgSend_drawCellContent(v234, v208, v209, v210)) && objc_msgSend_count(v232, v208, v209, v210))
                  {
                    CGContextSaveGState(context);
                    if (v228)
                    {
                      CGContextAddPathSafe();
                      CGContextClip(context);
                    }

                    objc_msgSend_p_drawFinalElements_inContext_(v112, v211, v232, context);
                    CGContextRestoreGState(context);
                  }

                  if ((shouldSuppressBackgrounds & 1) == 0 && (!objc_msgSend_enabled(v234, v208, v209, v210) || objc_msgSend_drawTableBackground(v234, v208, v212, v210)))
                  {
                    v215 = objc_msgSend_backgroundFill(v231, v208, v212, v210);
                    if (v215)
                    {
                      v216 = MEMORY[0x277D81150];
                      v217 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v213, "void TSTTableRepDrawGridRange(TSTTableRep *__strong, TSTLayoutSpace *__strong, TSTGridRange, TSTAnimation *__strong, CGContextRef)", v214);
                      v220 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v218, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v219);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v216, v221, v217, v220, 7221, 0, "background fill is not supported yet");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v222, v223, v224);
                    }
                  }

                  if (path)
                  {
                    CGPathRelease(path);
                  }

                  if (v227)
                  {
                    objc_msgSend_endTableLayoutSpace_(v227, v208, v233, v210);
                  }

LABEL_256:
                  if (v233 && context)
                  {
                    CGContextRestoreGState(context);
                  }

                  goto LABEL_31;
                }
              }

              else
              {
                CGContextSaveGState(context);
                if (v228)
                {
                  CGContextAddPathSafe();
                  CGContextClip(context);
                }

                v204 = 0;
                if (v154 == -1)
                {
                  goto LABEL_238;
                }

                if (v155 == -1)
                {
                  goto LABEL_238;
                }

                if (v154 > v155)
                {
                  goto LABEL_238;
                }

                v204 = 0;
                if (HIDWORD(v154) == 0xFFFFFFFF || HIDWORD(v155) == 0xFFFFFFFF || HIDWORD(v154) > HIDWORD(v155))
                {
                  goto LABEL_238;
                }

                v204 = 0;
              }

              v155 = (v155 & 0xFFFFFFFF00000000 | (v155 + 1)) + 0x100000000;
              goto LABEL_238;
            }
          }
        }
      }
    }
  }

LABEL_31:
  v24 = objc_msgSend_canvas(self, v12, v13, v14);
  objc_msgSend_viewScale(v24, v25, v26, v27);
  v29 = v28;
  objc_msgSend_currentScreenScale(self, v30, v31, v32);
  sub_2216E538C(self, v29, v33);
}

- (void)p_drawLayoutSpace:(id)space dirtyRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v11 = MEMORY[0x277D86228];
  v15 = objc_msgSend_currentAnimation(self, v12, v13, v14);
  v19 = objc_msgSend_enabled(v15, v16, v17, v18);

  if (v19)
  {
    v23 = objc_msgSend_currentAnimation(self, v20, v21, v22);
    v27 = objc_msgSend_cellRangeCount(v23, v24, v25, v26);

    if (!v27)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = 1;
  }

  for (i = 0; i != v27; ++i)
  {
    v29 = objc_msgSend_nearestRangeForLayoutRect_(spaceCopy, v20, v21, v22, x, y, width, height);
    v31 = v30;
    v34 = objc_msgSend_currentAnimation(self, v30, v32, v33);
    v38 = objc_msgSend_enabled(v34, v35, v36, v37);

    if (v38)
    {
      v41 = objc_msgSend_currentAnimation(self, v20, v39, v40);
      v44 = objc_msgSend_cellRangeAtIndex_(v41, v42, i, v43);
      v46 = v45;

      v29 = sub_221119E0C(v29, v31, v44, v46);
      v31 = v47;
      v50 = objc_msgSend_layoutEngine(self, v47, v48, v49);
      LOBYTE(v44) = objc_msgSend_isEntireCellRangeHidden_(v50, v51, v29, v31);

      if (v44)
      {
        continue;
      }
    }

    objc_msgSend_p_drawLayoutSpace_range_inContext_(self, v20, spaceCopy, v29, v31, context);
  }

LABEL_10:
}

- (void)p_lockAndDrawLayoutSpace:(id)space checkFrameHasWidthAndHeight:(BOOL)height dirtyRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  heightCopy = height;
  spaceCopy = space;
  v21 = spaceCopy;
  if (!spaceCopy || !heightCopy)
  {
    if (!spaceCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (objc_msgSend_frameHasWidthAndHeight(spaceCopy, v14, v15, v16))
  {
LABEL_6:
    objc_msgSend_lockForRead(v21, v14, v15, v16);
    objc_msgSend_p_drawLayoutSpace_dirtyRect_inContext_(self, v17, v21, context, x, y, width, height);
    objc_msgSend_unlock(v21, v18, v19, v20);
  }

LABEL_7:
}

- (BOOL)mustDrawOnMainThreadForInteractiveCanvas
{
  v4 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  v8 = objc_msgSend_dynamicContentDelegate(v4, v5, v6, v7);
  if (objc_msgSend_isDynamicallyResizingTableName(v4, v9, v10, v11))
  {
    MustDrawOnMainThread = 1;
  }

  else if (v8)
  {
    MustDrawOnMainThread = objc_msgSend_dynamicContentMustDrawOnMainThread(v8, v12, v13, v14);
  }

  else
  {
    MustDrawOnMainThread = 0;
  }

  return MustDrawOnMainThread;
}

- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v10 = objc_msgSend_tableLayout(self, v7, v8, v9);
  v14 = objc_msgSend_isInGroup(v10, v11, v12, v13);

  if (v14)
  {
    v18 = objc_msgSend_tableLayout(self, v15, v16, v17);
    sub_2211B65A0(v18);
  }

  v19 = objc_msgSend_layoutEngine(self, v15, v16, v17);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2216EF0AC;
  v23[3] = &unk_278468B48;
  contextCopy = context;
  v23[4] = self;
  v20 = testCopy;
  v24 = v20;
  objc_msgSend_readSafelyUsingBlock_(v19, v21, v23, v22);
}

- (void)drawInContext:(CGContext *)context
{
  v6 = objc_msgSend_tableLayout(self, a2, context, v3);
  v10 = objc_msgSend_layoutEngine(self, v7, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2216EF2D8;
  v14[3] = &unk_27845F1A0;
  v14[4] = self;
  v11 = v6;
  v15 = v11;
  contextCopy = context;
  objc_msgSend_readSafelyUsingBlock_(v10, v12, v14, v13);
}

- (CGRect)p_scaledCanvasFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)p_fontColorAtCellID:(TSUCellCoord)d cell:(id)cell
{
  cellCopy = cell;
  v10 = objc_msgSend_tableInfo(self, v7, v8, v9);
  v12 = objc_msgSend_characterFillAtCellID_optionalCell_(v10, v11, *&d, cellCopy);
  v16 = objc_msgSend_blackColor(MEMORY[0x277D81180], v13, v14, v15);
  v20 = objc_msgSend_canvas(self, v17, v18, v19);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v20, v21, v22, v23);

  if ((shouldSuppressBackgrounds & 1) == 0)
  {
    v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26, v27);

    if (v12 == v28)
    {
      v32 = objc_msgSend_textStyle(cellCopy, v29, v30, v31);
      objc_opt_class();
      v35 = objc_msgSend_objectForProperty_(v32, v33, 50, v34);
      v36 = TSUDynamicCast();

      if (v36)
      {
        v40 = objc_msgSend_null(MEMORY[0x277CBEB68], v37, v38, v39);

        if (v36 != v40)
        {
          v44 = objc_msgSend_color(v36, v41, v42, v43);

          v16 = v44;
        }
      }
    }

    else
    {
      objc_msgSend_referenceColor(v12, v29, v30, v31);
      v16 = v32 = v16;
    }
  }

  return v16;
}

- (BOOL)p_drawingCheckboxOrRatingInCell:(id)cell cellID:(TSUCellCoord)d
{
  cellCopy = cell;
  v10 = objc_msgSend_formatType(cellCopy, v7, v8, v9);
  if (v10 == 263)
  {
    LOBYTE(v17) = 1;
  }

  else if (v10 == 267)
  {
    v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
    v17 = objc_msgSend_isCategoryGroupValueCell_(v14, v15, *&d, v16) ^ 1;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)p_drawCheckboxOrRatingInContext:(CGContext *)context viewScale:(double)scale contentFrame:(CGRect)frame cell:(id)cell cellID:(TSUCellCoord)d
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  cellCopy = cell;
  v18 = objc_msgSend_valueType(cellCopy, v15, v16, v17);
  v22 = objc_msgSend_formatType(cellCopy, v19, v20, v21);
  v24 = objc_msgSend_p_fontColorAtCellID_cell_(self, v23, *&d, cellCopy);
  v25 = TSDCGContextGetPdfTagger();
  v26 = TSUProtocolCast();

  if (v22 == 267)
  {
    objc_msgSend_numberDoubleValue(cellCopy, v27, v28, v29, &unk_283599118);
    v35 = v34;
    hasFormula = objc_msgSend_hasFormula(cellCopy, v36, v37, v38);
    v43 = round(v35 + v35) * 0.5;
    if (hasFormula)
    {
      v35 = v43;
      objc_msgSend_beginRatingCell_(v26, v39, v40, v41, v43);
    }

    else
    {
      objc_msgSend_beginRatingCell_(v26, v39, v40, v41, v35);
    }

    v47 = objc_msgSend_CGColor(v24, v44, v45, v46);
    objc_msgSend_renderRating_intoContext_rect_showDots_color_(TSTStarRatingRenderer, v48, context, hasFormula ^ 1u, v47, v35, x, y, width, height);
    objc_msgSend_endRatingCell(v26, v49, v50, v51);
  }

  else if (v22 == 263)
  {
    if (v18 == 6)
    {
      v30 = objc_msgSend_BOOLValue(cellCopy, v27, v28, v29, &unk_283599118);
      objc_msgSend_beginCheckboxCell_(v26, v31, v30, v32, v55);
    }

    else
    {
      v30 = 0;
      objc_msgSend_beginCheckboxCell_(v26, v27, 0, v29, &unk_283599118);
    }

    objc_msgSend_renderCheckbox_viewScale_intoContext_rect_color_(TSTCheckboxRenderer, v33, v30, context, v24, scale, x, y, width, height);
    objc_msgSend_endCheckboxCell(v26, v52, v53, v54);
  }
}

- (void)p_drawGroupingArrowInContext:(CGContext *)context contentFrame:(CGRect)frame cell:(id)cell cellID:(TSUCellCoord)d groupingArrowState:(int64_t)state alignedClipFrame:(CGRect)clipFrame verticalAlignment:(int)alignment wpColumn:(id)self0
{
  height = frame.size.height;
  width = frame.size.width;
  rect = frame.origin.y;
  x = frame.origin.x;
  cellCopy = cell;
  columnCopy = column;
  v21 = objc_msgSend_tableInfo(self, v18, v19, v20);
  v25 = objc_msgSend_layoutEngine(self, v22, v23, v24);
  v28 = objc_msgSend_groupingArrowStateAtCellID_(v25, v26, *&d, v27);

  if (!v28)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTTableRep p_drawGroupingArrowInContext:contentFrame:cell:cellID:groupingArrowState:alignedClipFrame:verticalAlignment:wpColumn:]", v31);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 7613, 0, "should only be called on grouping cells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
  }

  if (objc_msgSend_isCategorized(v21, v29, v30, v31))
  {
    v44 = objc_msgSend_groupLevelAtSummaryRow_(v21, v41, *&d, v43);
    v89 = sub_221446548(v44);
  }

  else if (objc_msgSend_isAPivotTable(v21, v41, v42, v43))
  {
    v89 = sub_221446548(1);
  }

  else
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSTTableRep p_drawGroupingArrowInContext:contentFrame:cell:cellID:groupingArrowState:alignedClipFrame:verticalAlignment:wpColumn:]", v49);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v54, 7621, 0, "should only be called on tables that are grouped");

    v89 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58);
  }

  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v45, v46, v47);
  v61 = objc_msgSend_p_fontColorAtCellID_cell_(self, v60, *&d, cellCopy);
  memset(&v97, 0, sizeof(v97));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v97, context);
  memset(&v96, 0, sizeof(v96));
  v92 = v97;
  CGAffineTransformInvert(&v96, &v92);
  if ((IsLeftToRight & 1) == 0)
  {
    v98.origin.x = x;
    v98.origin.y = rect;
    v98.size.width = width;
    v98.size.height = height;
    CGRectGetMaxX(v98);
  }

  TSURoundedPoint();
  v66 = v65;
  v68 = v67;
  a = v96.a;
  b = v96.b;
  c = v96.c;
  tx = v96.tx;
  ty = v96.ty;
  d = v96.d;
  if (columnCopy)
  {
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    memset(&v92, 0, sizeof(v92));
    objc_msgSend_fontHeightInfoAtCharIndex_(columnCopy, v62, 0, v64);
    if (v92.d <= 0.0)
    {
      objc_msgSend_boundsOfLineFragmentAtIndex_(columnCopy, v71, 0, v72, v92.d);
      CGRectGetMidY(v99);
    }

    else
    {
      objc_msgSend_baselineOfLineFragmentAtIndex_(columnCopy, v71, 0, v72, v92.d);
    }
  }

  else
  {
    v73 = objc_msgSend_layoutEngine(v21, v62, v63, v64);
    objc_msgSend_fittingHeightOfRow_(v73, v74, *&d, v75);
  }

  CGContextSaveGState(context);
  CGContextGetClipBoundingBox(context);
  objc_msgSend_isAPivotTable(v21, v76, v77, v78);
  CGContextClipToRectSafe();
  CGContextTranslateCTM(context, tx + v68 * c + a * v66, ty + v68 * d + b * v66);
  v79 = v89 - 7.0 - 7.0;
  if (!IsLeftToRight)
  {
    v79 = -7.0 - v79;
  }

  CGContextTranslateCTM(context, v79, 0.0);
  v83 = objc_msgSend_CGColor(v61, v80, v81, v82);
  CGContextSetFillColorWithColor(context, v83);
  CGContextSetLineWidth(context, 1.0);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  CGContextAddPathSafe();
  CGPathRelease(Mutable);
  CGContextFillPath(context);
  CGContextStrokePath(context);
  CGContextRestoreGState(context);
}

- (void)p_drawAnimation:(id)animation inContext:(CGContext *)context
{
  animationCopy = animation;
  objc_msgSend_pushAnimation_(self, v6, animationCopy, v7);
  if (objc_msgSend_final(animationCopy, v8, v9, v10))
  {
    v15 = objc_msgSend_stage(animationCopy, v11, v12, v13);
    v16 = 0;
    do
    {
      objc_msgSend_setStage_andFinal_(animationCopy, v14, v16, 1);
      v22 = objc_msgSend_cellRangeCount(animationCopy, v17, v18, v19);
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          v24 = objc_msgSend_cellRangeAtIndex_(animationCopy, v14, i, v21);
          sub_2216EFF88(self, v24, v25, context);
        }
      }

      ++v16;
    }

    while (v16 <= v15);
  }

  else
  {
    v26 = objc_msgSend_cellRangeCount(animationCopy, v11, v12, v13);
    if (v26)
    {
      for (j = 0; j != v26; ++j)
      {
        v28 = objc_msgSend_cellRangeAtIndex_(animationCopy, v14, j, v21);
        sub_2216EFF88(self, v28, v29, context);
      }
    }
  }

  objc_msgSend_popAnimation(self, v14, v20, v21);
}

- (CGRect)p_getImageFrameForAnimation:(id)animation
{
  animationCopy = animation;
  if (objc_msgSend_final(animationCopy, v5, v6, v7))
  {
    v11 = objc_msgSend_tableLayout(self, v8, v9, v10);
    v12 = sub_2211B6DA4(v11);
    v14 = v13;
  }

  else
  {
    v18 = objc_msgSend_cellRangeCount(animationCopy, v8, v9, v10);
    v12 = 0x7FFF7FFFFFFFLL;
    v14 = 0;
    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = objc_msgSend_cellRangeAtIndex_(animationCopy, v15, v19, v17);
        v12 = sub_2211C1FC4(v12, v14, v20, v21);
        v14 = v15;
        ++v19;
      }

      while (v18 != v19);
    }
  }

  if (objc_msgSend_enabled(animationCopy, v15, v16, v17))
  {
    v25 = objc_msgSend_drawTableName(animationCopy, v22, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_2216F01E0(self, v12, v14, v25);
  v30 = sub_2211B4100(v26, v27, v28, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = v30;
  v38 = v32;
  v39 = v34;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)p_cellAtUnscaledPoint:(CGPoint)point
{
  v4 = sub_2216E5284(self, 0, point.x, point.y);
  v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
  v11 = objc_msgSend_cellAtCellID_(v8, v9, v4, v10);

  return v11;
}

- (BOOL)tappedControlCellAtUnscaledPoint:(CGPoint)point
{
  v5 = objc_msgSend_p_cellAtUnscaledPoint_(self, a2, v3, v4, point.x, point.y);
  hasControl = objc_msgSend_hasControl(v5, v6, v7, v8);

  return hasControl;
}

- (BOOL)tappedStockCellAtUnscaledPoint:(CGPoint)point
{
  v5 = objc_msgSend_p_cellAtUnscaledPoint_(self, a2, v3, v4, point.x, point.y);
  hasStockFormulaForStockUI = objc_msgSend_hasStockFormulaForStockUI(v5, v6, v7, v8);

  return hasStockFormulaForStockUI;
}

- (CGRect)searchSelectionBounds
{
  x = self->_searchSelectionBounds.origin.x;
  y = self->_searchSelectionBounds.origin.y;
  width = self->_searchSelectionBounds.size.width;
  height = self->_searchSelectionBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSTSelectionDragController)cellDragController
{
  WeakRetained = objc_loadWeakRetained(&self->_cellDragController);

  return WeakRetained;
}

- (TSTTableAnimationController)animationController
{
  WeakRetained = objc_loadWeakRetained(&self->_animationController);

  return WeakRetained;
}

- (TSTCanvasReferenceController)canvasReferenceController
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasReferenceController);

  return WeakRetained;
}

- (TSUCellRect)zoomToEditVisibleCellRange
{
  p_zoomToEditVisibleCellRange = &self->_zoomToEditVisibleCellRange;
  origin = self->_zoomToEditVisibleCellRange.origin;
  size = p_zoomToEditVisibleCellRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end