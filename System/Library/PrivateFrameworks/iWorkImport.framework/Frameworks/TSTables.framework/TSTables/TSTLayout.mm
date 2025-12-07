@interface TSTLayout
+ (id)findLayoutIfAvailableInSet:(id)set intersectingRow:(unsigned int)row;
- (BOOL)canvasShouldScrollForSelectionPath:(id)path;
- (BOOL)forceParentAutosizeFlagsForTextLayout:(id)layout;
- (BOOL)forceParentAutosizedFrameForTextLayout:(id)layout;
- (BOOL)inspectorGeometryIsAffectedByChangeRecord:(id)record;
- (BOOL)isBeingManipulated;
- (BOOL)isDraggable;
- (BOOL)orderedBefore:(id)before;
- (BOOL)p_getLayoutDirectionLeftToRight;
- (BOOL)p_layoutWhollyContainsGridRange:(id)range;
- (BOOL)shouldShowCaption;
- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference;
- (CGPoint)calculatePointFromSearchReference:(id)reference;
- (CGPoint)calculatePointFromSearchReferenceWithoutValidation:(id)validation;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)minimumPositionOffset;
- (CGRect)_visibleFrameForOverscrolledChildFrame:(CGRect)frame;
- (CGRect)alignedStrokeFrameForRange:(TSUCellRect)range;
- (CGRect)alignmentFrame;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)cellRangeVisibleRect;
- (CGRect)computedEditingCellContentFrame;
- (CGRect)frameForCaptionPositioning;
- (CGRect)maskRectForTextLayout:(id)layout;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGRect)p_autosizedFrameForRichTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)p_autosizedFrameForTextEditingLayout:(id)layout textSize:(CGSize)size;
- (CGRect)p_computeSpillingTextFrameForEditingLayout:(id)layout textSize:(CGSize)size editingSpillRange:(TSUCellRect *)range;
- (CGRect)p_maskRectForRichTextLayout:(id)layout;
- (CGRect)p_maskRectForTextEditingLayout:(id)layout;
- (CGRect)p_nonAutosizedFrameForRichTextLayout:(id)layout;
- (CGRect)p_textFrameForWrappingCell:(TSUCellCoord)cell defaultRowHeight:(BOOL *)height;
- (CGSize)initialTextSize;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)p_rangeUpAndLeftOfIntersectionRangeOfGridRange:(id)range;
- (CGSize)scaleToFit;
- (CGSize)scaleToFitParent;
- (TSTLayout)initWithInfo:(id)info;
- (TSTLayout)initWithInfo:(id)info layoutHint:(id)hint;
- (TSUCellCoord)p_cellIDForWPLayout:(id)layout;
- (TSUCellRect)_floatingCellRangeAtRect:(CGRect)rect inLayoutSpace:(id)space withTransform:(CGAffineTransform *)transform;
- (TSUCellRect)editingSpillingTextRange;
- (TSUCellRect)extendedPartitionRangeSingleSpaceIntersectionWithCellRange:(TSUCellRect)range;
- (TSUCellRect)floatingHeaderColumnRangeAtRect:(CGRect)rect;
- (TSUCellRect)floatingHeaderRowRangeAtRect:(CGRect)rect;
- (TSUCellRect)p_maximumSpillRangeForCellID:(TSUCellCoord)d;
- (TSUCellRect)p_spillRangeForMaskingRichTextLayout:(id)layout;
- (TSUCellRect)p_spillRangeToRightForCellID:(TSUCellCoord)d;
- (TSUCellRect)prevEditingSpillingTextRange;
- (TSWPStorage)tableNameEditingStorage;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (UIEdgeInsets)captionEdgeInsets;
- (UIEdgeInsets)paddingForEditingCell;
- (double)alignedStrokeFrame;
- (double)maxAutoGrowLineWidthForTextLayout:(id)layout;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)tabsRowWidthAndOptionalLeftGap:(double *)gap;
- (double)viewScaleForZoomingToSelectionPath:(id)path targetPointSize:(double)size;
- (id)alignedStrokeFramePathForGridRange:(id)range frameType:(int)type viewScale:(double)scale inset:(double)inset reoriginToZero:(BOOL)zero clipToVisibleRect:(BOOL)rect cornerRadius:(double)radius outMaskPath:(id *)self0;
- (id)alignedStrokeFramePathForRange:(TSUCellRect)range frameType:(int)type viewScale:(double)scale inset:(double)inset reoriginToZero:(BOOL)zero clipToVisibleRect:(BOOL)rect cornerRadius:(double)radius outMaskPath:(id *)self0;
- (id)attachmentCellLayoutForCellID:(TSUCellCoord)d optionalCell:(id)cell;
- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (id)childInfosForChildLayouts;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)initialInfoGeometry;
- (id)inspectorGeometry;
- (id)layoutGeometryFromInfo;
- (id)p_getStyleProvidingAncestorLayout;
- (id)styleProvider;
- (id)styleProviderForTextLayout:(id)layout;
- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference;
- (int)naturalAlignmentForCellID:(TSUCellCoord)d;
- (int)reapCoordinatesChangedMaskForChrome;
- (int)verticalAlignmentForTextLayout:(id)layout;
- (unint64_t)autosizeFlagsForTextLayout:(id)layout;
- (void)bezierPathsForCellRegion:(id)region selectionMask:(unsigned int)mask transform:(CGAffineTransform *)transform viewScale:(double)scale inset:(double)inset clipToVisibleRect:(BOOL)rect cornerRadius:(double)radius block:(id)self0;
- (void)dealloc;
- (void)didEndTableNameEditing;
- (void)invalidate;
- (void)invalidateForAutosizingTextLayout:(id)layout;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block;
- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block;
- (void)offsetGeometryBy:(CGPoint)by;
- (void)p_prepareAttachmentCellsIfNeeded;
- (void)p_updateCachedStyleInformationFromCellID:(TSUCellCoord)d;
- (void)removeAttachmentCellLayouts;
- (void)removeContainedTextEditingLayout;
- (void)setCellRangeVisibleRect:(CGRect)rect;
- (void)setLayoutHint:(id)hint;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)updateChildrenFromInfo;
- (void)validate;
- (void)validatePageNumberCount;
- (void)validateTableNameVisibility;
- (void)willBeginTableNameEditingWithStorage:(id)storage;
@end

@implementation TSTLayout

- (CGSize)scaleToFit
{
  width = self->mCached.scaleToFitEnclosingTextColumn.width;
  height = self->mCached.scaleToFitEnclosingTextColumn.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setLayoutHint:(id)hint
{
  hintCopy = hint;
  mLayoutHint = self->mLayoutHint;
  v10 = hintCopy;
  if (mLayoutHint != hintCopy)
  {
    objc_msgSend_setLayout_(mLayoutHint, hintCopy, 0, v6);
    objc_storeStrong(&self->mLayoutHint, hint);
    objc_msgSend_setLayout_(self->mLayoutHint, v8, self, v9);
  }
}

- (CGSize)scaleToFitParent
{
  width = self->mCached.scaleToFitParent.width;
  height = self->mCached.scaleToFitParent.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSTLayout)initWithInfo:(id)info layoutHint:(id)hint
{
  infoCopy = info;
  hintCopy = hint;
  v33.receiver = self;
  v33.super_class = TSTLayout;
  v11 = [(TSTLayout *)&v33 initWithInfo:infoCopy];
  if (v11)
  {
    v12 = objc_msgSend_layoutEngine(infoCopy, v8, v9, v10);
    v13 = *(v11 + 39);
    *(v11 + 39) = v12;

    objc_storeStrong(v11 + 40, hint);
    objc_msgSend_setLayout_(*(v11 + 40), v14, v11, v15);
    v16 = [TSTLayoutSpaceBundle alloc];
    v19 = objc_msgSend_initWithLayout_(v16, v17, v11, v18);
    v20 = *(v11 + 54);
    *(v11 + 54) = v19;

    if (v11[425])
    {
      v11[425] = 0;
    }

    sub_2211B3D94(v11);
    v11[424] = 0;
    *(v11 + 520) = xmmword_2217E07A0;
    *(v11 + 536) = unk_2217E07B0;
    *(v11 + 146) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v11 + 28) = _Q0;
    *(v11 + 29) = _Q0;
    *(v11 + 40) = xmmword_2217E07C0;
    *(v11 + 41) = xmmword_2217E07C0;
    v11[430] = objc_msgSend_p_getLayoutDirectionLeftToRight(v11, v26, v27, v28);
    v11[700] = 1;
    v11[677] = 0;
    v29 = MEMORY[0x277CBF390];
    v30 = *(MEMORY[0x277CBF390] + 16);
    *(v11 + 328) = *MEMORY[0x277CBF390];
    *(v11 + 344) = v30;
    v31 = v29[1];
    *(v11 + 360) = *v29;
    *(v11 + 376) = v31;
    *(v11 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    *(v11 + 89) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (TSTLayout)initWithInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_overrideLayoutHint(infoCopy, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v15 = objc_msgSend_layoutEngine(infoCopy, v9, v10, v11);
    v14 = objc_msgSend_newLayoutHint(v15, v16, v17, v18);
  }

  v19 = objc_msgSend_initWithInfo_layoutHint_(self, v13, infoCopy, v14);

  return v19;
}

- (void)dealloc
{
  if (self->mContainedTextEditingLayout)
  {
    objc_msgSend_removeContainedTextEditingLayout(self, a2, v2, v3);
    mContainedTextEditingLayout = self->mContainedTextEditingLayout;
    self->mContainedTextEditingLayout = 0;
  }

  objc_msgSend_setLayout_(self->mLayoutHint, a2, 0, v3);
  mLayoutHint = self->mLayoutHint;
  self->mLayoutHint = 0;

  objc_msgSend_removeAttachmentCellLayouts(self, v7, v8, v9);
  v10.receiver = self;
  v10.super_class = TSTLayout;
  [(TSWPTextHostLayout *)&v10 dealloc];
}

- (void)offsetGeometryBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (objc_msgSend_layoutState(self, a2, v3, v4) != 4)
  {
    v8.receiver = self;
    v8.super_class = TSTLayout;
    [(TSTLayout *)&v8 offsetGeometryBy:x, y];
  }
}

- (BOOL)isDraggable
{
  v5 = objc_msgSend_info(self, a2, v2, v3);
  if (objc_msgSend_isInlineWithText(v5, v6, v7, v8))
  {
    v12 = sub_2211B4730(self, v9, v10, v11);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v5 = objc_msgSend_info(self, a2, v2, v3);
  v9 = objc_msgSend_owningAttachmentNoRecurse(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_geometry(self, v10, v11, v12);
    objc_msgSend_frame(v13, v14, v15, v16);
    TSUSubtractPoints();
    v18 = v17;
    v20 = v19;

    v21 = v18;
    v22 = v20;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = TSTLayout;
    [(TSTLayout *)&v23 capturedInfoPositionForAttachment];
  }

  result.y = v22;
  result.x = v21;
  return result;
}

- (id)layoutGeometryFromInfo
{
  v5 = objc_msgSend_info(self, a2, v2, v3);
  v9 = objc_msgSend_geometry(v5, v6, v7, v8);
  objc_msgSend_position(v9, v10, v11, v12);
  v14 = v13;
  v16 = v15;

  v20 = objc_msgSend_spaceBundle(self, v17, v18, v19);
  v24 = objc_msgSend_space(v20, v21, v22, v23);
  objc_msgSend_tableOffset(v24, v25, v26, v27);
  v29 = v28;
  v31 = v30;

  v35 = objc_msgSend_info(self, v32, v33, v34);
  v39 = objc_msgSend_owningAttachmentNoRecurse(v35, v36, v37, v38);

  if (v39)
  {
    objc_msgSend_capturedInfoPositionForAttachment(self, v40, v41, v42);
    v14 = v43;
    v16 = v44;
  }

  else
  {
    v45 = objc_msgSend_layoutEngine(self, v40, v41, v42);
    isDynamicallyChangingInfoGeometry = objc_msgSend_isDynamicallyChangingInfoGeometry(v45, v46, v47, v48);

    if (isDynamicallyChangingInfoGeometry)
    {
      v53 = objc_msgSend_layoutEngine(self, v50, v51, v52);
      v57 = objc_msgSend_dynamicInfoGeometry(v53, v54, v55, v56);
      objc_msgSend_position(v57, v58, v59, v60);
      v14 = v61;
      v16 = v62;
    }
  }

  v66 = sub_2211B410C(self, 0);
  v68 = v67;
  v70 = v69;
  v72 = v71;
  if (self->mLayoutDirectionIsLeftToRight || (objc_msgSend_layoutEngine(self, v63, v64, v65), v73 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend_tableEnvironment(v73, v74, v75, v76), v73, v77 == 1))
  {
    v78 = objc_msgSend_info(self, v63, v64, v65);
    isInlineWithText = objc_msgSend_isInlineWithText(v78, v79, v80, v81);
    v83 = v14 + v66;
    v84 = v16 + v68;

    if (isInlineWithText)
    {
      goto LABEL_10;
    }

    TSUSubtractPoints();
    v83 = v85;
    v87 = v86;
    goto LABEL_9;
  }

  v94 = objc_msgSend_layoutEngine(self, v63, v64, v65);
  if (objc_msgSend_isDynamicallyChangingInfoGeometry(v94, v95, v96, v97))
  {
    v101 = objc_msgSend_info(self, v98, v99, v100);
    v105 = objc_msgSend_isInlineWithText(v101, v102, v103, v104);

    if (v105)
    {
      v109 = objc_msgSend_geometry(self, v106, v107, v108);
      objc_msgSend_frame(v109, v110, v111, v112);
      v83 = CGRectGetMaxX(v119) - v70;
      v84 = v16 + v68;

      goto LABEL_10;
    }
  }

  else
  {
  }

  v113 = objc_msgSend_info(self, v106, v107, v108);
  v117 = objc_msgSend_isInlineWithText(v113, v114, v115, v116);

  if (!v117)
  {
    v83 = v29 + v14 - (v66 + v70);
    v87 = v16 + v68 - v31;
LABEL_9:
    v84 = v87 + sub_2211B44A8(self);
    goto LABEL_10;
  }

  v83 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D80460]);
  v84 = v16 + v68;
LABEL_10:
  self->mRenderingFrameForLayoutGeometryFromInfo.origin.x = v66;
  self->mRenderingFrameForLayoutGeometryFromInfo.origin.y = v68;
  self->mRenderingFrameForLayoutGeometryFromInfo.size.width = v70;
  self->mRenderingFrameForLayoutGeometryFromInfo.size.height = v72;
  v88 = objc_alloc(MEMORY[0x277D80300]);
  v92 = objc_msgSend_initWithFrame_(v88, v89, v90, v91, v83, v84, v70, v72);

  return v92;
}

- (id)computeLayoutGeometry
{
  p_mCached = &self->mCached;
  __asm { FMOV            V0.2D, #1.0 }

  self->mCached.scaleToFitParent = _Q0;
  v11 = objc_msgSend_layoutGeometryFromInfo(self, a2, v2, v3);
  v15 = objc_msgSend_info(self, v12, v13, v14);
  isInlineWithText = objc_msgSend_isInlineWithText(v15, v16, v17, v18);

  if ((isInlineWithText & 1) == 0)
  {
    objc_opt_class();
    v23 = objc_msgSend_parent(self, v20, v21, v22);
    v24 = TSUDynamicCast();

    if (v24)
    {
      objc_msgSend_maximumFrameSizeForChild_(v24, v25, self, v26);
      v28 = v27;
      v30 = v29;
      objc_msgSend_alignmentFrame(self, v31, v32, v33);
      if (v37 > v28)
      {
        p_mCached->scaleToFitParent.width = v28 / v37;
      }

      if (v38 <= v30)
      {
        height = p_mCached->scaleToFitParent.height;
      }

      else
      {
        height = v30 / v38;
        p_mCached->scaleToFitParent.height = v30 / v38;
      }

      if (p_mCached->scaleToFitParent.width != 1.0 || height != 1.0)
      {
        objc_msgSend_invalidateLayoutSpaceTableOffsets(self, v34, v35, v36);
        objc_msgSend_invalidateLayoutSpaceCoordinates(self, v40, v41, v42);
        v46 = objc_msgSend_layoutGeometryFromInfo(self, v43, v44, v45);

        v11 = v46;
      }
    }
  }

  return v11;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  v8 = geometryCopy;
  v9 = MEMORY[0x277D802E8];
  if (geometryCopy)
  {
    objc_msgSend_fullTransform(geometryCopy, v5, v6, v7);
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  v13 = objc_msgSend_geometryFromFullTransform_(v9, v5, v61, v7);
  if (!self->mLayoutDirectionIsLeftToRight)
  {
    v14 = objc_msgSend_layoutEngine(self, v10, v11, v12);
    if (objc_msgSend_tableEnvironment(v14, v15, v16, v17) != 1)
    {
      v21 = objc_msgSend_info(self, v18, v19, v20);
      isInlineWithText = objc_msgSend_isInlineWithText(v21, v22, v23, v24);

      if (isInlineWithText)
      {
        goto LABEL_9;
      }

      objc_msgSend_position(v13, v26, v27, v28);
      v30 = v29;
      v32 = v31;
      objc_msgSend_size(v8, v33, v34, v35);
      v37 = v36;
      v41 = objc_msgSend_spaceBundle(self, v38, v39, v40);
      v45 = objc_msgSend_space(v41, v42, v43, v44);
      objc_msgSend_tableOffset(v45, v46, v47, v48);
      v50 = v49;

      v51 = objc_alloc(MEMORY[0x277D802E8]);
      objc_msgSend_size(v13, v52, v53, v54);
      v14 = v13;
      v13 = objc_msgSend_initWithPosition_size_(v51, v55, v56, v57, v30 + v37 - v50, v32, v58, v59);
    }
  }

LABEL_9:

  return v13;
}

- (id)initialInfoGeometry
{
  v3 = objc_alloc(MEMORY[0x277D802E8]);
  v7 = objc_msgSend_initWithPosition_size_(v3, v4, v5, v6, *(&self->super.super.super.super.super.isa + *MEMORY[0x277D80460]), *(&self->super.super.super.super._parent + *MEMORY[0x277D80460]), self->mCapturedStrokeFrameSizeForInline.width, self->mCapturedStrokeFrameSizeForInline.height);

  return v7;
}

- (CGRect)frameForCaptionPositioning
{
  v5 = sub_2211B5074(self, a2, v2, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v15 = objc_msgSend_geometry(self, v12, v13, v14);
  v19 = v15;
  if (v15)
  {
    objc_msgSend_transform(v15, v16, v17, v18);
  }

  else
  {
    memset(&v51, 0, sizeof(v51));
  }

  v52.origin.x = v5;
  v52.origin.y = v7;
  v52.size.width = v9;
  v52.size.height = v11;
  v53 = CGRectApplyAffineTransform(v52, &v51);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;

  v27 = objc_msgSend_layoutEngine(self, v24, v25, v26);
  if (objc_msgSend_isDynamicallyRowTabResizing(v27, v28, v29, v30))
  {
    v34 = objc_msgSend_layoutEngine(self, v31, v32, v33);
    objc_msgSend_dynamicFooterHeight(v34, v35, v36, v37);
    height = height + v38;
  }

  v39 = objc_msgSend_styleProvidingSource(v27, v31, v32, v33, *&v51.a, *&v51.c, *&v51.tx);

  if (v39)
  {
    objc_msgSend__visibleFrameForOverscrolledChildFrame_(self, v40, v41, v42, x, y, width, height);
    x = v43;
    y = v44;
    width = v45;
    height = v46;
  }

  v47 = x;
  v48 = y;
  v49 = width;
  v50 = height;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (CGRect)alignmentFrame
{
  v5 = objc_msgSend_info(self, a2, v2, v3);
  isInlineWithText = objc_msgSend_isInlineWithText(v5, v6, v7, v8);

  v13 = objc_msgSend_spaceBundle(self, v10, v11, v12);
  v17 = v13;
  if (!isInlineWithText)
  {
    v39 = objc_msgSend_space(v13, v14, v15, v16);
    objc_msgSend_frame(v39, v48, v49, v50);
    goto LABEL_7;
  }

  v18 = objc_msgSend_space(v13, v14, v15, v16);
  objc_msgSend_strokeFrame(v18, v19, v20, v21);
  x = v22;
  y = v24;
  width = v26;
  height = v28;

  v17 = TSTLayoutGetRepeatHeaderRowsSpace(self, v30, v31, v32);
  v39 = TSTLayoutGetRepeatHeaderCornerSpace(self, v33, v34, v35);
  if (v17)
  {
    objc_msgSend_strokeFrame(v17, v36, v37, v38);
    v76.origin.x = v40;
    v76.origin.y = v41;
    v76.size.width = v42;
    v76.size.height = v43;
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v70 = CGRectUnion(v69, v76);
    x = v70.origin.x;
    y = v70.origin.y;
    width = v70.size.width;
    height = v70.size.height;
  }

  if (v39)
  {
    objc_msgSend_strokeFrame(v39, v36, v37, v38);
    v77.origin.x = v44;
    v77.origin.y = v45;
    v77.size.width = v46;
    v77.size.height = v47;
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v72 = CGRectUnion(v71, v77);
LABEL_7:
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
  }

  v51 = sub_2211B44A8(self);
  v55 = objc_msgSend_geometry(self, v52, v53, v54);
  v59 = v55;
  if (v55)
  {
    objc_msgSend_transform(v55, v56, v57, v58);
  }

  else
  {
    memset(&v68, 0, sizeof(v68));
  }

  v73.size.height = height + v51;
  v73.origin.y = y - v51;
  v73.origin.x = x;
  v73.size.width = width;
  v74 = CGRectApplyAffineTransform(v73, &v68);
  v60 = v74.origin.x;
  v61 = v74.origin.y;
  v62 = v74.size.width;
  v63 = v74.size.height;

  v64 = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  result.size.height = v67;
  result.size.width = v66;
  result.origin.y = v65;
  result.origin.x = v64;
  return result;
}

- (id)inspectorGeometry
{
  CanvasFrame = TSTLayoutGetCanvasFrame(self);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D80300]);
  v14 = objc_msgSend_initWithFrame_(v10, v11, v12, v13, CanvasFrame, v5, v7, v9);
  v18 = objc_msgSend_layoutController(self, v15, v16, v17);
  v22 = objc_msgSend_canvas(v18, v19, v20, v21);
  isAnchoredAtRight = objc_msgSend_isAnchoredAtRight(v22, v23, v24, v25);

  if (isAnchoredAtRight)
  {
    objc_msgSend_frame(v14, v27, v28, v29);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxX = CGRectGetMaxX(v43);
    v39 = objc_msgSend_geometryByTranslatingBy_(v14, v36, v37, v38, -(MinX + MaxX), 0.0);

    v14 = v39;
  }

  return v14;
}

- (BOOL)inspectorGeometryIsAffectedByChangeRecord:(id)record
{
  v4 = objc_msgSend_details(record, a2, record, v3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)validate
{
  self->mLayoutDirectionIsLeftToRight = objc_msgSend_p_getLayoutDirectionLeftToRight(self, a2, v2, v3);
  v391 = objc_msgSend_layoutEngine(self, v5, v6, v7);
  objc_msgSend_validate(v391, v8, v9, v10);
  shouldShowCaption = objc_msgSend_shouldShowCaption(self, v11, v12, v13);
  v18 = objc_msgSend_layoutHint(self, v15, v16, v17);
  v21 = objc_msgSend_validateLayoutHint_(v391, v19, v18, v20);

  if (shouldShowCaption != objc_msgSend_shouldShowCaption(self, v22, v23, v24))
  {
    objc_msgSend_updateChildrenFromInfo(self, v25, v26, v27);
  }

  if (!v21)
  {
    v392.receiver = self;
    v392.super_class = TSTLayout;
    [(TSTLayout *)&v392 validate];
    goto LABEL_184;
  }

  sub_2211B3D94(self);
  objc_msgSend_validateTableNameVisibility(self, v28, v29, v30);
  selfCopy = self;
  v390 = objc_msgSend_layoutEngine(selfCopy, v32, v33, v34);
  if (!sub_2211B7A50(selfCopy, v35, v36, v37))
  {
    v47 = objc_msgSend_spaceBundle(selfCopy, v38, v39, v40);
    objc_msgSend_setRepeatHeaderColumnsSpace_(v47, v48, 0, v49);

    v53 = objc_msgSend_spaceBundle(selfCopy, v50, v51, v52);
    objc_msgSend_setRepeatHeaderRowsSpace_(v53, v54, 0, v55);

    v59 = objc_msgSend_spaceBundle(selfCopy, v56, v57, v58);
    objc_msgSend_setRepeatHeaderCornerSpace_(v59, v60, 0, v61);

    goto LABEL_151;
  }

  if (objc_msgSend_numberOfHeaderRows(v390, v38, v39, v40))
  {
    v388 = sub_2213A25F8(v390);
  }

  else
  {
    v388 = 0;
  }

  if (objc_msgSend_numberOfHeaderColumns(v390, v41, v42, v43))
  {
    v389 = sub_2213A2CD0(v390);
  }

  else
  {
    v389 = 0;
  }

  v65 = sub_2211B4394(selfCopy, v62, v63, v64);
  objc_msgSend_setHeaderRowsRepeat_(v65, v66, v388, v67);
  objc_msgSend_setHeaderColumnsRepeat_(v65, v68, v389, v69);
  v386 = sub_2211B6DA4(selfCopy);
  v71 = v70;
  v72 = sub_2211B6E48(selfCopy);
  v74 = v73;
  v385 = sub_2211B7004(selfCopy);
  v387 = v75;
  v383 = sub_2211B71BC(selfCopy);
  v384 = v76;
  if (v389)
  {
    v79 = HIDWORD(v74);
    if (HIDWORD(v71) && v71 && v79 && v74)
    {
      v80 = v386 & 0xFFFF00000000;
      if (v386 != 0x7FFFFFFFLL || v80 == 0x7FFF00000000)
      {
        v89 = v80 != 0x7FFF00000000 && v386 == 0x7FFFFFFF;
        if (!v89 && v386 > v72)
        {
          goto LABEL_56;
        }

        v90 = v386 + HIDWORD(v71) - 1;
        if (v386 == 0x7FFFFFFF)
        {
          v90 = 0x7FFFFFFF;
        }

        if (v90 < v72)
        {
          goto LABEL_56;
        }

        if (v386 != 0x7FFFFFFFLL && v80 == 0x7FFF00000000)
        {
          v84 = v71 + 32766;
          v81 = HIDWORD(v72);
          v82 = 0x7FFF;
          goto LABEL_41;
        }
      }

      v81 = HIDWORD(v72);
      v82 = WORD2(v386);
      if (WORD2(v386) <= WORD2(v72))
      {
        v83 = WORD2(v386) == 0x7FFF || v71 == 0;
        v84 = v71 - 1 + WORD2(v386);
        v85 = v83 ? 0x7FFF : v71 - 1 + WORD2(v386);
        if (v85 >= WORD2(v72))
        {
LABEL_41:
          if (v82 == 0x7FFF)
          {
            v91 = 0x7FFF;
          }

          else
          {
            v91 = v84;
          }

          v92 = v81;
          v93 = v74 + v81 - 1;
          if (v92 == 0x7FFF || v74 == 0)
          {
            v93 = 0x7FFF;
          }

          if (v91 >= v93)
          {
            v95 = v386 + HIDWORD(v71) - 1;
            if (v386 == 0x7FFFFFFF)
            {
              v95 = 0x7FFFFFFF;
            }

            v96 = v72 == 0x7FFFFFFF ? 0x7FFFFFFF : v72 + HIDWORD(v74) - 1;
            if (v95 >= v96)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

LABEL_56:
    v97 = objc_msgSend_spaceBundle(selfCopy, v76, v77, v78, v383);
    v101 = objc_msgSend_repeatHeaderColumnsSpace(v97, v98, v99, v100);

    if (!v101)
    {
      v105 = [TSTLayoutSpace alloc];
      v109 = objc_msgSend_spaceBundle(selfCopy, v106, v107, v108);
      v111 = objc_msgSend_initWithLayoutSpaceBundle_type_(v105, v110, v109, 5);

      v115 = objc_msgSend_spaceBundle(selfCopy, v112, v113, v114);
      objc_msgSend_setRepeatHeaderColumnsSpace_(v115, v116, v111, v117);
    }

    if (WORD2(v72) == 0x7FFF)
    {
      v118 = 0xFFFFFFFFLL;
    }

    else
    {
      v118 = WORD2(v72);
    }

    if (v72 == 0x7FFFFFFF)
    {
      v119 = 0xFFFFFFFF00000000;
    }

    else
    {
      v119 = v72 << 32;
    }

    if (v79)
    {
      v120 = ((v119 + v74) & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v120 = 0xFFFFFFFF00000000;
    }

    if (v74)
    {
      v121 = (v74 + v118 - 1);
    }

    else
    {
      v121 = 0xFFFFFFFFLL;
    }

    v86 = objc_msgSend_spaceBundle(selfCopy, v102, v103, v104);
    v125 = objc_msgSend_repeatHeaderColumnsSpace(v86, v122, v123, v124);
    objc_msgSend_setGridRange_(v125, v126, v119 | v118, v121 | v120);

    goto LABEL_71;
  }

  v86 = objc_msgSend_spaceBundle(selfCopy, v76, v77, v78);
  objc_msgSend_setRepeatHeaderColumnsSpace_(v86, v87, 0, v88);
LABEL_71:

LABEL_72:
  if (!v388)
  {
    v134 = objc_msgSend_spaceBundle(selfCopy, v76, v77, v78);
    objc_msgSend_setRepeatHeaderRowsSpace_(v134, v135, 0, v136);

    goto LABEL_146;
  }

  v127 = HIDWORD(v387);
  if (!HIDWORD(v71) || !v71 || !v127 || !v387)
  {
    goto LABEL_115;
  }

  v128 = v386 & 0xFFFF00000000;
  if (v386 == 0x7FFFFFFFLL && v128 != 0x7FFF00000000)
  {
    goto LABEL_79;
  }

  v137 = v128 != 0x7FFF00000000 && v386 == 0x7FFFFFFF;
  if (!v137 && v386 > v385)
  {
    goto LABEL_115;
  }

  v138 = v386 + HIDWORD(v71) - 1;
  if (v386 == 0x7FFFFFFF)
  {
    v138 = 0x7FFFFFFF;
  }

  if (v138 < v385)
  {
    goto LABEL_115;
  }

  if (v386 == 0x7FFFFFFFLL || v128 != 0x7FFF00000000)
  {
LABEL_79:
    v129 = HIDWORD(v385);
    v130 = WORD2(v386);
    if (WORD2(v386) > WORD2(v385) || (WORD2(v386) != 0x7FFF ? (v131 = v71 == 0) : (v131 = 1), (v132 = v71 - 1 + WORD2(v386), !v131) ? (v133 = v71 - 1 + WORD2(v386)) : (v133 = 0x7FFF), v133 < WORD2(v385)))
    {
LABEL_115:
      v145 = objc_msgSend_spaceBundle(selfCopy, v76, v77, v78, v383);
      v149 = objc_msgSend_repeatHeaderRowsSpace(v145, v146, v147, v148);

      if (!v149)
      {
        v153 = [TSTLayoutSpace alloc];
        v157 = objc_msgSend_spaceBundle(selfCopy, v154, v155, v156);
        v159 = objc_msgSend_initWithLayoutSpaceBundle_type_(v153, v158, v157, 6);

        v163 = objc_msgSend_spaceBundle(selfCopy, v160, v161, v162);
        objc_msgSend_setRepeatHeaderRowsSpace_(v163, v164, v159, v165);
      }

      if (WORD2(v385) == 0x7FFF)
      {
        v166 = 0xFFFFFFFFLL;
      }

      else
      {
        v166 = WORD2(v385);
      }

      if (v385 == 0x7FFFFFFF)
      {
        v167 = 0xFFFFFFFF00000000;
      }

      else
      {
        v167 = v385 << 32;
      }

      if (v127)
      {
        v168 = ((v167 + v387) & 0xFFFFFFFF00000000) - 0x100000000;
      }

      else
      {
        v168 = 0xFFFFFFFF00000000;
      }

      if (v387)
      {
        v169 = (v387 + v166 - 1);
      }

      else
      {
        v169 = 0xFFFFFFFFLL;
      }

      v170 = objc_msgSend_spaceBundle(selfCopy, v150, v151, v152);
      v174 = objc_msgSend_repeatHeaderRowsSpace(v170, v171, v172, v173);
      objc_msgSend_setGridRange_(v174, v175, v167 | v166, v169 | v168);

      goto LABEL_130;
    }
  }

  else
  {
    v132 = v71 + 32766;
    v129 = HIDWORD(v385);
    v130 = 0x7FFF;
  }

  if (v130 == 0x7FFF)
  {
    v139 = 0x7FFF;
  }

  else
  {
    v139 = v132;
  }

  v140 = v129;
  v141 = v387 + v129 - 1;
  if (v140 == 0x7FFF || v387 == 0)
  {
    v141 = 0x7FFF;
  }

  if (v139 < v141)
  {
    goto LABEL_115;
  }

  v143 = v386 + HIDWORD(v71) - 1;
  if (v386 == 0x7FFFFFFF)
  {
    v143 = 0x7FFFFFFF;
  }

  v144 = v385 == 0x7FFFFFFF ? 0x7FFFFFFF : v385 + HIDWORD(v387) - 1;
  if (v143 < v144)
  {
    goto LABEL_115;
  }

LABEL_130:
  if (v389)
  {
    v176 = objc_msgSend_spaceBundle(selfCopy, v76, v77, v78);
    v180 = objc_msgSend_repeatHeaderCornerSpace(v176, v177, v178, v179);

    if (!v180)
    {
      v184 = [TSTLayoutSpace alloc];
      v188 = objc_msgSend_spaceBundle(selfCopy, v185, v186, v187);
      v190 = objc_msgSend_initWithLayoutSpaceBundle_type_(v184, v189, v188, 4);

      v194 = objc_msgSend_spaceBundle(selfCopy, v191, v192, v193);
      objc_msgSend_setRepeatHeaderCornerSpace_(v194, v195, v190, v196);
    }

    if (WORD2(v383) == 0x7FFF)
    {
      v197 = 0xFFFFFFFFLL;
    }

    else
    {
      v197 = WORD2(v383);
    }

    if (v383 == 0x7FFFFFFF)
    {
      v198 = 0xFFFFFFFF00000000;
    }

    else
    {
      v198 = v383 << 32;
    }

    if (v384 >> 32)
    {
      v199 = (&v384[v198] & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v199 = 0xFFFFFFFF00000000;
    }

    if (v384)
    {
      v200 = (v384 + v197 - 1);
    }

    else
    {
      v200 = 0xFFFFFFFFLL;
    }

    v201 = objc_msgSend_spaceBundle(selfCopy, v181, v182, v183, v383);
    v205 = objc_msgSend_repeatHeaderCornerSpace(v201, v202, v203, v204);
    objc_msgSend_setGridRange_(v205, v206, v198 | v197, v200 | v199);

    goto LABEL_147;
  }

LABEL_146:
  v201 = objc_msgSend_spaceBundle(selfCopy, v76, v77, v78, v383);
  objc_msgSend_setRepeatHeaderCornerSpace_(v201, v207, 0, v208);
LABEL_147:

  objc_msgSend_viewScale(v65, v209, v210, v211);
  v216 = v215;
  v411 = 0u;
  v412 = 0u;
  v410 = 0u;
  if (v65)
  {
    objc_msgSend_transformToCanvas(v65, v212, v213, v214);
    v408 = 0u;
    v409 = 0u;
    v407 = 0u;
    objc_msgSend_transformToDevice(v65, v217, v218, v219);
  }

  else
  {
    v408 = 0uLL;
    v409 = 0uLL;
    v407 = 0uLL;
  }

  v220 = objc_msgSend_spaceBundle(selfCopy, v212, v213, v214);
  v394 = MEMORY[0x277D85DD0];
  v395 = 3221225472;
  v396 = sub_2211C6ABC;
  v397 = &unk_278460CB0;
  v405 = v388;
  v406 = v389;
  v398 = v216;
  v399 = v410;
  v400 = v411;
  v401 = v412;
  v402 = v407;
  v403 = v408;
  v404 = v409;
  objc_msgSend_enumerateRepeatLayoutSpacesUsingBlock_(v220, v221, &v394, v222);

LABEL_151:
  v223 = selfCopy;
  sub_2211B6E48(v223);
  sub_2211B7004(v223);
  v224 = sub_2211B71BC(v223);
  v226 = v225;
  v229 = sub_2211B4394(v223, v225, v227, v228);
  v233 = objc_msgSend_spaceBundle(v223, v230, v231, v232);
  v237 = objc_msgSend_frozenHeaderColumnsSpace(v233, v234, v235, v236);
  v238 = v237 != 0;

  if (v237)
  {
    v242 = objc_msgSend_spaceBundle(v223, v239, v240, v241);
    v246 = objc_msgSend_frozenHeaderColumnsSpace(v242, v243, v244, v245);
    objc_msgSend_canvasStrokeFrame(v246, v247, v248, v249);
    sub_2211B6680(v223, v250, v251, v252, v253);

    v257 = objc_msgSend_spaceBundle(v223, v254, v255, v256);
    objc_msgSend_setFrozenHeaderColumnsSpace_(v257, v258, 0, v259);
  }

  v260 = objc_msgSend_spaceBundle(v223, v239, v240, v241);
  v264 = objc_msgSend_frozenHeaderRowsSpace(v260, v261, v262, v263);

  if (v264)
  {
    v268 = objc_msgSend_spaceBundle(v223, v265, v266, v267);
    v272 = objc_msgSend_frozenHeaderRowsSpace(v268, v269, v270, v271);
    objc_msgSend_canvasStrokeFrame(v272, v273, v274, v275);
    sub_2211B6680(v223, v276, v277, v278, v279);

    v283 = objc_msgSend_spaceBundle(v223, v280, v281, v282);
    objc_msgSend_setFrozenHeaderRowsSpace_(v283, v284, 0, v285);

    v238 = 1;
  }

  v286 = objc_msgSend_spaceBundle(v223, v265, v266, v267);
  v293 = objc_msgSend_frozenHeaderColumnsSpace(v286, v287, v288, v289);
  if (v293)
  {
    v294 = objc_msgSend_spaceBundle(v223, v290, v291, v292);
    v298 = objc_msgSend_frozenHeaderRowsSpace(v294, v295, v296, v297);

    if (v298)
    {
      v302 = objc_msgSend_spaceBundle(v223, v299, v300, v301);
      v306 = objc_msgSend_frozenHeaderCornerSpace(v302, v303, v304, v305);

      if (!v306)
      {
        v310 = [TSTLayoutSpace alloc];
        v314 = objc_msgSend_spaceBundle(v223, v311, v312, v313);
        v316 = objc_msgSend_initWithLayoutSpaceBundle_type_(v310, v315, v314, 1);

        v320 = objc_msgSend_spaceBundle(v223, v317, v318, v319);
        objc_msgSend_setFrozenHeaderCornerSpace_(v320, v321, v316, v322);

        v238 = 1;
      }

      if (WORD2(v224) == 0x7FFF)
      {
        v323 = 0xFFFFFFFFLL;
      }

      else
      {
        v323 = WORD2(v224);
      }

      if (v224 == 0x7FFFFFFF)
      {
        v324 = 0xFFFFFFFF00000000;
      }

      else
      {
        v324 = v224 << 32;
      }

      if (v226 >> 32)
      {
        v325 = (&v226[v324] & 0xFFFFFFFF00000000) - 0x100000000;
      }

      else
      {
        v325 = 0xFFFFFFFF00000000;
      }

      if (v226)
      {
        v326 = (v226 + v323 - 1);
      }

      else
      {
        v326 = 0xFFFFFFFFLL;
      }

      v327 = objc_msgSend_spaceBundle(v223, v307, v308, v309);
      v331 = objc_msgSend_frozenHeaderCornerSpace(v327, v328, v329, v330);
      objc_msgSend_setGridRange_(v331, v332, v324 | v323, v326 | v325);

      goto LABEL_175;
    }
  }

  else
  {
  }

  v333 = objc_msgSend_spaceBundle(v223, v299, v300, v301);
  v337 = objc_msgSend_frozenHeaderCornerSpace(v333, v334, v335, v336);

  if (v337)
  {
    v341 = objc_msgSend_spaceBundle(v223, v338, v339, v340);
    v345 = objc_msgSend_frozenHeaderCornerSpace(v341, v342, v343, v344);
    objc_msgSend_canvasStrokeFrame(v345, v346, v347, v348);
    sub_2211B6680(v223, v349, v350, v351, v352);

    v327 = objc_msgSend_spaceBundle(v223, v353, v354, v355);
    objc_msgSend_setFrozenHeaderCornerSpace_(v327, v356, 0, v357);
    v238 = 1;
LABEL_175:
  }

  objc_msgSend_viewScale(v229, v338, v339, v340);
  v362 = v361;
  v411 = 0u;
  v412 = 0u;
  v410 = 0u;
  if (v229)
  {
    objc_msgSend_transformToCanvas(v229, v358, v359, v360);
    v408 = 0u;
    v409 = 0u;
    v407 = 0u;
    objc_msgSend_transformToDevice(v229, v363, v364, v365);
  }

  else
  {
    v408 = 0uLL;
    v409 = 0uLL;
    v407 = 0uLL;
  }

  v366 = objc_msgSend_spaceBundle(v223, v358, v359, v360);
  v394 = MEMORY[0x277D85DD0];
  v395 = 3221225472;
  v396 = sub_2211C6A30;
  v397 = &unk_278460C90;
  v398 = v362;
  v399 = v410;
  v400 = v411;
  v401 = v412;
  v402 = v407;
  v403 = v408;
  v404 = v409;
  objc_msgSend_enumerateFrozenLayoutSpacesUsingBlock_(v366, v367, &v394, v368);

  if (v238)
  {
    objc_msgSend_invalidate(v223, v369, v370, v371);
  }

  v375 = objc_msgSend_spaceBundle(v223, v372, v373, v374);
  v379 = objc_msgSend_validateLayoutSpaces(v375, v376, v377, v378);

  if (v379)
  {
    objc_msgSend_setNeedsDisplay(v223, v380, v381, v382);
  }

  v223->mCoordinatesChangedMaskForChrome |= v379;
  v393.receiver = v223;
  v393.super_class = TSTLayout;
  [(TSTLayout *)&v393 validate];
  sub_2211B65A0(v223);
LABEL_184:
  objc_msgSend_validatePageNumberCount(self, v44, v45, v46);
}

- (void)setNeedsDisplay
{
  v2.receiver = self;
  v2.super_class = TSTLayout;
  [(TSTLayout *)&v2 setNeedsDisplay];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect))
  {
    v8.receiver = self;
    v8.super_class = TSTLayout;
    [(TSTLayout *)&v8 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)invalidate
{
  v9.receiver = self;
  v9.super_class = TSTLayout;
  [(TSTLayout *)&v9 invalidate];
  v6 = objc_msgSend_layoutHint(self, v3, v4, v5);
  objc_msgSend_setIsValid_(v6, v7, 0, v8);
}

- (void)invalidateSize
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TSTLayout;
  [(TSTLayout *)&v21 invalidateSize];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objc_msgSend_objectEnumerator(self->_attachmentCellStorageToLayoutMap, v3, v4, v5, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v22, 16);
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_invalidateSize(*(*(&v17 + 1) + 8 * v13++), v8, v9, v10);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v17, v22, 16);
    }

    while (v11);
  }

  objc_msgSend_invalidateExteriorWrap(self, v14, v15, v16);
}

- (void)invalidatePosition
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TSTLayout;
  [(TSTLayout *)&v18 invalidatePosition];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_objectEnumerator(self->_attachmentCellStorageToLayoutMap, v3, v4, v5, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v19, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_invalidatePosition(*(*(&v14 + 1) + 8 * v13++), v8, v9, v10);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v14, v19, 16);
    }

    while (v11);
  }
}

- (TSUCellRect)extendedPartitionRangeSingleSpaceIntersectionWithCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = sub_2211B6DA4(self);
  v22.i64[0] = sub_221119E0C(origin, size, v6, v7);
  v22.u64[1] = v8;
  if (TSUCellRect::isValid(&v22) || (v9 = sub_2211B6E48(self), v22.i64[0] = sub_221119E0C(origin, size, v9, v10), v22.u64[1] = v11, TSUCellRect::isValid(&v22)) || (v12 = sub_2211B7004(self), v22.i64[0] = sub_221119E0C(origin, size, v12, v13), v22.u64[1] = v14, TSUCellRect::isValid(&v22)))
  {
    v15 = v22;
  }

  else
  {
    v18 = sub_2211B71BC(self);
    v22.i64[0] = sub_221119E0C(origin, size, v18, v19);
    v22.u64[1] = v20;
    if (TSUCellRect::isValid(&v22))
    {
      v21 = -1;
    }

    else
    {
      v21 = 0;
    }

    v15 = vbslq_s8(vdupq_n_s64(v21), v22, xmmword_2217E0780);
  }

  v17 = v15.i64[1];
  v16 = v15.i64[0];
  result.size = v17;
  result.origin = v16;
  return result;
}

- (double)alignedStrokeFrame
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x5012000000;
  v14 = sub_2211BAC10;
  v15 = nullsub_20;
  v16 = &unk_22188E88F;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v17 = *MEMORY[0x277CBF398];
  v18 = v4;
  v5 = objc_msgSend_spaceBundle(self, a2, a3, a4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211BC8C0;
  v10[3] = &unk_278460A58;
  v10[4] = &v11;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v5, v6, v10, v7);

  v8 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (double)tabsRowWidthAndOptionalLeftGap:(double *)gap
{
  v5 = objc_msgSend_numberOfRows(self->_layoutEngine, a2, gap, v3);
  result = 20.0;
  if (v5 < 0x64 || (result = 28.0, v5 < 0x3E8))
  {
LABEL_5:
    if (!gap)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v5 >> 4 < 0x271)
  {
    result = 33.0;
    goto LABEL_5;
  }

  result = dbl_2217E0790[v5 >> 5 < 0xC35];
  if (!gap)
  {
    return result;
  }

LABEL_6:
  *gap = fmax(31.0 - result + -10.0, 0.0);
  return result;
}

- (CGPoint)minimumPositionOffset
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  v9 = objc_msgSend_styleProvidingSource(v5, v6, v7, v8);

  if (v9)
  {
    v15 = 0.0;
    objc_msgSend_tabsRowWidthAndOptionalLeftGap_(self, v10, &v15, v11);
    v13 = v12 + v15 * 2.0;
    v14 = 31.0;
  }

  else
  {
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setCellRangeVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, v3, v4);
  v14 = objc_msgSend_supportsFrozenHeaders(v10, v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    x = *MEMORY[0x277CBF390];
    y = *(MEMORY[0x277CBF390] + 8);
    width = *(MEMORY[0x277CBF390] + 16);
    height = *(MEMORY[0x277CBF390] + 24);
  }

  self->_cellRangeVisibleRect.origin.x = x;
  self->_cellRangeVisibleRect.origin.y = y;
  self->_cellRangeVisibleRect.size.width = width;
  self->_cellRangeVisibleRect.size.height = height;
}

- (CGRect)cellRangeVisibleRect
{
  x = self->_cellRangeVisibleRect.origin.x;
  y = self->_cellRangeVisibleRect.origin.y;
  width = self->_cellRangeVisibleRect.size.width;
  height = self->_cellRangeVisibleRect.size.height;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectIsNull(v11) || (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, CGRectIsEmpty(v12)))
  {
    x = self->mCanvasVisibleRect.origin.x;
    y = self->mCanvasVisibleRect.origin.y;
    width = self->mCanvasVisibleRect.size.width;
    height = self->mCanvasVisibleRect.size.height;
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (TSUCellRect)floatingHeaderRowRangeAtRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_layoutEngine(self, a2, v3, v4);
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v10, v11, v12, v13) & 1) != 0 || !sub_2211BA370(self))
  {
    v15 = 0x7FFF7FFFFFFFLL;

    goto LABEL_7;
  }

  v14 = sub_2211B848C(self);
  v15 = 0x7FFF7FFFFFFFLL;

  if (!v14)
  {
LABEL_7:
    v22 = 0;
    goto LABEL_8;
  }

  v19 = sub_2211B7AFC(self, v16, v17, v18);
  if (v19)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    sub_2211B9E30(self, &v26);
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v15 = objc_msgSend__floatingCellRangeAtRect_inLayoutSpace_withTransform_(self, v20, v19, v25, x, y, width, height);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

LABEL_8:
  v23 = v15;
  v24 = v22;
  result.size = v24;
  result.origin = v23;
  return result;
}

- (TSUCellRect)floatingHeaderColumnRangeAtRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_layoutEngine(self, a2, v3, v4);
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v10, v11, v12, v13) & 1) != 0 || !sub_2211BA19C(self))
  {
    v15 = 0x7FFF7FFFFFFFLL;

    goto LABEL_7;
  }

  v14 = sub_2211B82D0(self);
  v15 = 0x7FFF7FFFFFFFLL;

  if (!v14)
  {
LABEL_7:
    v22 = 0;
    goto LABEL_8;
  }

  v19 = sub_2211B7AA0(self, v16, v17, v18);
  if (v19)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    sub_2211B9BC4(self, &v26);
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v15 = objc_msgSend__floatingCellRangeAtRect_inLayoutSpace_withTransform_(self, v20, v19, v25, x, y, width, height);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

LABEL_8:
  v23 = v15;
  v24 = v22;
  result.size = v24;
  result.origin = v23;
  return result;
}

- (TSUCellRect)_floatingCellRangeAtRect:(CGRect)rect inLayoutSpace:(id)space withTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  objc_msgSend_canvasFrame(spaceCopy, v11, v12, v13);
  v14 = *&transform->c;
  *&v38.a = *&transform->a;
  *&v38.c = v14;
  *&v38.tx = *&transform->tx;
  v41 = CGRectApplyAffineTransform(v40, &v38);
  v15 = v41.origin.x;
  v16 = v41.origin.y;
  v17 = v41.size.width;
  v18 = v41.size.height;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v22 = 0x7FFF7FFFFFFFLL;
  if (CGRectIsEmpty(v41) || !objc_msgSend_frameHasWidthAndHeight(spaceCopy, v19, v20, v21))
  {
    v34 = 0;
  }

  else
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v46.origin.x = v15;
    v46.origin.y = v16;
    v46.size.width = v17;
    v46.size.height = v18;
    v43 = CGRectIntersection(v42, v46);
    v23 = v43.origin.x;
    v24 = v43.origin.y;
    v25 = v43.size.width;
    v26 = v43.size.height;
    *&v43.origin.y = *&transform->c;
    *&v37.a = *&transform->a;
    *&v37.c = *&v43.origin.y;
    *&v37.tx = *&transform->tx;
    CGAffineTransformInvert(&v38, &v37);
    v44.origin.x = v23;
    v44.origin.y = v24;
    v44.size.width = v25;
    v44.size.height = v26;
    v45 = CGRectApplyAffineTransform(v44, &v38);
    objc_msgSend_layoutRectForCanvasRect_(spaceCopy, v27, v28, v29, v45.origin.x, v45.origin.y, v45.size.width, v45.size.height);
    v22 = objc_msgSend_rangeIntersectingLayoutRect_(spaceCopy, v30, v31, v32);
    v34 = v33;
  }

  v35 = v22;
  v36 = v34;
  result.size = v36;
  result.origin = v35;
  return result;
}

- (CGRect)alignedStrokeFrameForRange:(TSUCellRect)range
{
  v3 = sub_2211BC9B4(self, *&range.origin, *&range.size);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)alignedStrokeFramePathForRange:(TSUCellRect)range frameType:(int)type viewScale:(double)scale inset:(double)inset reoriginToZero:(BOOL)zero clipToVisibleRect:(BOOL)rect cornerRadius:(double)radius outMaskPath:(id *)self0
{
  if (range.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = range.origin.column;
  }

  v11 = *&range.origin << 32;
  v12 = 0xFFFFFFFF00000000;
  if (range.origin.row == 0x7FFFFFFF)
  {
    v11 = 0xFFFFFFFF00000000;
  }

  v13 = (range.size.numberOfColumns + column - 1);
  if (range.size.numberOfRows)
  {
    v12 = ((v11 + *&range.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!range.size.numberOfColumns)
  {
    v13 = 0xFFFFFFFFLL;
  }

  return objc_msgSend_alignedStrokeFramePathForGridRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(self, a2, v11 | column, v13 | v12, *&type, zero, rect, path, scale, inset, radius);
}

- (id)alignedStrokeFramePathForGridRange:(id)range frameType:(int)type viewScale:(double)scale inset:(double)inset reoriginToZero:(BOOL)zero clipToVisibleRect:(BOOL)rect cornerRadius:(double)radius outMaskPath:(id *)self0
{
  zeroCopy = zero;
  var1 = range.var1;
  var0 = range.var0;
  v123 = *MEMORY[0x277D85DE8];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v120 = *MEMORY[0x277CBF2C0];
  v121 = v17;
  memset(&v119, 0, sizeof(v119));
  CGAffineTransformMakeScale(&v119, scale, scale);
  v102 = zeroCopy;
  v111 = var0;
  v112 = var1;
  selfCopy = self;
  if (zeroCopy)
  {
    v18 = sub_2211BCA14(self, var0, var1, type);
    v20 = vaddq_f64(*&v119.tx, vmlaq_n_f64(vmulq_n_f64(*&v119.c, v19), *&v119.a, v18));
  }

  else
  {
    v20 = vdupq_n_s64(0xC0F86A0000000000);
  }

  v101 = v20;
  sub_2211BB074(self);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  obj = v116 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v115, v122, 16);
  if (!v22)
  {

    v93 = 0;
    v104 = 0;
    goto LABEL_78;
  }

  v26 = 0;
  v27 = 0;
  v104 = 0;
  v113 = 0;
  v107 = *v116;
  v110 = HIDWORD(var0);
  do
  {
    v109 = v22;
    for (i = 0; i != v109; ++i)
    {
      if (*v116 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v115 + 1) + 8 * i);
      v31 = objc_msgSend_layoutSpaceType(v29, v23, v24, v25, *&v101);
      v32 = v111 | (v110 << 32);
      if (type == 1)
      {
        if (!objc_msgSend_intersectsRowGridRange_(v29, v30, v111 | (v110 << 32), v112))
        {
          goto LABEL_24;
        }

        v39 = objc_msgSend_intersectionRowGridRange_ofLayoutSpace_(TSTLayoutSpace, v33, v32, v112, v29);
        v38 = objc_msgSend_alignedStrokeLinePathForRowGridRange_transform_inset_reoriginToZero_cornerRadius_(v29, v40, v39, v40, &v119, 0, inset, radius);
      }

      else if (type == 2)
      {
        if (!objc_msgSend_intersectsColumnGridRange_(v29, v30, v111 | (v110 << 32), v112))
        {
          goto LABEL_24;
        }

        v36 = objc_msgSend_intersectionColumnGridRange_ofLayoutSpace_(TSTLayoutSpace, v33, v32, v112, v29);
        v38 = objc_msgSend_alignedStrokeLinePathForColumnGridRange_transform_inset_reoriginToZero_cornerRadius_(v29, v37, v36, v37, &v119, 0, inset, radius);
      }

      else
      {
        if (!objc_msgSend_intersectsGridRange_(v29, v30, v111 | (v110 << 32), v112))
        {
LABEL_24:
          if (!objc_msgSend_isFrozen(v29, v33, v34, v35))
          {
            continue;
          }

          v43 = objc_msgSend_alignedMaskStrokeFramePathForTransform_cornerRadius_(v29, v23, &v119, v25, radius);
          if (v31 == 2)
          {
            sub_2211B9BC4(selfCopy, &v114);
            v120 = *&v114.a;
            v121 = *&v114.c;
            v114.tx = v114.tx * scale;
            objc_msgSend_transformUsingAffineTransform_(v43, v87, &v114, v88);
          }

          else
          {
            if (v31 == 3)
            {
              sub_2211B9E30(selfCopy, &v114);
              v120 = *&v114.a;
              v121 = *&v114.c;
              v114.ty = v114.ty * scale;
            }

            else
            {
              sub_2211B9F18(selfCopy, &v114);
              v120 = *&v114.a;
              v121 = *&v114.c;
              *&v114.tx = vmulq_n_f64(*&v114.tx, scale);
            }

            objc_msgSend_transformUsingAffineTransform_(v43, v49, &v114, v50);
          }

          if (v43 && (objc_msgSend_isEmpty(v43, v51, v52, v53) & 1) == 0)
          {
            if (v104)
            {
              if (radius == 0.0)
              {
                objc_msgSend_uniteWithPolygonalBezierPath_(v104, v89, v43, v90);
              }

              else
              {
                objc_msgSend_uniteWithBezierPath_(v104, v89, v43, v90);
              }
              v91 = ;

              v48 = v26;
              v104 = v91;
            }

            else
            {
              v43 = v43;
              v48 = v26;
              v104 = v43;
            }
          }

          else
          {
            v48 = v26;
          }

          goto LABEL_64;
        }

        v41 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v33, v32, v112, v29);
        v38 = objc_msgSend_alignedStrokeFramePathForGridRange_transform_inset_reoriginToZero_cornerRadius_(v29, v42, v41, v42, &v119, 0, inset, radius);
      }

      v43 = v38;
      switch(v31)
      {
        case 1:
          sub_2211B9F18(selfCopy, &v114);
          v120 = *&v114.a;
          v121 = *&v114.c;
          *&v114.tx = vmulq_n_f64(*&v114.tx, scale);
          objc_msgSend_transformUsingAffineTransform_(v43, v56, &v114, v57);
          v27 = 1;
          v48 = 1;
          break;
        case 3:
          sub_2211B9E30(selfCopy, &v114);
          v120 = *&v114.a;
          v121 = *&v114.c;
          v114.ty = v114.ty * scale;
          objc_msgSend_transformUsingAffineTransform_(v43, v54, &v114, v55);
          if (type != 1)
          {
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v23, v29, v25);
            v110 = (HIDWORD(v23) + 1);
          }

          LODWORD(v27) = 0;
          v47 = 1;
          v48 = 1;
          if (v26)
          {
            goto LABEL_37;
          }

          v48 = 0;
          v27 = 1;
          break;
        case 2:
          sub_2211B9BC4(selfCopy, &v114);
          v120 = *&v114.a;
          v121 = *&v114.c;
          v114.tx = v114.tx * scale;
          objc_msgSend_transformUsingAffineTransform_(v43, v44, &v114, v45);
          if (type != 2)
          {
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v23, v29, v25);
            v111 = v23 + 1;
          }

          v46 = v27;
          v27 = 0;
          v47 = 1;
          v48 = 1;
          if ((v46 & 1) == 0)
          {
            break;
          }

LABEL_37:
          v58 = objc_msgSend_spaceBundle(selfCopy, v23, v24, v25);
          v62 = objc_msgSend_space(v58, v59, v60, v61);
          v63 = sub_2211B7C10(selfCopy, v62);
          v65 = v64;
          v67 = v66;
          v69 = v68;

          v114 = v119;
          v125.origin.x = v63;
          v125.origin.y = v65;
          v125.size.width = v67;
          v125.size.height = v69;
          v126 = CGRectApplyAffineTransform(v125, &v114);
          if ((v27 & v48 & 1) == 0)
          {
            if (v31 != 3)
            {
              goto LABEL_43;
            }

            if ((v48 & 1) == 0)
            {
              if ((v27 & v47 & 1) == 0)
              {
                v27 = v47;
                goto LABEL_47;
              }

              goto LABEL_46;
            }
          }

          TSURectWithPoints();
          v76 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v73, v74, v75);
          v79 = objc_msgSend_subtractBezierPath_(v43, v77, v76, v78);

          v43 = v79;
LABEL_43:
          if ((v27 & v47 & 1) == 0)
          {
            v27 = (v31 != 2) & v47;
            if (v31 != 2 || ((v47 ^ 1) & 1) != 0)
            {
LABEL_47:
              if (objc_msgSend_isEmpty(v43, v70, v71, v72, v126.origin.x, v126.origin.y, v126.size.width, v126.size.height))
              {

                v43 = 0;
              }

              break;
            }
          }

LABEL_46:
          TSURectWithPoints();
          v83 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v80, v81, v82);
          v86 = objc_msgSend_subtractBezierPath_(v43, v84, v83, v85);

          v27 = v47;
          v43 = v86;
          goto LABEL_47;
        default:
          if (!v31 && ((v26 | v27) & 1) != 0)
          {
            v47 = v27;
            LODWORD(v27) = 1;
            v48 = v26;
            goto LABEL_37;
          }

          v48 = v26;
          break;
      }

      if (!v113)
      {
        v26 = v48;
        v113 = v43;
        continue;
      }

      if (radius == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v113, v23, v43, v25);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v113, v23, v43, v25);
      }
      v92 = ;

      v113 = v92;
LABEL_64:

      v26 = v48;
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v115, v122, 16);
  }

  while (v22);

  v93 = v113;
  if (v113)
  {
    if (v102)
    {
      CGAffineTransformMakeTranslation(&v114, -v101.f64[0], -v101.f64[1]);
      objc_msgSend_transformUsingAffineTransform_(v113, v94, &v114, v95);
      CGAffineTransformMakeTranslation(&v114, -v101.f64[0], -v101.f64[1]);
      objc_msgSend_transformUsingAffineTransform_(v104, v96, &v114, v97);
    }

    if (path)
    {
      v98 = v104;
      *path = v104;
    }

    v93 = v113;
  }

LABEL_78:
  v99 = v93;

  return v99;
}

- (void)bezierPathsForCellRegion:(id)region selectionMask:(unsigned int)mask transform:(CGAffineTransform *)transform viewScale:(double)scale inset:(double)inset clipToVisibleRect:(BOOL)rect cornerRadius:(double)radius block:(id)self0
{
  v167 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  blockCopy = block;
  v19 = objc_msgSend_boundingCellRange(regionCopy, v16, v17, v18);
  v128 = v20;
  v129 = v19;
  if (objc_msgSend_isRectangle(regionCopy, v20, v21, v22))
  {
    v26 = objc_msgSend_tableInfo(self, v23, v24, v25);
    isSingleCellOrMergeRange = objc_msgSend_isSingleCellOrMergeRange_(v26, v27, v129, v128);
  }

  else
  {
    isSingleCellOrMergeRange = 0;
  }

  v28 = sub_2211B82D0(self);
  v29 = sub_2211B848C(self);
  v33 = v29;
  v34 = 0x7FFF7FFFFFFFLL;
  if (v28)
  {
    v35 = sub_2211B7AA0(self, v30, v31, v32);
    v39 = objc_msgSend_cellRange(v35, v36, v37, v38);
    v41 = v40;
    v42 = v39;
    v43 = v39 & 0xFFFFFFFF00000000;

    if (!v33)
    {
      v117 = v42;
      v119 = v43;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      LOWORD(v115) = 0x7FFF;
      v47 = 0x7FFFFFFFLL;
      goto LABEL_98;
    }
  }

  else
  {
    v44 = 0;
    v42 = 0x7FFFFFFF;
    v119 = 0x7FFF00000000;
    if (!v29)
    {
      v117 = 0x7FFFFFFF;
      LOWORD(v115) = 0x7FFF;
      v47 = 0x7FFFFFFFLL;
      v45 = 0;
      v46 = 0;
      v41 = 0;
      goto LABEL_98;
    }

    v41 = 0;
    v43 = 0x7FFF00000000;
  }

  v48 = sub_2211B7AFC(self, v30, v31, v32);
  v117 = v42;
  v119 = v43;
  v52 = objc_msgSend_cellRange(v48, v49, v50, v51);
  v46 = v53;
  v115 = HIDWORD(v52);
  v44 = v52 & 0xFFFF000000000000;

  v47 = v52;
  if (!v28)
  {
    v45 = 0;
    goto LABEL_98;
  }

  v57 = sub_2211B7B58(self, v54, v55, v56);
  v61 = objc_msgSend_cellRange(v57, v58, v59, v60);
  v34 = v61;
  v45 = v62;
  if (HIDWORD(v41) && v41 && HIDWORD(v62) && v62)
  {
    v63 = v119 & 0xFFFF00000000;
    if (v117 == 0x7FFFFFFF && v63 != 0x7FFF00000000)
    {
      goto LABEL_16;
    }

    if (v117 <= v61)
    {
      v69 = v117 + HIDWORD(v41) - 1;
      if (v117 == 0x7FFFFFFF)
      {
        v69 = 0x7FFFFFFF;
      }

      if (v69 >= v61)
      {
        if (v117 != 0x7FFFFFFF && v63 == 0x7FFF00000000)
        {
          v67 = v41 + 32766;
          v64 = HIDWORD(v61);
          v65 = 0x7FFF;
LABEL_34:
          if (v65 == 0x7FFF || v41 == 0)
          {
            v71 = 0x7FFF;
          }

          else
          {
            v71 = v67;
          }

          v72 = v64;
          v73 = v62 + v64 - 1;
          if (v72 == 0x7FFF || v62 == 0)
          {
            v73 = 0x7FFF;
          }

          if (v71 >= v73)
          {
            v75 = v117 + HIDWORD(v41) - 1;
            if (v117 == 0x7FFFFFFF)
            {
              v75 = 0x7FFFFFFF;
            }

            if (v61 == 0x7FFFFFFF)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v76 = v61 + HIDWORD(v62) - 1;
            }

            if (v75 >= v76)
            {
              v117 += HIDWORD(v62);
              v41 = (v41 - (v62 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | v41;
            }
          }

          goto LABEL_53;
        }

LABEL_16:
        v64 = HIDWORD(v61);
        v65 = WORD2(v119);
        if (WORD2(v119) > WORD2(v61))
        {
          goto LABEL_53;
        }

        v66 = WORD2(v119) == 0x7FFF || v41 == 0;
        v67 = WORD2(v119) + v41 - 1;
        v68 = v66 ? 0x7FFF : WORD2(v119) + v41 - 1;
        if (v68 < WORD2(v61))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }
    }
  }

LABEL_53:
  if (HIDWORD(v46) && v46 && HIDWORD(v62) && v62)
  {
    v77 = v52 & 0xFFFF00000000;
    if (v52 != 0x7FFFFFFFLL || v77 == 0x7FFF00000000)
    {
      v83 = v77 != 0x7FFF00000000 && v52 == 0x7FFFFFFF;
      if (!v83 && v52 > v61)
      {
        goto LABEL_97;
      }

      v84 = v52 + HIDWORD(v46) - 1;
      if (v52 == 0x7FFFFFFF)
      {
        v84 = 0x7FFFFFFF;
      }

      if (v84 < v61)
      {
        goto LABEL_97;
      }

      if (v52 != 0x7FFFFFFFLL && v77 == 0x7FFF00000000)
      {
        v81 = v46 + 32766;
        v78 = HIDWORD(v61);
        v79 = 0x7FFF;
LABEL_79:
        if (v79 == 0x7FFF || v46 == 0)
        {
          v86 = 0x7FFF;
        }

        else
        {
          v86 = v81;
        }

        v87 = v78;
        v88 = v62 + v78 - 1;
        if (v87 == 0x7FFF || v62 == 0)
        {
          v88 = 0x7FFF;
        }

        if (v86 >= v88)
        {
          v90 = v52 + HIDWORD(v46) - 1;
          if (v52 == 0x7FFFFFFF)
          {
            v90 = 0x7FFFFFFF;
          }

          v91 = v61 + HIDWORD(v62) - 1;
          if (v61 == 0x7FFFFFFF)
          {
            v91 = 0x7FFFFFFF;
          }

          if (v90 >= v91)
          {
            LOWORD(v115) = v62 + WORD2(v52);
            v46 = (v46 - v62) | v46 & 0xFFFFFFFF00000000;
          }
        }

        goto LABEL_97;
      }
    }

    v78 = HIDWORD(v61);
    v79 = WORD2(v52);
    if (WORD2(v52) <= WORD2(v61))
    {
      v80 = WORD2(v52) == 0x7FFF || v46 == 0;
      v81 = v46 - 1 + WORD2(v52);
      v82 = v80 ? 0x7FFF : v46 - 1 + WORD2(v52);
      if (v82 >= WORD2(v61))
      {
        goto LABEL_79;
      }
    }
  }

LABEL_97:

LABEL_98:
  sub_2211BB074(self);
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v114 = v163 = 0u;
  objc_msgSend_objectEnumerator(v114, v92, v93, v94);
  v121 = v45;
  v122 = v46;
  v95 = v123 = v41;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v162, v166, 16);
  if (v100)
  {
    v101 = *v163;
    v120 = v119 | v117;
    v118 = v47 | v44 | (v115 << 32);
    do
    {
      for (i = 0; i != v100; ++i)
      {
        if (*v163 != v101)
        {
          objc_enumerationMutation(v95);
        }

        v103 = *(*(&v162 + 1) + 8 * i);
        v104 = objc_msgSend_layoutSpaceType(v103, v97, v98, v99);
        if (objc_msgSend_intersectsCellRange_(v103, v105, v129, v128))
        {
          v156 = 0;
          v157 = &v156;
          v158 = 0x3032000000;
          v159 = sub_2211BFB80;
          v160 = sub_2211BFB90;
          v161 = 0;
          v150 = 0;
          v151 = &v150;
          v152 = 0x3032000000;
          v153 = sub_2211BFB80;
          v154 = sub_2211BFB90;
          v155 = 0;
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = sub_2211BFB98;
          v130[3] = &unk_278460B30;
          rectCopy = rect;
          v149 = isSingleCellOrMergeRange;
          v141 = v120;
          v142 = v123;
          v143 = v118;
          v144 = v122;
          v145 = v34;
          v146 = v121;
          v140 = v104;
          maskCopy = mask;
          v130[4] = v103;
          v130[5] = self;
          scaleCopy = scale;
          insetCopy = inset;
          radiusCopy = radius;
          v106 = regionCopy;
          v107 = *&transform->c;
          v137 = *&transform->a;
          v138 = v107;
          v139 = *&transform->tx;
          v131 = v106;
          v132 = &v150;
          v133 = &v156;
          objc_msgSend_enumerateCellRangesUsingBlock_(v106, v108, v130, v109);
          v113 = v151[5];
          if (v113 && (objc_msgSend_isEmpty(v113, v110, v111, v112) & 1) == 0)
          {
            blockCopy[2](blockCopy, v151[5], v157[5], v103);
          }

          _Block_object_dispose(&v150, 8);
          _Block_object_dispose(&v156, 8);
        }
      }

      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v162, v166, 16);
    }

    while (v100);
  }
}

- (void)willBeginTableNameEditingWithStorage:(id)storage
{
  storageCopy = storage;
  v7 = objc_msgSend_layoutEngine(self, v4, v5, v6);
  v11 = objc_msgSend_styleProvidingSource(v7, v8, v9, v10);

  if (storageCopy && v11)
  {
    objc_msgSend_setTableNameEditingStorage_(self, v12, storageCopy, v13);
    objc_msgSend_addObserver_(storageCopy, v14, self, v15);
  }
}

- (void)didEndTableNameEditing
{
  v5 = objc_msgSend_tableNameEditingStorage(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_tableNameEditingStorage(self, v6, v7, v8);
    objc_msgSend_removeObserver_(v9, v10, self, v11);

    objc_msgSend_setTableNameEditingStorage_(self, v12, 0, v13);
  }
}

- (void)validateTableNameVisibility
{
  if (!self->mTableNameVisibilityIsValid)
  {
    mTableNameVisible = self->mTableNameVisible;
    v6 = objc_msgSend_layoutEngine(self, a2, v2, v3);
    if (objc_msgSend_tableNameEnabled(v6, v7, v8, v9))
    {
      v13 = sub_2211B4730(self, v10, v11, v12);
    }

    else
    {
      v13 = 0;
    }

    self->mTableNameVisible = v13;
    if (mTableNameVisible != v13)
    {
      objc_msgSend_invalidateLayoutSpaceTableOffsets(self, v14, v15, v16);
      objc_msgSend_invalidateLayoutSpaceCoordinates(self, v17, v18, v19);
    }

    self->mTableNameVisibilityIsValid = 1;
  }
}

- (BOOL)isBeingManipulated
{
  v19.receiver = self;
  v19.super_class = TSTLayout;
  if ([(TSTLayout *)&v19 isBeingManipulated])
  {
    return 1;
  }

  v7 = objc_msgSend_layoutEngine(self, v3, v4, v5);
  if (objc_msgSend_isInDynamicLayoutMode(v7, v8, v9, v10))
  {
    v6 = 1;
  }

  else
  {
    v14 = objc_msgSend_layoutEngine(self, v11, v12, v13);
    v6 = objc_msgSend_dynamicRepResize(v14, v15, v16, v17);
  }

  return v6;
}

- (TSUCellRect)p_maximumSpillRangeForCellID:(TSUCellCoord)d
{
  PartitionBodyCellRange = TSTLayoutGetPartitionBodyCellRange(self);
  v7 = v6;
  v10 = objc_msgSend_layoutEngine(self, v6, v8, v9);
  v13 = objc_msgSend_tableAreaForCellID_(v10, v11, *&d, v12);
  v14 = HIDWORD(PartitionBodyCellRange);

  v18 = v7;
  if (v13 != 1)
  {
    if (sub_2211B7A08(self, v15, v16, v17))
    {
      v18 = v7 + WORD2(PartitionBodyCellRange);
      LOWORD(v14) = 0;
    }

    else
    {
      v19 = sub_2211B6E48(self);
      if (HIDWORD(v20) && v20)
      {
        if (v19 != 0x7FFFFFFF && (v19 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v19) <= d.column && (WORD2(v19) != 0x7FFF ? (v21 = v20 == 0) : (v21 = 1), !v21 ? (v22 = v20 + WORD2(v19) - 1) : (v22 = 0x7FFF), v22 >= d.column))
        {
          v14 = HIDWORD(v19);
          v18 = v20;
        }
      }
    }
  }

  v23 = PartitionBodyCellRange & 0xFFFF000000000000 | d.row | (v14 << 32);
  v24 = v18 | 0x100000000;
  result.size = v24;
  result.origin = v23;
  return result;
}

- (TSUCellRect)p_spillRangeToRightForCellID:(TSUCellCoord)d
{
  dCopy = d;
  v6 = objc_msgSend_tableInfo(self, a2, *&d, v3);
  v10 = objc_msgSend_newCell(v6, v7, v8, v9);

  v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
  objc_msgSend_getCell_atCellID_(v14, v15, v10, *&dCopy);

  v19 = objc_msgSend_tableInfo(self, v16, v17, v18);
  v22 = objc_msgSend_mergeRangeAtCellID_(v19, v20, *&dCopy, v21);
  v24 = v23;
  v25 = HIWORD(*&dCopy);

  if (v22 == 0x7FFFFFFF || (v22 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v24) || !v24)
  {
    v85 = 0;
    v83 = 0;
    v84 = 0;
    v31 = objc_msgSend_tableInfo(self, v26, v27, v28);
    v82 = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v31, v32, v10, *&dCopy, &v85, &v84, &v83, &v82);
    v29 = HIDWORD(*&dCopy);
    v33 = v82;

    if (v85)
    {
      goto LABEL_10;
    }

    v37 = v84;
    if (v84 == 4)
    {
      v37 = objc_msgSend_naturalAlignmentForCellID_(self, v34, *&dCopy, v36);
      v84 = v37;
    }

    if (v37 == 1)
    {
LABEL_10:
      v30 = 0x100000001;
    }

    else
    {
      v81 = v33;
      if (objc_msgSend_valueType(v10, v34, v35, v36) == 9)
      {
        objc_msgSend_richTextValue(v10, v38, v39, v40);
      }

      else
      {
        objc_msgSend_formattedValue(v10, v38, v39, v40);
      }
      v41 = ;
      v45 = objc_msgSend_layoutEngine(self, v42, v43, v44);
      v46 = v85;
      v47 = v83;
      v51 = objc_msgSend_pageNumber(self, v48, v49, v50);
      v55 = objc_msgSend_pageCount(self, v52, v53, v54);
      v57 = objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v45, v56, *&dCopy, v10, v41, v46, v47, v81, 15, v51, v55);

      v58 = sub_2211BC850(self, *&dCopy, 0x100000001uLL);
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = sub_2213A5824(v57);
      if (v65 <= v62)
      {
        v30 = 0x100000001;
      }

      else
      {
        if (v84)
        {
          v66 = v62 + (v65 - v62) * 0.5;
        }

        else
        {
          v66 = v65;
        }

        v67 = v58;
        v68 = v60;
        v69 = v64;
        MaxX = CGRectGetMaxX(*(&v66 - 2));
        v74 = sub_2211B8958(self, MaxX, v60, v71, v72, v73);
        v76 = sub_2211BBDD4(self, v74, v75);
        v77 = sub_2211C15D4(*&dCopy, 0x100000001uLL, v76);
        dCopy.row = v77;
        v30 = v78;
        v29 = HIDWORD(v77);
        v25 = HIWORD(v77);
      }

      v33 = v81;
    }
  }

  else
  {
    v29 = HIDWORD(v22);
    v30 = v24 | 0x100000000;
  }

  v79 = (v25 << 48) | (v29 << 32) | dCopy.row;
  v80 = v30;
  result.size = v80;
  result.origin = v79;
  return result;
}

- (TSUCellRect)p_spillRangeForMaskingRichTextLayout:(id)layout
{
  layoutCopy = layout;
  v8 = objc_msgSend_cachedCellID(layoutCopy, v5, v6, v7);
  v12 = objc_msgSend_cachedMergeRange(layoutCopy, v9, v10, v11);
  v14 = v13;
  v17 = objc_msgSend_cachedCellWraps(layoutCopy, v13, v15, v16);
  v127 = v8;
  selfCopy = self;
  v21 = objc_msgSend_cachedParagraphAlignment(layoutCopy, v18, v19, v20);
  v28 = objc_msgSend_cachedCellID(layoutCopy, v22, v23, v24);
  if (v21 == 4)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTLayout p_spillRangeForMaskingRichTextLayout:]", v27);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 5038, 0, "alignment should have already been resolved");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  if (v12 != 0x7FFFFFFF && (v12 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v14) && v14)
  {
    v38 = objc_msgSend_extendedPartitionRangeSingleSpaceIntersectionWithCellRange_(selfCopy, v25, v12, v14);
LABEL_116:
    v28 = v38;
    v40 = v39;
    goto LABEL_117;
  }

  v40 = 0x100000001;
  v41 = selfCopy;
  if ((v17 & 1) == 0)
  {
    v42 = objc_msgSend_cachedCellID(layoutCopy, v25, v26, v27);
    v45 = objc_msgSend_p_maximumSpillRangeForCellID_(selfCopy, v43, v42, v44);
    v49 = 0x7FFFFFFF;
    if (v45 != 0x7FFFFFFF && (v45 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v51) = 0;
    }

    else
    {
      LOWORD(v51) = WORD2(v45);
    }

    LOWORD(v52) = 0x7FFF;
    if ((v21 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_23;
    }

    if (v46)
    {
      v53 = WORD2(v45) == 0x7FFF;
    }

    else
    {
      v53 = 1;
    }

    v54 = (v46 + WORD2(v45) - 1);
    if (v53)
    {
      v54 = 0x7FFF;
    }

    if (v54 <= WORD2(v127))
    {
LABEL_23:
      v55 = 0;
      v125 = 0;
    }

    else
    {
      v125 = v45 & 0xFFFF000000000000;
      LOWORD(v52) = WORD2(v127) + 1;
      v55 = v46 & 0xFFFFFFFF00000000 | (v54 - WORD2(v127));
      v49 = v45;
    }

    v56 = v28;
    if ((v21 - 1) > 1 || WORD2(v127) <= v51)
    {
      v57 = 0;
      v124 = 0;
      LOWORD(v51) = 0x7FFF;
      v126 = 0x7FFFFFFF;
    }

    else
    {
      v57 = v46 & 0xFFFFFFFF00000000 | (WORD2(v127) - v51);
      v126 = v45;
      v124 = HIWORD(v45);
    }

    if (v49 == 0x7FFFFFFF || v52 == 0x7FFF || !HIDWORD(v55) || !v55)
    {
      goto LABEL_45;
    }

    v123 = v57;
    v58 = sub_2211C0BB8(selfCopy, v127, 0);
    v59 = v49;
    v60 = v125 | v49 | (v52 << 32);
    if (v58 == 0x7FFFFFFF || (v58 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v122 = v52 << 32;
    }

    else
    {
      v61 = v55 + WORD2(v60) - 1;
      if (WORD2(v60) == 0x7FFF)
      {
        v61 = 0x7FFF;
      }

      if (v61 >= WORD2(v58))
      {
        if (WORD2(v60) >= WORD2(v58))
        {
          v55 = 0;
          v60 = 0x7FFF7FFFFFFFLL;
        }

        else
        {
          v55 = (WORD2(v58) - WORD2(v60)) | v55 & 0xFFFFFFFF00000000;
        }
      }

      v52 = HIDWORD(v60);
      v125 = v60 & 0xFFFF000000000000;
      v122 = v60 & 0xFFFF00000000;
      v59 = v60;
      v49 = v60;
    }

    origin = selfCopy->mEditingSpillingTextRange.origin;
    v63 = sub_221119E0C(v60, v55, origin, *&selfCopy->mEditingSpillingTextRange.size);
    v65 = 0x7FFF7FFFFFFFLL;
    if ((v63 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !HIDWORD(v64) || !v64 || v63 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v63) & 0x101FFFF00000000) == 0 && v64 == *(MEMORY[0x277D813C8] + 8))
    {
      v66 = v28;
      v67 = v122;
LABEL_44:
      v56 = sub_2211C1FC4(v66, 0x100000001uLL, v125 | v67 | v59, v55);
      v40 = v46;
      v57 = v123;
LABEL_45:
      if (v126 != 0x7FFFFFFF && v51 != 0x7FFF && HIDWORD(v57) && v57)
      {
        v69 = sub_2211C0634(selfCopy, v127, 0);
        v71 = v124 << 48;
        v72 = v51 << 32;
        v73 = v126;
        if (v69 == 0x7FFFFFFF || (v69 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          v79 = v57;
          v83 = v56;
          v41 = selfCopy;
        }

        else
        {
          v74 = objc_msgSend_p_spillRangeToRightForCellID_(selfCopy, v68, v69, v70);
          v75 = v126 | (v124 << 48) | (v51 << 32);
          v77 = v76 + WORD2(v74) - 1;
          if (v76)
          {
            v78 = WORD2(v74) == 0x7FFF;
          }

          else
          {
            v78 = 1;
          }

          if (v78)
          {
            v77 = 0x7FFF;
          }

          v51 = HIDWORD(v75);
          v126 = v75;
          if (v77 >= WORD2(v75))
          {
            if (WORD2(v75) == 0x7FFF)
            {
              v84 = 0x7FFF;
            }

            else
            {
              v84 = v57 + WORD2(v75) - 1;
            }

            v41 = selfCopy;
            if (v77 >= v84)
            {
              v79 = 0;
              v124 = 0;
              v126 = 0x7FFFFFFF;
              LOWORD(v51) = 0x7FFF;
            }

            else
            {
              v79 = (v84 - v77) | v57 & 0xFFFFFFFF00000000;
              LOWORD(v51) = v77 + 1;
            }
          }

          else
          {
            v79 = v57;
            v41 = selfCopy;
          }

          v83 = v56;
          v71 = v124 << 48;
          v72 = v51 << 32;
          v73 = v126;
        }

        v85 = v71 | v72;
        v86 = v71 | v72 | v73;
        v88 = v41->mEditingSpillingTextRange.origin;
        size = v41->mEditingSpillingTextRange.size;
        v89 = sub_221119E0C(v86, v79, v88, size);
        if ((v89 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && HIDWORD(v90) && v90 && (v89 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v89) & 0x101FFFF00000000) != 0 || v90 != *(MEMORY[0x277D813C8] + 8)))
        {
          if (size)
          {
            v91 = WORD2(v88) == 0x7FFF;
          }

          else
          {
            v91 = 1;
          }

          if (v91)
          {
            v92 = 0x7FFF;
          }

          else
          {
            v92 = size + WORD2(v88) - 1;
          }

          v93 = HIDWORD(v85);
          if (v126 != 0x7FFFFFFF && v51 != 0x7FFF && HIDWORD(v79) && v79 && v92 >= WORD2(v85))
          {
            LOWORD(v93) = 0x7FFF;
            if (WORD2(v85) == 0x7FFF)
            {
              v94 = 0x7FFF;
            }

            else
            {
              v94 = v79 + WORD2(v85) - 1;
            }

            if (v94 <= v92)
            {
              v79 = 0;
              v124 = 0;
              LODWORD(v86) = 0x7FFFFFFF;
            }

            else
            {
              v79 = (v94 - v92) | v79 & 0xFFFFFFFF00000000;
              LOWORD(v93) = v92 + 1;
            }
          }

          v86 = (v93 << 32) | (v124 << 48) | v86;
        }

        v56 = sub_2211C1FC4(v83, v40, v86, v79);
        v40 = v46;
      }

      objc_msgSend_cachedAutosizedFrame(layoutCopy, v46, v47, v48);
      MinX = CGRectGetMinX(v130);
      objc_msgSend_cachedAutosizedFrame(layoutCopy, v96, v97, v98);
      MidY = CGRectGetMidY(v131);
      objc_msgSend_cachedAutosizedFrame(layoutCopy, v100, v101, v102);
      MaxX = CGRectGetMaxX(v132);
      v107 = sub_2211B8958(v41, MinX, MidY, v104, v105, v106);
      v109 = v108;
      v113 = sub_2211B8958(v41, MaxX, MidY, v110, v111, v112);
      v115 = v114;
      v116 = sub_2211BBDD4(v41, v107, v109);
      v117 = sub_2211BBDD4(v41, v113, v115);
      v118 = sub_2211C15D4(v116, 0x100000001uLL, v117);
      v38 = sub_221119E0C(v56, v40, v118, v119);
      goto LABEL_116;
    }

    v80 = HIDWORD(origin);
    if (origin != 0x7FFFFFFF && (origin & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v80) = 0;
    }

    if (v49 == 0x7FFFFFFF)
    {
      v65 = v60;
      v66 = v28;
    }

    else
    {
      v66 = v28;
      if (v52 != 0x7FFF && HIDWORD(v55) && v55)
      {
        v82 = WORD2(v60) == 0x7FFF ? 0x7FFF : v55 + WORD2(v60) - 1;
        if (v82 >= v80)
        {
          if (v80 <= WORD2(v60))
          {
            v55 = 0;
            goto LABEL_110;
          }

          v55 = (v80 - WORD2(v60)) | v55 & 0xFFFFFFFF00000000;
        }
      }

      v65 = v60;
    }

LABEL_110:
    v125 = v65 & 0xFFFF000000000000;
    v67 = v65 & 0xFFFF00000000;
    v59 = v65;
    goto LABEL_44;
  }

LABEL_117:

  v120 = v28;
  v121 = v40;
  result.size = v121;
  result.origin = v120;
  return result;
}

- (void)p_updateCachedStyleInformationFromCellID:(TSUCellCoord)d
{
  v38 = objc_msgSend_tableInfo(self, a2, *&d, v3);
  v7 = objc_msgSend_cellStyleAtCellID_isDefault_(v38, v6, *&d, 0);

  v11 = v7;
  if (v7 || (objc_msgSend_tableInfo(self, v8, v9, v10), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(v39, v12, *&d, 1, 0), v13 = objc_claimAutoreleasedReturnValue(), v39, (v11 = v13) != 0))
  {
    v40 = v11;
    objc_opt_class();
    v16 = objc_msgSend_valueForProperty_(v40, v14, 904, v15);
    v17 = TSUCheckedDynamicCast();

    if (v17)
    {
      objc_msgSend_topInset(v17, v18, v19, v20);
      v22 = v21;
      objc_msgSend_leftInset(v17, v23, v24, v25);
      v27 = v26;
      objc_msgSend_bottomInset(v17, v28, v29, v30);
      v32 = v31;
      objc_msgSend_rightInset(v17, v33, v34, v35);
      self->mCachedPaddingForEditingCell.top = v22;
      self->mCachedPaddingForEditingCell.left = v27;
      self->mCachedPaddingForEditingCell.bottom = v32;
      self->mCachedPaddingForEditingCell.right = v36;
      self->mCachedPaddingForEditingCell.left = sub_2213B4860(v27);
      self->mCachedPaddingForEditingCell.right = sub_2213B4860(self->mCachedPaddingForEditingCell.right);
    }

    self->mCachedVerticalAlignmentForEditingCell = 0;
    v37 = objc_msgSend_intValueForProperty_(v40, v18, 903, v20);
    if ((v37 & 0x7FFFFFFF) != 0)
    {
      self->mCachedVerticalAlignmentForEditingCell = v37;
    }
  }
}

- (void)p_prepareAttachmentCellsIfNeeded
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, v2, v3);
  v9 = objc_msgSend_supportsInlineAttachments(v5, v6, v7, v8);

  if ((v9 & 1) != 0 && self->mShouldUpdateAttachmentChildren)
  {
    objc_msgSend_validate(self, v10, v11, v12);
    v54 = sub_2211BB074(self);
    v13 = MEMORY[0x277D81258];
    v17 = objc_msgSend_allKeys(self->_attachmentCellStorageToLayoutMap, v14, v15, v16);
    v52 = objc_msgSend_setWithArray_(v13, v18, v17, v19);

    v53 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22);
    v23 = sub_2211BAC20(self);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = objc_msgSend_reverseObjectEnumerator(v54, v24, v25, v26);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v60, v64, 16);
    if (v32)
    {
      v33 = *v61;
      do
      {
        v34 = 0;
        v35 = v23;
        do
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v27);
          }

          v36 = objc_msgSend_cellRange(*(*(&v60 + 1) + 8 * v34), v29, v30, v31, v52, v53);
          v23 = objc_msgSend_region_addingRange_(TSTCellRegion, v37, v35, v36, v37);

          ++v34;
          v35 = v23;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v60, v64, 16);
      }

      while (v32);
    }

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_2211C2828;
    v57[3] = &unk_278460BD0;
    v57[4] = self;
    v38 = v52;
    v58 = v38;
    v39 = v53;
    v59 = v39;
    objc_msgSend_enumerateCellRangesUsingBlock_(v23, v40, v57, v41);
    if (objc_msgSend_count(v39, v42, v43, v44) || objc_msgSend_count(v38, v45, v46, v47))
    {
      if (!self->_attachmentCellStorageToLayoutMap)
      {
        v48 = objc_alloc_init(MEMORY[0x277D812B8]);
        attachmentCellStorageToLayoutMap = self->_attachmentCellStorageToLayoutMap;
        self->_attachmentCellStorageToLayoutMap = v48;
      }

      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_2211C2FE4;
      v56[3] = &unk_278460BF8;
      v56[4] = self;
      objc_msgSend_enumerateObjectsUsingBlock_(v38, v45, v56, v47, v52);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2211C3088;
      v55[3] = &unk_278460C20;
      v55[4] = self;
      objc_msgSend_enumerateObjectsUsingBlock_(v39, v50, v55, v51);
    }

    self->mShouldUpdateAttachmentChildren = 0;
  }
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  childCopy = child;
  v8 = objc_msgSend_containedTextEditingLayout(self, v5, v6, v7);

  if (v8 != childCopy)
  {
    objc_opt_class();
    v12 = TSUDynamicCast();
    v16 = v12;
    if (!v12)
    {
      v126.receiver = self;
      v126.super_class = TSTLayout;
      [(TSTLayout *)&v126 maximumFrameSizeForChild:childCopy];
      v71 = v76;
      v72 = v77;
LABEL_56:

      goto LABEL_57;
    }

    v17 = objc_msgSend_cachedPadding(v12, v13, v14, v15);
    objc_msgSend_leftInset(v17, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_cachedPadding(v16, v23, v24, v25);
    objc_msgSend_rightInset(v26, v27, v28, v29);
    v31 = v30;
    v35 = objc_msgSend_cachedPadding(v16, v32, v33, v34);
    objc_msgSend_topInset(v35, v36, v37, v38);
    v40 = v39;
    v44 = objc_msgSend_cachedPadding(v16, v41, v42, v43);
    objc_msgSend_bottomInset(v44, v45, v46, v47);
    v49 = v48;

    objc_msgSend_maxSize(v16, v50, v51, v52);
    v125 = v53;
    v55 = v54;
    v123 = *&v54;
    if (objc_msgSend_cachedCellWraps(v16, v56, v57, v58))
    {
      v62 = objc_msgSend_cachedMergeRange(v16, v59, v60, v61);
      if (v62 == 0x7FFFFFFF || (v62 & 0xFFFF00000000) == 0x7FFF00000000 || !(v63 >> 32) || !v63)
      {
        v67 = objc_msgSend_cachedCellID(v16, v63, v64, v65, v123);
        v68 = 0x100000001;
      }

      else
      {
        v67 = objc_msgSend_cachedMergeRange(v16, v63, v64, v65);
        v68 = v66;
      }

      if (WORD2(v67) == 0x7FFF)
      {
        v95 = 0xFFFFFFFFLL;
      }

      else
      {
        v95 = WORD2(v67);
      }

      v96 = v67 << 32;
      v97 = 0xFFFFFFFF00000000;
      if (v67 == 0x7FFFFFFF)
      {
        v96 = 0xFFFFFFFF00000000;
      }

      v98 = (v68 + v95 - 1);
      if (HIDWORD(v68))
      {
        v97 = ((v96 + v68) & 0xFFFFFFFF00000000) - 0x100000000;
      }

      if (!v68)
      {
        v98 = 0xFFFFFFFFLL;
      }

      if (objc_msgSend_p_layoutWhollyContainsGridRange_(self, v66, v96 | v95, v98 | v97, v123))
      {
        v102 = v22;
        v103 = v55;
        v104 = v125;
      }

      else
      {
        v110 = objc_msgSend_layoutEngine(self, v99, v100, v101);
        objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v110, v111, v67, v68, 1);
        v103 = v112;
        v104 = v113;
        v102 = v22;
      }

      goto LABEL_44;
    }

    v78 = objc_msgSend_cachedParagraphAlignment(v16, v59, v60, v61);
    v85 = objc_msgSend_cachedCellID(v16, v79, v80, v81);
    if (v78 == 4)
    {
      v78 = objc_msgSend_naturalAlignmentForCellID_(self, v82, v85, v84);
    }

    v86 = objc_msgSend_tableInfo(self, v82, v83, v84, v123);
    v89 = objc_msgSend_mergeRangeAtCellID_(v86, v87, v85, v88);
    v91 = v90;

    if (v89 == 0x7FFFFFFF || (v89 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v91) || !v91)
    {
      v91 = 0x100000001;
    }

    else
    {
      v85 = v89;
    }

    if (v78 == 2)
    {
      v114 = objc_msgSend_layoutEngine(self, v92, v93, v94);
      v85 = v85;
      v91 = v91 & 0xFFFFFFFF00000000 | objc_msgSend_numberOfColumns(v114, v115, v116, v117);
    }

    else
    {
      v105 = HIDWORD(v85);
      if (v78 != 1)
      {
        if (!v78)
        {
          v106 = objc_msgSend_layoutEngine(self, v92, v93, v94);
          v91 = (objc_msgSend_numberOfColumns(v106, v107, v108, v109) - WORD2(v85)) | v91 & 0xFFFFFFFF00000000;
        }

        goto LABEL_43;
      }

      v85 = v85;
      v91 = (v91 + v105) | v91 & 0xFFFFFFFF00000000;
    }

    LOWORD(v105) = 0;
LABEL_43:
    sub_2211BF2D0(self, v85 & 0xFFFF0000FFFFFFFFLL | (v105 << 32), v91);
    v103 = v118;
    v104 = v119;
    v102 = v22;
LABEL_44:
    v120 = v104 <= 0.0;
    if (v103 <= 0.0)
    {
      v120 = 1;
    }

    if (v120)
    {
      v72 = 1.79769313e308;
    }

    else
    {
      v72 = v104;
    }

    if (v120)
    {
      v71 = 1.79769313e308;
    }

    else
    {
      v71 = v103;
    }

    if (!v120 && v125 > v40 + v49 && v124 > v102 + v31)
    {
      v71 = v103 - (v102 + v31);
      v72 = v104 - (v40 + v49);
    }

    goto LABEL_56;
  }

  objc_msgSend_computedEditingCellContentFrame(self, v9, v10, v11);
  v71 = v69;
  v72 = v70;
  v73 = self->mCachedPaddingForEditingCell.left + self->mCachedPaddingForEditingCell.right;
  v74 = self->mCachedPaddingForEditingCell.top + self->mCachedPaddingForEditingCell.bottom;
  if (v70 > v74 && v69 > v73)
  {
    v71 = v69 - v73;
    v72 = v70 - v74;
  }

LABEL_57:

  v121 = v71;
  v122 = v72;
  result.height = v122;
  result.width = v121;
  return result;
}

- (UIEdgeInsets)captionEdgeInsets
{
  v23.receiver = self;
  v23.super_class = TSTLayout;
  [(TSTLayout *)&v23 captionEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v14 = objc_msgSend_info(self, v11, v12, v13);
  isInlineWithText = objc_msgSend_isInlineWithText(v14, v15, v16, v17);

  if (isInlineWithText)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v6;
  }

  if (isInlineWithText)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v10;
  }

  v21 = v4;
  v22 = v8;
  result.right = v20;
  result.bottom = v22;
  result.left = v19;
  result.top = v21;
  return result;
}

- (void)updateChildrenFromInfo
{
  objc_msgSend_p_prepareAttachmentCellsIfNeeded(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TSTLayout;
  [(TSWPTextHostLayout *)&v5 updateChildrenFromInfo];
}

- (id)childInfosForChildLayouts
{
  v19.receiver = self;
  v19.super_class = TSTLayout;
  childInfosForChildLayouts = [(TSTLayout *)&v19 childInfosForChildLayouts];
  if (objc_msgSend_count(self->_attachmentCellStorageToLayoutMap, v4, v5, v6))
  {
    v10 = objc_msgSend_allKeys(self->_attachmentCellStorageToLayoutMap, v7, v8, v9);
    v14 = objc_msgSend_mutableCopy(v10, v11, v12, v13);

    v17 = objc_msgSend_arrayByAddingObjectsFromArray_(childInfosForChildLayouts, v15, v14, v16);

    childInfosForChildLayouts = v17;
  }

  return childInfosForChildLayouts;
}

- (void)removeContainedTextEditingLayout
{
  self->mRemovingContainedTextEditorLayout = 1;
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  objc_msgSend_clearDynamicStrokesForCellRange_(v5, v6, *&self->mEditingSpillingTextRange.origin, *&self->mEditingSpillingTextRange.size);

  self->mEditingSpillingTextRange = xmmword_2217E07C0;
  self->mPrevEditingSpillingTextRange = xmmword_2217E07C0;
  self->mSpillingTextSize = *MEMORY[0x277CBF3A8];
  self->mRemovingContainedTextEditorLayout = 0;
}

- (void)removeAttachmentCellLayouts
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_objectEnumerator(self->_attachmentCellStorageToLayoutMap, a2, v2, v3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_removeFromParent(*(*(&v16 + 1) + 8 * v12++), v7, v8, v9);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v20, 16);
    }

    while (v10);
  }

  objc_msgSend_removeAllObjects(self->_attachmentCellStorageToLayoutMap, v13, v14, v15);
}

- (id)attachmentCellLayoutForCellID:(TSUCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  v10 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v7, v8, v9);
  v14 = objc_msgSend_supportsInlineAttachments(v10, v11, v12, v13);

  if (v14)
  {
    if (cellCopy)
    {
      v21 = cellCopy;
    }

    else
    {
      v26 = objc_msgSend_tableInfo(self, v15, v16, v17);
      v21 = objc_msgSend_cellAtCellID_(v26, v27, *&d, v28);
    }

    if (objc_msgSend_valueType(v21, v18, v19, v20) == 9)
    {
      v29 = objc_msgSend_richTextValue(v21, v22, v23, v24);
      v25 = objc_msgSend_attachmentCount(v29, v30, v31, v32);

      if (v25)
      {
        objc_opt_class();
        v36 = objc_msgSend_layoutController(self, v33, v34, v35);
        v40 = objc_msgSend_richTextValue(v21, v37, v38, v39);
        v43 = objc_msgSend_layoutForInfo_(v36, v41, v40, v42);
        v25 = TSUCheckedDynamicCast();
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (double)viewScaleForZoomingToSelectionPath:(id)path targetPointSize:(double)size
{
  v5.receiver = self;
  v5.super_class = TSTLayout;
  [(TSTLayout *)&v5 viewScaleForZoomingToSelectionPath:path targetPointSize:size];
  return result;
}

- (CGPoint)calculatePointFromSearchReference:(id)reference
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)calculatePointFromSearchReferenceWithoutValidation:(id)validation
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference
{
  v3 = objc_alloc(MEMORY[0x277D80638]);
  isVertical = objc_msgSend_initWithLeftAnchor_rightAnchor_isVertical_(v3, v4, 0, v5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));

  return isVertical;
}

- (BOOL)orderedBefore:(id)before
{
  beforeCopy = before;
  v8 = objc_msgSend_layoutHint(self, v5, v6, v7);
  v12 = objc_msgSend_cellRange(v8, v9, v10, v11);
  v16 = objc_msgSend_layoutHint(beforeCopy, v13, v14, v15);
  v20 = objc_msgSend_cellRange(v16, v17, v18, v19);
  v21 = WORD2(v12) < WORD2(v20);
  if (v12 != v20)
  {
    v21 = 0;
  }

  v22 = v12 < v20 || v21;

  return v22;
}

- (BOOL)canvasShouldScrollForSelectionPath:(id)path
{
  pathCopy = path;
  objc_msgSend_rectInRootForSelectionPath_(self, v5, pathCopy, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  x = self->mCanvasVisibleRect.origin.x;
  y = self->mCanvasVisibleRect.origin.y;
  width = self->mCanvasVisibleRect.size.width;
  height = self->mCanvasVisibleRect.size.height;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (CGRectIsInfinite(v37))
  {
    v19 = 1;
  }

  else
  {
    v38.origin.x = v8;
    v38.origin.y = v10;
    v38.size.width = v12;
    v38.size.height = v14;
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v39 = CGRectIntersection(v38, v50);
    v35 = v39.origin.y;
    v36 = v39.origin.x;
    v33 = v39.size.height;
    v34 = v39.size.width;
    v23 = objc_msgSend_orderedSelections(pathCopy, v20, v21, v22);
    v27 = objc_msgSend_lastObject(v23, v24, v25, v26);

    objc_opt_class();
    LODWORD(v23) = objc_opt_isKindOfClass();
    v40.origin.y = v35;
    v40.origin.x = v36;
    v40.size.height = v33;
    v40.size.width = v34;
    v19 = 1;
    if (((CGRectIsNull(v40) | v23) & 1) == 0)
    {
      v41.origin.x = v8;
      v41.origin.y = v10;
      v41.size.width = v12;
      v41.size.height = v14;
      v51.origin.y = v35;
      v51.origin.x = v36;
      v51.size.height = v33;
      v51.size.width = v34;
      if (CGRectEqualToRect(v41, v51) || ((v42.origin.x = v8, v42.origin.y = v10, v42.size.width = v12, v42.size.height = v14, v30 = CGRectGetWidth(v42), v43.origin.x = x, v43.origin.y = y, v43.size.width = width, v43.size.height = height, v30 >= CGRectGetWidth(v43)) || (v44.origin.y = v35, v44.origin.x = v36, v44.size.height = v33, v44.size.width = v34, v31 = CGRectGetWidth(v44), v45.origin.x = v8, v45.origin.y = v10, v45.size.width = v12, v45.size.height = v14, v31 >= CGRectGetWidth(v45))) && ((v46.origin.x = v8, v46.origin.y = v10, v46.size.width = v12, v46.size.height = v14, v32 = CGRectGetHeight(v46), v47.origin.x = x, v47.origin.y = y, v47.size.width = width, v47.size.height = height, v32 >= CGRectGetHeight(v47)) || (v48.origin.y = v35, v48.origin.x = v36, v48.size.height = v33, v48.size.width = v34, v28 = CGRectGetHeight(v48), v49.origin.x = v8, v49.origin.y = v10, v49.size.width = v12, v49.size.height = v14, v28 >= CGRectGetHeight(v49))))
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  targetCopy = target;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_cachedPadding(v5, v6, v7, v8);

    if (v10)
    {
      v11 = objc_msgSend_cachedPadding(v9, v6, v7, v8);
      objc_msgSend_edgeInsets(v11, v12, v13, v14);
LABEL_8:
      left = v16;
      right = v18;
      *&v32 = v17;
      *&v33 = v15;

      goto LABEL_9;
    }
  }

  __asm { FMOV            V0.2D, #-1.0 }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&self->mCachedPaddingForEditingCell.top, _Q0), vceqq_f64(*&self->mCachedPaddingForEditingCell.bottom, _Q0))))) & 1) == 0 || !self->mContainedTextEditingLayout)
  {
    v11 = objc_msgSend_layoutEngine(self, v6, v7, v8);
    objc_msgSend_paddingForCellID_(v11, v26, 0, v27);
    goto LABEL_8;
  }

  v32 = *&self->mCachedPaddingForEditingCell.bottom;
  v33 = *&self->mCachedPaddingForEditingCell.top;
  left = self->mCachedPaddingForEditingCell.left;
  right = self->mCachedPaddingForEditingCell.right;
LABEL_9:

  v29 = *&v32;
  v28 = *&v33;
  v30 = left;
  v31 = right;
  result.right = v31;
  result.bottom = v29;
  result.left = v30;
  result.top = v28;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  objc_msgSend_adjustedInsetsForTarget_(self, a2, target, target, outWidth, gap);
  widthCopy = 10.0;
  if (width <= 10.0)
  {
    widthCopy = width;
  }

  if (v11 >= (width - widthCopy) * 0.5)
  {
    v13 = (width - widthCopy) * 0.5;
  }

  else
  {
    v13 = v11;
  }

  v14 = width + v13 * -2.0;
  if (v14 < widthCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTLayout positionForColumnIndex:bodyWidth:target:outWidth:outGap:]", v10);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 6256, 0, "created an undersized column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  if (outWidth)
  {
    *outWidth = v14;
  }

  return v13;
}

- (CGRect)p_textFrameForWrappingCell:(TSUCellCoord)cell defaultRowHeight:(BOOL *)height
{
  v7 = objc_msgSend_tableInfo(self, a2, *&cell, height);
  v10 = objc_msgSend_mergeRangeAtCellID_(v7, v8, *&cell, v9);
  v12 = v11;

  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v12) && v12)
  {
    v16 = objc_msgSend_layoutHint(self, v13, v14, v15);
    v20 = objc_msgSend_cellRange(v16, v17, v18, v19);
    v22 = v21;

    v23 = sub_221119E0C(v10, v12, v20, v22);
    if ((v23 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && HIDWORD(v24) && v24 && (v23 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v23) & 0x101FFFF00000000) != 0 || v24 != *(MEMORY[0x277D813C8] + 8)))
    {
      v12 = v24;
      v10 = v23;
    }

    v27 = objc_msgSend_tableInfo(self, v24, v25, v26);
    v29 = v27;
    if (v10 == 0x7FFFFFFF)
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v27, v28, 0x7FFFFFFFLL, height);
    }

    else
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v27, v28, (v10 + HIDWORD(v12) - 1), height);
    }

    v30 = v10 << 32;
    if (v10 == 0x7FFFFFFF)
    {
      v30 = 0xFFFFFFFF00000000;
    }

    if (WORD2(v10) == 0x7FFF)
    {
      v31 = 0xFFFFFFFFLL;
    }

    else
    {
      v31 = WORD2(v10);
    }

    v32 = v30 | v31;
    v33 = (v12 + v31 - 1);
    if (!v12)
    {
      v33 = 0xFFFFFFFFLL;
    }

    v34 = ((v30 + v12) & 0xFFFFFFFF00000000 | v33) - 0x100000000;
    goto LABEL_32;
  }

  if (cell.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = cell.column;
  }

  v36 = *&cell << 32;
  if (cell.row == 0x7FFFFFFFLL)
  {
    v36 = 0xFFFFFFFF00000000;
  }

  v32 = v36 | column;
  if (height && cell.row != 0x7FFFFFFFLL && (*&cell & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v29 = objc_msgSend_tableInfo(self, v13, v14, v15);
    objc_msgSend_heightOfRowAtIndex_isDefault_(v29, v37, *&cell, height);
    v34 = v32;
LABEL_32:

    goto LABEL_34;
  }

  v34 = v36 | column;
LABEL_34:

  v38 = sub_2211BBEC4(self, v32, v34, &unk_2834A2AF0);
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)computedEditingCellContentFrame
{
  x = self->mComputedEditingCellContentFrame.origin.x;
  y = self->mComputedEditingCellContentFrame.origin.y;
  width = self->mComputedEditingCellContentFrame.size.width;
  height = self->mComputedEditingCellContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)naturalAlignmentForCellID:(TSUCellCoord)d
{
  v9 = objc_msgSend_p_defaultAlignmentForTableWritingDirection(self, a2, *&d, v3);
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTLayout naturalAlignmentForCellID:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 6523, 0, "Contained text editing layout but invalid editing cell ID?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_tableInfo(self, v6, v7, v8);
  v23 = objc_msgSend_newCell(v19, v20, v21, v22);

  v27 = objc_msgSend_tableInfo(self, v24, v25, v26);
  Cell_atCellID = objc_msgSend_getCell_atCellID_(v27, v28, v23, *&d);

  if (!Cell_atCellID && objc_msgSend_valueType(v23, v30, v31, v32) == 9)
  {
    v33 = objc_msgSend_richTextStorageForLayout(v23, v30, v31, v32);
    v36 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(v33, v34, 0, v35);

    if (v36 != -1)
    {
      v9 = v36 == 1;
    }

LABEL_11:
    if (objc_msgSend_valueIsNumberOrTime(v23, v37, v38, v39))
    {
      v49 = objc_msgSend_tableInfo(self, v46, v47, v48);
      v51 = objc_msgSend_textStyleAtCellID_isDefault_(v49, v50, *&d, 0);

      if (objc_msgSend_intValueForProperty_(v51, v52, 86, v53) == 4)
      {
        v9 = 1;
      }
    }

    goto LABEL_15;
  }

  v40 = objc_msgSend_tableInfo(self, v30, v31, v32);
  v42 = objc_msgSend_textStyleAtCellID_isDefault_(v40, v41, *&d, 0);

  v45 = objc_msgSend_intValueForProperty_(v42, v43, 44, v44);
  if (v45 != -1)
  {
    v9 = v45 == 1;
  }

  if (!Cell_atCellID)
  {
    goto LABEL_11;
  }

LABEL_15:

  return v9;
}

- (TSUCellCoord)p_cellIDForWPLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_cachedCellID(v4, v5, v6, v7);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTLayout p_cellIDForWPLayout:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 6577, 0, "TSTLayout should only parent layouts for editing text or cells with inline attachments!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    v9 = 0x7FFF7FFFFFFFLL;
  }

  return v9;
}

- (BOOL)forceParentAutosizeFlagsForTextLayout:(id)layout
{
  v5 = objc_msgSend_storage(layout, a2, layout, v3);
  v9 = objc_msgSend_tableNameEditingStorage(self, v6, v7, v8);
  LOBYTE(self) = v5 == v9;

  return self;
}

- (unint64_t)autosizeFlagsForTextLayout:(id)layout
{
  layoutCopy = layout;
  v8 = layoutCopy;
  if (self->mContainedTextEditingLayout != layoutCopy)
  {
    v9 = objc_msgSend_storage(layoutCopy, v5, v6, v7);
    v13 = objc_msgSend_tableNameEditingStorage(self, v10, v11, v12);
    v17 = v13;
    if (v9 == v13)
    {
      v24 = objc_msgSend_layoutEngine(self, v14, v15, v16);
      v28 = objc_msgSend_styleProvidingSource(v24, v25, v26, v27);

      if (v28)
      {
        v22 = objc_msgSend_layoutEngine(self, v29, v30, v31);
        v35 = objc_msgSend_styleProvidingSource(v22, v32, v33, v34);
        if (v35)
        {
          v23 = 3;
        }

        else
        {
          v23 = 96;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    objc_opt_class();
    v18 = TSUDynamicCast();
    v22 = v18;
    if (v18)
    {
      v23 = objc_msgSend_cachedAutoSizeFlags(v18, v19, v20, v21);
    }

    else
    {
      v23 = 96;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (self->mContainedTextEditorTextWraps)
  {
    v23 = 1;
  }

  else
  {
    v23 = 37;
  }

LABEL_16:

  return v23;
}

- (double)maxAutoGrowLineWidthForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (self->mContainedTextEditingLayout == layoutCopy)
  {
    objc_msgSend_computedEditingCellContentFrame(self, v4, v5, v6);
    v23 = v24;
  }

  else
  {
    objc_opt_class();
    v8 = TSUCheckedDynamicCast();
    if (objc_msgSend_cachedCellWraps(v8, v9, v10, v11))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTLayout maxAutoGrowLineWidthForTextLayout:]", v13);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 6616, 0, "should only be asking max width for unwrapped rich layouts");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    }

    v23 = 1.79769313e308;
  }

  return v23;
}

- (int)verticalAlignmentForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (self->mContainedTextEditingLayout == layoutCopy)
  {
    mCachedVerticalAlignmentForEditingCell = self->mCachedVerticalAlignmentForEditingCell;
  }

  else
  {
    objc_opt_class();
    v5 = TSUCheckedDynamicCast();
    mCachedVerticalAlignmentForEditingCell = objc_msgSend_cachedVerticalAlignment(v5, v6, v7, v8);
  }

  return mCachedVerticalAlignmentForEditingCell;
}

- (void)invalidateForAutosizingTextLayout:(id)layout
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->mComputedEditingCellContentFrame.origin = *MEMORY[0x277CBF3A0];
  self->mComputedEditingCellContentFrame.size = v3;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (self->mContainedTextEditingLayout == layoutCopy)
  {
    objc_msgSend_p_nonAutosizedFrameForTextEditingLayout_(self, v4, layoutCopy, v5);
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  else
  {
    objc_opt_class();
    v7 = TSUCheckedDynamicCast();
    objc_msgSend_p_nonAutosizedFrameForRichTextLayout_(self, v8, v7, v9);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  v22 = v11;
  v23 = v13;
  v24 = v15;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)p_nonAutosizedFrameForRichTextLayout:(id)layout
{
  layoutCopy = layout;
  v8 = objc_msgSend_cachedMergeRange(layoutCopy, v5, v6, v7);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000 || !(v9 >> 32) || !v9)
  {
    v12 = objc_msgSend_cachedCellID(layoutCopy, v9, v10, v11);
    v14 = 0x100000001;
  }

  else
  {
    v12 = objc_msgSend_cachedMergeRange(layoutCopy, v9, v10, v11);
    v14 = v13;
  }

  v53.origin.x = sub_2211BC850(self, v12, v14);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  if (CGRectIsEmpty(v53))
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v24 = objc_msgSend_cachedCellID(layoutCopy, v19, v20, v21);
    if (WORD2(v24) == 0x7FFF)
    {
      v26 = 0xFFFFFFFFLL;
    }

    else
    {
      v26 = WORD2(v24);
    }

    v27 = v24 << 32;
    if (v24 == 0x7FFFFFFF)
    {
      v27 = 0xFFFFFFFF00000000;
    }

    v28 = objc_msgSend_p_layoutWhollyContainsGridRange_(self, v25, v27 | v26, v27 | v26);
    if (WORD2(v12) == 0x7FFF)
    {
      v30 = 0xFFFFFFFFLL;
    }

    else
    {
      v30 = WORD2(v12);
    }

    v31 = v12 << 32;
    if (v12 == 0x7FFFFFFF)
    {
      v31 = 0xFFFFFFFF00000000;
    }

    v32 = v31 | v30;
    v33 = (v14 + v30 - 1);
    v34 = ((v31 + v14) & 0xFFFFFFFF00000000) - 0x100000000;
    if (!HIDWORD(v14))
    {
      v34 = 0xFFFFFFFF00000000;
    }

    if (!v14)
    {
      v33 = 0xFFFFFFFFLL;
    }

    if (v28)
    {
      v35 = v33 | v31;
      if (self->mLayoutDirectionIsLeftToRight)
      {
        v36 = v32;
      }

      else
      {
        v36 = v35;
      }

      v22 = sub_2211BBEC4(self, v36, v36, &unk_2834A2B10);
      v23 = v37;
    }

    else
    {
      objc_msgSend_p_rangeUpAndLeftOfIntersectionRangeOfGridRange_(self, v29, v32, v33 | v34);
      v39 = v38;
      v41 = v40;
      v45 = objc_msgSend_layoutEngine(self, v42, v43, v44);
      objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v45, v46, v12, v14, 1);
      width = v47;
      height = v48;
      v22 = x - v39;
      v23 = y - v41;
    }
  }

  v49 = v22;
  v50 = v23;
  v51 = width;
  v52 = height;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (CGSize)p_rangeUpAndLeftOfIntersectionRangeOfGridRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x4012000000;
  v56 = sub_2211C5130;
  v57 = nullsub_22;
  v58 = &unk_22188E88F;
  v59 = -1;
  v60 = -1;
  v6 = objc_msgSend_layoutEngine(self, a2, *&range.var0, *&range.var1);
  isDynamicallyRepressingFrozenHeaderRows = objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v6, v7, v8, v9);

  v14 = objc_msgSend_layoutEngine(self, v11, v12, v13);
  isDynamicallyRepressingFrozenHeaderColumns = objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v14, v15, v16, v17);

  v22 = objc_msgSend_spaceBundle(self, v19, v20, v21);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2211C5140;
  v49[3] = &unk_278460C48;
  v50 = (isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns) & 1;
  v51 = isDynamicallyRepressingFrozenHeaderColumns;
  v52 = isDynamicallyRepressingFrozenHeaderRows;
  v49[5] = var0;
  v49[6] = var1;
  v49[4] = &v53;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v22, v23, v49, v24);

  v25 = v54[6];
  v29 = objc_msgSend_layoutEngine(self, v26, v27, v28);
  v31 = v29;
  v32 = LOWORD(var0.var0) << 32;
  if (var0.var0 == -1)
  {
    v32 = 0x7FFF00000000;
  }

  v33 = 0x7FFFFFFFLL;
  if (HIDWORD(*&var0) != 0xFFFFFFFF)
  {
    v33 = HIDWORD(*&var0);
  }

  v34 = v25 - (*&var0 & 0xFFFFFFFF00000000);
  if (HIDWORD(v34))
  {
    v35 = ((*&var0 + (v34 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  else
  {
    v35 = 0xFFFFFFFF00000000;
  }

  v37 = HIDWORD(v35) < HIDWORD(*&var0) || v35 == 0xFFFFFFFF00000000 || HIDWORD(*&var0) == 0xFFFFFFFF;
  v38 = ((HIDWORD(v35) - var0.var1) << 32) + 0x100000000;
  if (v37)
  {
    v38 = 0;
  }

  v39 = (v25 - 1);
  if (v25 == var0.var0)
  {
    v39 = 0xFFFFFFFFLL;
  }

  v41 = v39 < var0.var0 || v39 == 0xFFFFFFFFLL || var0.var0 == -1;
  v42 = (v39 - LOWORD(var0.var0) + 1);
  if (v41)
  {
    v42 = 0;
  }

  objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v29, v30, v32 | v33, v38 | v42, 1);
  v44 = v43;
  v46 = v45;

  _Block_object_dispose(&v53, 8);
  v47 = v44;
  v48 = v46;
  result.height = v48;
  result.width = v47;
  return result;
}

- (BOOL)p_layoutWhollyContainsGridRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v6 = objc_msgSend_layoutEngine(self, a2, *&range.var0, *&range.var1);
  isDynamicallyRepressingFrozenHeaderRows = objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v6, v7, v8, v9);

  v14 = objc_msgSend_layoutEngine(self, v11, v12, v13);
  LOBYTE(v6) = objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v14, v15, v16, v17);

  v21 = objc_msgSend_spaceBundle(self, v18, v19, v20);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2211C5384;
  v25[3] = &unk_278460C48;
  v26 = (isDynamicallyRepressingFrozenHeaderRows | v6) & 1;
  v27 = v6;
  v28 = isDynamicallyRepressingFrozenHeaderRows;
  v25[5] = var0;
  v25[6] = var1;
  v25[4] = &v29;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v21, v22, v25, v23);

  LOBYTE(var0.var0) = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  return var0.var0;
}

- (BOOL)forceParentAutosizedFrameForTextLayout:(id)layout
{
  layoutCopy = layout;
  v8 = objc_msgSend_layoutEngine(self, v5, v6, v7);
  v15 = objc_msgSend_styleProvidingSource(v8, v9, v10, v11);
  if (v15)
  {
    v16 = objc_msgSend_storage(layoutCopy, v12, v13, v14);
    v20 = objc_msgSend_tableNameEditingStorage(self, v17, v18, v19);
    v21 = v16 == v20;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v11 = layoutCopy;
  if (self->mContainedTextEditingLayout == layoutCopy)
  {
    objc_msgSend_p_autosizedFrameForTextEditingLayout_textSize_(self, v8, layoutCopy, v10, width, height);
    goto LABEL_9;
  }

  v12 = objc_msgSend_storage(layoutCopy, v8, v9, v10);
  v16 = objc_msgSend_tableNameEditingStorage(self, v13, v14, v15);
  v20 = v16;
  if (v12 == v16)
  {
    v36 = objc_msgSend_layoutEngine(self, v17, v18, v19);
    v40 = objc_msgSend_styleProvidingSource(v36, v37, v38, v39);

    if (!v40)
    {
      goto LABEL_4;
    }

    v32 = sub_2211C0188(self);
LABEL_9:
    v25 = v32;
    v27 = v33;
    v29 = v34;
    v31 = v35;
    goto LABEL_12;
  }

LABEL_4:
  objc_opt_class();
  v23 = TSUDynamicCast();
  if (v23)
  {
    objc_msgSend_p_autosizedFrameForRichTextLayout_textSize_(self, v21, v23, v22, width, height);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v25 = *MEMORY[0x277CBF398];
    v27 = *(MEMORY[0x277CBF398] + 8);
    v29 = *(MEMORY[0x277CBF398] + 16);
    v31 = *(MEMORY[0x277CBF398] + 24);
  }

LABEL_12:
  v41 = v25;
  v42 = v27;
  v43 = v29;
  v44 = v31;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGRect)p_autosizedFrameForTextEditingLayout:(id)layout textSize:(CGSize)size
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_autosizedFrameForRichTextLayout:(id)layout textSize:(CGSize)size
{
  width = size.width;
  layoutCopy = layout;
  v10 = objc_msgSend_cachedCellID(layoutCopy, v7, v8, v9);
  v11 = sub_2211BC850(self, v10, 0x100000001uLL);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v21 = objc_msgSend_cachedCellID(layoutCopy, v18, v19, v20);
  if (WORD2(v21) == 0x7FFF)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v23 = WORD2(v21);
  }

  v24 = v21 << 32;
  if (v21 == 0x7FFFFFFF)
  {
    v24 = 0xFFFFFFFF00000000;
  }

  v25 = v24 | v23;
  if (objc_msgSend_p_layoutWhollyContainsGridRange_(self, v22, v24 | v23, v24 | v23))
  {
    v11 = sub_2211BBEC4(self, v25, v25, &unk_2834A2B10);
    v13 = v29;
  }

  if (v15 <= width)
  {
    if (objc_msgSend_cachedParagraphAlignment(layoutCopy, v26, v27, v28))
    {
      v33 = objc_msgSend_cachedParagraphAlignment(layoutCopy, v30, v31, v32);
      v34 = width - v15;
      if (v33 == 1)
      {
        v11 = v11 - v34;
        objc_msgSend_setCachedAutosizedFrame_(layoutCopy, v30, v31, v32, v11, v13, width, v17);
        goto LABEL_15;
      }

      v11 = v11 + v34 * -0.5;
    }

    objc_msgSend_setCachedAutosizedFrame_(layoutCopy, v30, v31, v32, v11, v13, width, v17);
    goto LABEL_15;
  }

  width = v15;
  objc_msgSend_setCachedAutosizedFrame_(layoutCopy, v26, v27, v28, v11, v13, v15, v17);
LABEL_15:

  v35 = v11;
  v36 = v13;
  v37 = width;
  v38 = v17;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)p_computeSpillingTextFrameForEditingLayout:(id)layout textSize:(CGSize)size editingSpillRange:(TSUCellRect *)range
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  objc_msgSend_computedEditingCellContentFrame(self, v9, v10, v11);
  if (width >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = width;
  }

  self->mSpillingTextSize.width = v15;
  self->mSpillingTextSize.height = height;
  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTLayout p_computeSpillingTextFrameForEditingLayout:textSize:editingSpillRange:]", v13);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 7178, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  v25 = MEMORY[0x277CBEAD8];
  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s: %s", v27, "Do not call method", "[TSTLayout p_computeSpillingTextFrameForEditingLayout:textSize:editingSpillRange:]");
  v30 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v29, *MEMORY[0x277CBE658], v28, 0);
  v31 = v30;

  objc_exception_throw(v30);
}

- (id)dependentLayouts
{
  v19.receiver = self;
  v19.super_class = TSTLayout;
  dependentLayouts = [(TSTLayout *)&v19 dependentLayouts];
  if (self->mContainedTextEditingLayout || objc_msgSend_count(self->_attachmentCellStorageToLayoutMap, v3, v4, v5))
  {
    v7 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v3, dependentLayouts, v5);
    v10 = v7;
    mContainedTextEditingLayout = self->mContainedTextEditingLayout;
    if (mContainedTextEditingLayout)
    {
      objc_msgSend_addObject_(v7, v8, mContainedTextEditingLayout, v9);
    }

    if (objc_msgSend_count(self->_attachmentCellStorageToLayoutMap, v8, mContainedTextEditingLayout, v9))
    {
      v15 = objc_msgSend_allValues(self->_attachmentCellStorageToLayoutMap, v12, v13, v14);
      objc_msgSend_addObjectsFromArray_(v10, v16, v15, v17);
    }
  }

  else
  {
    v10 = dependentLayouts;
  }

  return v10;
}

- (CGRect)maskRectForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (self->mContainedTextEditingLayout == layoutCopy)
  {
    objc_msgSend_p_maskRectForTextEditingLayout_(self, v4, layoutCopy, v5);
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  else
  {
    objc_opt_class();
    v7 = TSUCheckedDynamicCast();
    objc_msgSend_p_maskRectForRichTextLayout_(self, v8, v7, v9);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  v22 = v11;
  v23 = v13;
  v24 = v15;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)p_maskRectForTextEditingLayout:(id)layout
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_maskRectForRichTextLayout:(id)layout
{
  layoutCopy = layout;
  objc_msgSend_cachedMaskRect(layoutCopy, v5, v6, v7);
  if (CGRectIsEmpty(v78))
  {
    v11 = objc_msgSend_p_spillRangeForMaskingRichTextLayout_(self, v8, layoutCopy, v10);
    v13 = v12;
    v14 = sub_2211BC850(self, v11, v12);
    v16 = v15;
    if ((objc_msgSend_cachedCellWraps(layoutCopy, v17, v18, v19) & 1) != 0 || (v42 = objc_msgSend_cachedMergeRange(layoutCopy, v20, v21, v22), v42 != 0x7FFFFFFF) && (v42 & 0xFFFF00000000) != 0x7FFF00000000 && v20 >> 32 && v20)
    {
      if (WORD2(v11) == 0x7FFF)
      {
        v23 = 0xFFFFFFFFLL;
      }

      else
      {
        v23 = WORD2(v11);
      }

      if (v11 == 0x7FFFFFFF)
      {
        v24 = 0xFFFFFFFF00000000;
      }

      else
      {
        v24 = v11 << 32;
      }

      if (HIDWORD(v13))
      {
        v25 = ((v24 + v13) & 0xFFFFFFFF00000000) - 0x100000000;
      }

      else
      {
        v25 = 0xFFFFFFFF00000000;
      }

      if (v13)
      {
        v26 = (v13 + v23 - 1);
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }

      v27 = objc_msgSend_p_layoutWhollyContainsGridRange_(self, v20, v24 | v23, v26 | v25);
      TSURectWithOriginAndSize();
      if (v27)
      {
        v35 = v31;
        v36 = v32;
      }

      else
      {
        objc_msgSend_p_rangeUpAndLeftOfIntersectionRangeOfGridRange_(self, v28, v24 | v23, v26 | v25);
        v35 = v51;
        v36 = v52;
        sub_2211BC400(self, v24 | v23, v26 | v25);
      }

      v16 = v33;
      v41 = v34;
      v53 = objc_msgSend_cachedMergeRange(layoutCopy, v28, v29, v30);
      if (v53 != 0x7FFFFFFF && (v53 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        if (v54 >> 32)
        {
          if (v54)
          {
            v57 = objc_msgSend_cachedCellID(layoutCopy, v54, v55, v56);
            v61 = objc_msgSend_cachedMergeRange(layoutCopy, v58, v59, v60);
            v63 = objc_msgSend_extendedPartitionRangeSingleSpaceIntersectionWithCellRange_(self, v62, v61, v62);
            v64 = v63;
            if (v57 != v63 || ((v63 ^ v57) & 0xFFFF00000000) != 0)
            {
              v65 = objc_msgSend_cachedMergeRange(layoutCopy, v54, v55, v56);
              v67 = v66;
              v70 = objc_msgSend_layoutEngine(self, v66, v68, v69);
              objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v70, v71, v65, v67 | ((v64 - v57) << 32), 1);
              v73 = v72;

              v36 = v36 + v73;
            }
          }
        }
      }

      objc_msgSend_setCachedMaskRect_(layoutCopy, v54, v55, v56, v35, v36, v16, v41);
    }

    else
    {
      objc_msgSend_cachedAutosizedFrame(layoutCopy, v20, v43, v44);
      v41 = v45;
      v35 = v14 - v46;
      v36 = 0.0;
      objc_msgSend_setCachedMaskRect_(layoutCopy, v47, v48, v49, v35, 0.0, v16, v45);
    }

    objc_msgSend_setCachedMaskSpillRange_(layoutCopy, v50, v11, v13);
  }

  else
  {
    objc_msgSend_cachedMaskRect(layoutCopy, v8, v9, v10);
    v35 = v37;
    v36 = v38;
    v16 = v39;
    v41 = v40;
  }

  v74 = v35;
  v75 = v36;
  v76 = v16;
  v77 = v41;
  result.size.height = v77;
  result.size.width = v76;
  result.origin.y = v75;
  result.origin.x = v74;
  return result;
}

- (CGSize)initialTextSize
{
  v2 = 8.0;
  v3 = 8.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (int)reapCoordinatesChangedMaskForChrome
{
  mCoordinatesChangedMaskForChrome = self->mCoordinatesChangedMaskForChrome;
  self->mCoordinatesChangedMaskForChrome = 0;
  return mCoordinatesChangedMaskForChrome;
}

- (id)p_getStyleProvidingAncestorLayout
{
  v4 = objc_msgSend_parent(self, a2, v2, v3);
  do
  {
    v13 = &unk_283535098;
    v5 = TSUProtocolCast();
    v9 = v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    if ((objc_msgSend_wantsToProvideStylesForTextLayout_(v5, v6, 0, v8, &unk_283535098) & 1) == 0)
    {

LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    v10 = v9;
LABEL_7:
    v11 = objc_msgSend_parent(v4, v6, v7, v8, v13);

    if (!v11)
    {
      break;
    }

    v4 = v11;
  }

  while (!v10);

  return v10;
}

- (BOOL)p_getLayoutDirectionLeftToRight
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_tableStyle(v4, v5, v6, v7);

  LOBYTE(v4) = objc_msgSend_intValueForProperty_(v8, v9, 798, v10) != 1;
  return v4;
}

- (void)validatePageNumberCount
{
  v16 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_wasRemovedFromDocument(v16, v5, v6, v7);

  if ((v8 & 1) == 0)
  {
    self->mPageNumber = 1;
    self->mPageCount = 1;
    v17 = objc_msgSend_parent(self, v9, v10, v11);
    if (objc_opt_respondsToSelector())
    {
      self->mPageNumber = objc_msgSend_performSelector_(v17, v12, sel_pageNumber, v13);
    }

    if (objc_opt_respondsToSelector())
    {
      self->mPageCount = objc_msgSend_performSelector_(v17, v14, sel_pageCount, v15);
    }
  }
}

+ (id)findLayoutIfAvailableInSet:(id)set intersectingRow:(unsigned int)row
{
  setCopy = set;
  v8 = sub_2211C6428(row, 1, v6, v7);
  v10 = v9;
  v13 = objc_msgSend_anyObject(setCopy, v9, v11, v12);
  v17 = objc_msgSend_tableInfo(v13, v14, v15, v16);
  v21 = objc_msgSend_numberOfHeaderRows(v17, v18, v19, v20);
  v24 = sub_2211C6428(v21, 1, v22, v23);
  v26 = v25;

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_2211BFB80;
  v45 = sub_2211BFB90;
  v46 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2211C658C;
  v40[3] = &unk_278460C70;
  v40[6] = v10;
  v40[7] = v24;
  v40[8] = v26;
  v40[4] = &v41;
  v40[5] = v8;
  v29 = objc_msgSend_objectsPassingTest_(setCopy, v27, v40, v28);
  if (objc_msgSend_count(v29, v30, v31, v32))
  {
    v36 = objc_msgSend_anyObject(v29, v33, v34, v35);
  }

  else
  {
    v37 = v42[5];
    if (!v37)
    {
      v37 = v13;
    }

    v36 = v37;
  }

  v38 = v36;

  _Block_object_dispose(&v41, 8);

  return v38;
}

- (BOOL)shouldShowCaption
{
  v5 = sub_2211B79C0(self, a2, v2, v3);
  if (v5)
  {

    LOBYTE(v5) = sub_2211B7A08(self, v6, v7, v8);
  }

  return v5;
}

- (CGRect)_visibleFrameForOverscrolledChildFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.origin.x = *&qword_27CFB3A88 + sub_2211BA638(self, a2, v3, v4);
  v10 = v9 - (*&qword_27CFB3A88 + *&qword_27CFB3A88);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v13.origin.y = y;
  v13.size.width = v10;
  v13.size.height = height;
  result = CGRectIntersection(v11, v13);
  if (width > v10)
  {
    if (x != result.origin.x)
    {
      result.origin.x = result.origin.x - (v10 - result.size.width);
    }

    result.size.width = result.size.width + v10 - result.size.width;
  }

  return result;
}

- (id)styleProvider
{
  v4 = objc_msgSend_p_getStyleProvidingAncestorLayout(self, a2, v2, v3);
  v8 = objc_msgSend_styleProvider(v4, v5, v6, v7);

  return v8;
}

- (id)styleProviderForTextLayout:(id)layout
{
  layoutCopy = layout;
  v8 = objc_msgSend_p_getStyleProvidingAncestorLayout(self, v5, v6, v7);
  v11 = objc_msgSend_styleProviderForTextLayout_(v8, v9, layoutCopy, v10);

  return v11;
}

- (TSUCellRect)editingSpillingTextRange
{
  p_mEditingSpillingTextRange = &self->mEditingSpillingTextRange;
  origin = self->mEditingSpillingTextRange.origin;
  size = p_mEditingSpillingTextRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (UIEdgeInsets)paddingForEditingCell
{
  top = self->mCachedPaddingForEditingCell.top;
  left = self->mCachedPaddingForEditingCell.left;
  bottom = self->mCachedPaddingForEditingCell.bottom;
  right = self->mCachedPaddingForEditingCell.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TSUCellRect)prevEditingSpillingTextRange
{
  p_mPrevEditingSpillingTextRange = &self->mPrevEditingSpillingTextRange;
  origin = self->mPrevEditingSpillingTextRange.origin;
  size = p_mPrevEditingSpillingTextRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSWPStorage)tableNameEditingStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_tableNameEditingStorage);

  return WeakRetained;
}

- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  v10 = [TSTLayoutCellIterator alloc];
  v12 = objc_msgSend_initWithLayout_range_flags_searchFlags_(v10, v11, self, origin, size, flags, searchFlags);

  return v12;
}

- (void)iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block
{
  iteratorCopy = iterator;
  objc_msgSend_iterateCellsUsingBlock_(iteratorCopy, v5, block, v6);
  objc_msgSend_terminate(iteratorCopy, v7, v8, v9);
}

- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v14 = objc_msgSend_cellIteratorWithRange_flags_searchFlags_(self, v12, origin, size, flags, searchFlags);
  objc_msgSend_iterateCellsAndTerminateWithIterator_usingBlock_(self, v13, v14, blockCopy);
}

@end