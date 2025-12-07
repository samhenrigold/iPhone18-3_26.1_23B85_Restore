@interface PUOneUpTilingLayout
+ (CGRect)rectForFittingToTargetPixelSize:(CGSize)size imagePixelSize:(CGSize)pixelSize bestSquareUnitRect:(CGRect)rect;
+ (CGRect)untransformedRectForItemWithAspectRatio:(double)ratio pageRect:(CGRect)rect safeInsets:(UIEdgeInsets)insets;
+ (id)centerTileKinds;
- (BOOL)_accessoryViewVisibilityForItemAtIndexPath:(id)path;
- (BOOL)_isShowingInfoPanelForItemAtIndexPath:(id)path;
- (BOOL)_isVideoPlacholderVisibleForItemAtIndexPath:(id)path;
- (BOOL)_shouldApplyInsetStylingToContentWithRect:(CGRect)rect indexPath:(id)path;
- (BOOL)_shouldShowRenderIndicatorForIndexPath:(id)path size:(CGSize)size;
- (CGPoint)_contentOffsetForItemAtIndexPath:(id)path;
- (CGRect)_frameForTileWithSize:(CGSize)size centeredOnItemAtIndexPath:(id)path;
- (CGRect)_pageRectForItemAtIndexPath:(id)path;
- (CGRect)_untransformedRectForItemAtIndexPath:(id)path;
- (CGRect)_untransformedRectForItemAtIndexPath:(id)path pageRect:(CGRect)rect;
- (CGRect)visibleRectForItemAtIndexPath:(id)path transitionProgress:(double)progress;
- (CGSize)_contentPixelSizeForItemAtIndexPath:(id)path;
- (CGSize)_itemSize;
- (CGSize)assetExplorerReviewScreenProgressIndicatorSize;
- (CGSize)bufferingIndicatorSize;
- (CGSize)displaySizeForInsetMatching;
- (CGSize)estimatedSectionSize;
- (CGSize)interpageSpacing;
- (CGSize)peopleRowSize;
- (CGSize)playButtonSize;
- (CGSize)progressIndicatorSize;
- (CGSize)renderIndicatorSize;
- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items;
- (PUOneUpTilingLayout)init;
- (PUOneUpTilingLayoutDelegate)delegate;
- (UIEdgeInsets)_cropInsetsForTileAtIndexPath:(id)path layoutRect:(CGRect)rect;
- (UIEdgeInsets)contentDecorationAdditionalInsets;
- (UIEdgeInsets)contentGuideInsets;
- (UIEdgeInsets)contentSafeInsets;
- (UIEdgeInsets)progressIndicatorContentInsets;
- (double)_insetContentCornerRadiusForItemAtIndexPath:(id)path;
- (double)_normalizedTransitionProgressFrom:(id)from withAbscissa:(double)abscissa outNeighbor:(id *)neighbor;
- (id)_createLayoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (id)_displayTileTransformForItemAtIndexPath:(id)path options:(unint64_t)options;
- (id)_displayTileTransformForItemAtIndexPath:(id)path pageSize:(CGSize)size secondaryDisplayTransform:(id)transform options:(unint64_t)options;
- (id)_indexPathOfItemClosestToAbscissa:(double)abscissa;
- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (id)preferredScrollInfo;
- (void)_collectLayoutInfosForTilesInRect:(CGRect)rect withIndexPath:(id)path kinds:(id)kinds toSet:(id)set;
- (void)_getLayoutRect:(CGRect *)rect transform:(CGAffineTransform *)transform parallaxOffset:(CGPoint *)offset contentsRect:(CGRect *)contentsRect alpha:(double *)alpha forContentOfItemAtIndexPath:(id)path options:(unint64_t)options;
- (void)_invalidateContentRelatedTilesWithIndexPath:(id)path inContext:(id)context;
- (void)addLayoutInfosForSupplementaryTilesInRect:(CGRect)rect toSet:(id)set;
- (void)addLayoutInfosForTilesInRect:(CGRect)rect section:(int64_t)section toSet:(id)set;
- (void)invalidateAccessoryForItemAtIndexPath:(id)path withOptions:(unint64_t)options;
- (void)invalidateAllContentTiles;
- (void)invalidateBadgeSizeForItemAtIndexPath:(id)path;
- (void)invalidateContentOffsetForItemAtIndexPath:(id)path withOptions:(unint64_t)options;
- (void)invalidateLayoutWithContext:(id)context;
- (void)invalidateLoadingIndicatorForItemAtIndexPath:(id)path;
- (void)invalidateModelTileTransformForItemAtIndexPath:(id)path;
- (void)invalidatePrimaryContentTiles;
- (void)invalidateProgressIndicatorForItemAtIndexPath:(id)path;
- (void)invalidateVideoPlaceholderForItemAtIndexPath:(id)path;
- (void)prepareLayout;
- (void)setAssetExplorerReviewScreenProgressIndicatorSize:(CGSize)size;
- (void)setBufferingIndicatorSize:(CGSize)size;
- (void)setCanDisplayLoadingIndicators:(BOOL)indicators;
- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)insets;
- (void)setContentSafeInsets:(UIEdgeInsets)insets;
- (void)setDelegate:(id)delegate;
- (void)setDisplaySizeForInsetMatching:(CGSize)matching;
- (void)setInsetContentBorderColor:(id)color;
- (void)setInsetContentBorderWidth:(double)width;
- (void)setInsetContentCornerRadius:(double)radius;
- (void)setPeopleRowSize:(CGSize)size;
- (void)setPlayButtonSize:(CGSize)size;
- (void)setProgressIndicatorContentInsets:(UIEdgeInsets)insets;
- (void)setProgressIndicatorSize:(CGSize)size;
- (void)setRenderIndicatorSize:(CGSize)size;
- (void)setShouldHideMainContent:(BOOL)content;
- (void)setShouldPinContentToTop:(BOOL)top;
- (void)setUseAssetExplorerReviewScreenBadgeTiles:(BOOL)tiles;
- (void)setUseBadgeTiles:(BOOL)tiles;
- (void)setUseImportStatusIndicatorTiles:(BOOL)tiles;
- (void)setUseSelectionIndicatorTiles:(BOOL)tiles;
- (void)setUseSyndicationAttributionTile:(BOOL)tile;
- (void)setUseVerticalReviewScreenControlBarLayout:(BOOL)layout;
- (void)setVisibleRect:(CGRect)rect;
- (void)setWindowInterfaceOrientation:(int64_t)orientation;
@end

@implementation PUOneUpTilingLayout

- (CGSize)displaySizeForInsetMatching
{
  width = self->_displaySizeForInsetMatching.width;
  height = self->_displaySizeForInsetMatching.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)bufferingIndicatorSize
{
  width = self->_bufferingIndicatorSize.width;
  height = self->_bufferingIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)assetExplorerReviewScreenProgressIndicatorSize
{
  width = self->_assetExplorerReviewScreenProgressIndicatorSize.width;
  height = self->_assetExplorerReviewScreenProgressIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)renderIndicatorSize
{
  width = self->_renderIndicatorSize.width;
  height = self->_renderIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)progressIndicatorContentInsets
{
  top = self->_progressIndicatorContentInsets.top;
  left = self->_progressIndicatorContentInsets.left;
  bottom = self->_progressIndicatorContentInsets.bottom;
  right = self->_progressIndicatorContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)peopleRowSize
{
  width = self->_peopleRowSize.width;
  height = self->_peopleRowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)progressIndicatorSize
{
  width = self->_progressIndicatorSize.width;
  height = self->_progressIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playButtonSize
{
  width = self->_playButtonSize.width;
  height = self->_playButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentDecorationAdditionalInsets
{
  top = self->_contentDecorationAdditionalInsets.top;
  left = self->_contentDecorationAdditionalInsets.left;
  bottom = self->_contentDecorationAdditionalInsets.bottom;
  right = self->_contentDecorationAdditionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentSafeInsets
{
  top = self->_contentSafeInsets.top;
  left = self->_contentSafeInsets.left;
  bottom = self->_contentSafeInsets.bottom;
  right = self->_contentSafeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentGuideInsets
{
  top = self->_contentGuideInsets.top;
  left = self->_contentGuideInsets.left;
  bottom = self->_contentGuideInsets.bottom;
  right = self->_contentGuideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)interpageSpacing
{
  width = self->_interpageSpacing.width;
  height = self->_interpageSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUOneUpTilingLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldApplyInsetStylingToContentWithRect:(CGRect)rect indexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] != 2 || -[PUOneUpTilingLayout _accessoryViewVisibilityForItemAtIndexPath:](self, "_accessoryViewVisibilityForItemAtIndexPath:", pathCopy) || self->_delegateFlags.respondsToCanApplyInsetStylingToItemAtIndexPath && (-[PUOneUpTilingLayout delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "layout:canApplyInsetStylingToItemAtIndexPath:", self, pathCopy), v8, !v9))
  {
    v6 = 0;
  }

  else
  {
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v6 = PXRectStrictlyContainsAnyVertexOfRect();
  }

  return v6;
}

- (double)_normalizedTransitionProgressFrom:(id)from withAbscissa:(double)abscissa outNeighbor:(id *)neighbor
{
  fromCopy = from;
  if (!fromCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:1937 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:fromCopy];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__46541;
  v38 = __Block_byref_object_dispose__46542;
  v39 = 0;
  dataSource = [(PUTilingLayout *)self dataSource];
  if (leftToRight)
  {
    v17 = MidX > abscissa;
  }

  else
  {
    v17 = MidX < abscissa;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __82__PUOneUpTilingLayout__normalizedTransitionProgressFrom_withAbscissa_outNeighbor___block_invoke;
  v31[3] = &unk_1E7B7DD28;
  v18 = fromCopy;
  v32 = v18;
  v33 = &v34;
  [dataSource enumerateIndexPathsStartingAtIndexPath:v18 reverseDirection:v17 usingBlock:v31];

  if (v35[5])
  {
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:?];
    v19 = fmax((abscissa - MidX) / vabdd_f64(CGRectGetMidX(v41), MidX), -1.0);
    if (v19 > 1.0)
    {
      v19 = 1.0;
    }

    if (leftToRight)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }
  }

  else
  {
    [(PUTilingLayout *)self visibleRect];
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v20 = 0.0;
    if (!CGRectContainsRect(v42, v50))
    {
      [(PUTilingLayout *)self visibleRect];
      v21 = v43.size.height;
      v29 = v43.origin.y;
      v30 = v43.origin.x;
      rect = v43.size.width;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v44 = CGRectIntersection(v43, v51);
      v22 = CGRectGetWidth(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v23 = CGRectGetWidth(v45);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      MaxX = CGRectGetMaxX(v46);
      v47.origin.y = v29;
      v47.origin.x = v30;
      v47.size.width = rect;
      v47.size.height = v21;
      v20 = 1.0 - v22 / v23;
      if (MaxX > CGRectGetMaxX(v47) && leftToRight || (v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, MinX = CGRectGetMinX(v48), v49.origin.y = v29, v49.origin.x = v30, v49.size.width = rect, v49.size.height = v21, MinX < CGRectGetMinX(v49) && !leftToRight))
      {
        v20 = -v20;
      }
    }
  }

  if (neighbor)
  {
    *neighbor = v35[5];
  }

  _Block_object_dispose(&v34, 8);
  return v20;
}

void __82__PUOneUpTilingLayout__normalizedTransitionProgressFrom_withAbscissa_outNeighbor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([*(a1 + 32) isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_indexPathOfItemClosestToAbscissa:(double)abscissa
{
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__46541;
  v65 = __Block_byref_object_dispose__46542;
  v66 = 0;
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  computedSections = [(PUSectionedTilingLayout *)self computedSections];
  v9 = computedSections + v8;
  if (computedSections < (computedSections + v8))
  {
    v10 = v9 - 1;
    while (1)
    {
      [(PUSectionedTilingLayout *)self boundsForSection:computedSections];
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      if (leftToRight)
      {
        v19 = CGRectGetMinX(*&v11) >= abscissa;
      }

      else
      {
        v19 = CGRectGetMaxX(*&v11) <= abscissa;
      }

      v20 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:computedSections];
      v68.origin.x = v15;
      v68.origin.y = v16;
      v68.size.width = v17;
      v68.size.height = v18;
      if (CGRectGetMinX(v68) <= abscissa)
      {
        v72.origin.x = v15;
        v72.origin.y = v16;
        v72.size.width = v17;
        v72.size.height = v18;
        if (CGRectGetMaxX(v72) >= abscissa && v20 >= 1)
        {
          v73.origin.x = v15;
          v73.origin.y = v16;
          v73.size.width = v17;
          v73.size.height = v18;
          MinX = CGRectGetMinX(v73);
          [(PUOneUpTilingLayout *)self _itemSize];
          v35 = v34;
          [(PUOneUpTilingLayout *)self interpageSpacing];
          v37 = (abscissa - MinX) / (v35 + v36);
          v38 = v37;
          if (!leftToRight)
          {
            v38 = v20 + ~v37;
          }

          if (v38 >= v20)
          {
            v39 = v20 - 1;
          }

          else
          {
            v39 = v38;
          }

          if (v38 >= 0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = [MEMORY[0x1E696AC88] indexPathForItem:v40 inSection:computedSections];
LABEL_36:
          v44 = v62[5];
          v62[5] = v41;
          goto LABEL_37;
        }
      }

      if (!v19)
      {
        if (computedSections != v10 || computedSections < 0)
        {
          goto LABEL_38;
        }

        v42 = v9;
        while ([(PUSectionedTilingLayout *)self numberOfItemsInSection:--v42]< 1)
        {
          if (v42 <= 0)
          {
            goto LABEL_38;
          }
        }

        v47 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:v42];
        v41 = [MEMORY[0x1E696AC88] indexPathForItem:v47 - 1 inSection:v42];
        goto LABEL_36;
      }

      if (!computedSections)
      {
        v21 = 0;
LABEL_31:
        v43 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v21];
LABEL_32:
        v44 = v43;
        if (v43)
        {
          dataSource = [(PUTilingLayout *)self dataSource];
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __57__PUOneUpTilingLayout__indexPathOfItemClosestToAbscissa___block_invoke;
          v60[3] = &unk_1E7B79E20;
          v60[4] = &v61;
          [dataSource enumerateIndexPathsStartingAtIndexPath:v44 reverseDirection:1 usingBlock:v60];

          if (!v62[5])
          {
            dataSource2 = [(PUTilingLayout *)self dataSource];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __57__PUOneUpTilingLayout__indexPathOfItemClosestToAbscissa___block_invoke_2;
            v59[3] = &unk_1E7B79E20;
            v59[4] = &v61;
            [dataSource2 enumerateIndexPathsStartingAtIndexPath:v44 reverseDirection:0 usingBlock:v59];
          }
        }

        goto LABEL_37;
      }

      v21 = v9 - 1;
      if (computedSections == v10)
      {
        goto LABEL_31;
      }

      [(PUSectionedTilingLayout *)self boundsForSection:computedSections - 1, v21];
      v57 = v24;
      v58 = v25;
      v26 = v22;
      v27 = v23;
      if (leftToRight)
      {
        MaxX = CGRectGetMaxX(*&v22);
        v69.origin.x = v15;
        v69.origin.y = v16;
        v69.size.width = v17;
        v69.size.height = v18;
        if (MaxX <= CGRectGetMinX(v69))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v49 = CGRectGetMinX(*&v22);
        v74.origin.x = v15;
        v74.origin.y = v16;
        v74.size.width = v17;
        v74.size.height = v18;
        if (v49 >= CGRectGetMaxX(v74))
        {
          goto LABEL_42;
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:1879 description:{@"Invalid parameter not satisfying: %@", @"leftToRight ? CGRectGetMaxX(previousSectionBounds) <= CGRectGetMinX(sectionBounds) : CGRectGetMinX(previousSectionBounds) >= CGRectGetMaxX(sectionBounds)"}];

      if (!leftToRight)
      {
LABEL_42:
        v75.origin.x = v26;
        v75.origin.y = v27;
        v75.size.width = v57;
        v75.size.height = v58;
        v50 = CGRectGetMinX(v75);
        v76.origin.x = v15;
        v76.origin.y = v16;
        v76.size.width = v17;
        v76.size.height = v18;
        v51 = CGRectGetMaxX(v76);
        v31 = v50 - abscissa;
        v32 = abscissa - v51;
        goto LABEL_43;
      }

LABEL_12:
      v70.origin.x = v26;
      v70.origin.y = v27;
      v70.size.width = v57;
      v70.size.height = v58;
      v29 = CGRectGetMaxX(v70);
      v71.origin.x = v15;
      v71.origin.y = v16;
      v71.size.width = v17;
      v71.size.height = v18;
      v30 = CGRectGetMinX(v71);
      v31 = abscissa - v29;
      v32 = v30 - abscissa;
LABEL_43:
      if (v31 > v32)
      {
        v43 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:computedSections];
        goto LABEL_32;
      }

      v52 = computedSections;
      if (computedSections >= 1)
      {
        while ([(PUSectionedTilingLayout *)self numberOfItemsInSection:--v52]< 1)
        {
          v44 = 0;
          if (v52 <= 0)
          {
            goto LABEL_37;
          }
        }

        v53 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:v52];
        v43 = [MEMORY[0x1E696AC88] indexPathForItem:v53 - 1 inSection:v52];
        goto LABEL_32;
      }

      v44 = 0;
LABEL_37:

LABEL_38:
      v48 = v62[5];
      if (v48)
      {
        goto LABEL_54;
      }

      if (++computedSections == v9)
      {
        v48 = 0;
        goto LABEL_54;
      }
    }
  }

  v48 = v62[5];
LABEL_54:
  v55 = v48;
  _Block_object_dispose(&v61, 8);

  return v55;
}

- (void)_getLayoutRect:(CGRect *)rect transform:(CGAffineTransform *)transform parallaxOffset:(CGPoint *)offset contentsRect:(CGRect *)contentsRect alpha:(double *)alpha forContentOfItemAtIndexPath:(id)path options:(unint64_t)options
{
  v174 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:pathCopy];
  v165.origin.x = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(PUOneUpTilingLayout *)self _displayTileTransformForItemAtIndexPath:pathCopy options:options];
  if (self->_delegateFlags.respondsToWillApplyDisplayTransform)
  {
    delegate = [(PUOneUpTilingLayout *)self delegate];
    [delegate layout:self willApplyDisplayTileTransform:v21 forItemAtIndexPath:pathCopy];
  }

  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  if (v21)
  {
    objc_msgSend_affineTransform(v21);
  }

  v23 = MEMORY[0x1E695EFF8];
  v24 = *MEMORY[0x1E695EFF8];
  v25 = *(MEMORY[0x1E695EFF8] + 8);
  if ((options & 2) == 0)
  {
    [(PUOneUpTilingLayout *)self _contentOffsetForItemAtIndexPath:pathCopy];
    v24 = v26;
    v25 = v27;
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
  v158 = v29;
  v160 = v28;
  v31 = v30;
  v33 = v32;
  v167 = *v23;
  v165.size.height = 0.0;
  v166 = 0.0;
  v165.size.width = 0.0;
  *transform = v168;
  *&transform[16] = v169;
  *&transform[32] = v170;
  PUDecomposeTransform(transform, &v167, &v166, &v165.size.height, &v165.size.width);
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    v34 = PXAssertGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *transform = v168;
      *&transform[16] = v169;
      *&transform[32] = v170;
      v131 = NSStringFromCGAffineTransform(transform);
      delegate2 = [(PUOneUpTilingLayout *)self delegate];
      v202.size.height = v158;
      v202.origin.x = v160;
      v202.origin.y = v31;
      v202.size.width = v33;
      v132 = NSStringFromCGRect(v202);
      *transform = 138413570;
      *&transform[4] = v131;
      *&transform[12] = 2112;
      *&transform[14] = v21;
      *&transform[22] = 2112;
      *&transform[24] = self;
      *&transform[32] = 2112;
      *&transform[34] = delegate2;
      *&transform[42] = 2112;
      *&transform[44] = pathCopy;
      v172 = 2112;
      v173 = v132;
      v133 = v132;
      _os_log_fault_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_FAULT, "Invalid affine transform (%@) from displayTileTransform %@: 1-up layout doesn't support shearing transforms. layout=%@; delegate=%@; indexPath=%@, pageRect=%@", transform, 0x3Eu);
    }
  }

  v176.origin.x = v165.origin.x;
  v176.origin.y = v16;
  v176.size.width = v18;
  v176.size.height = v20;
  MidX = CGRectGetMidX(v176);
  v177.origin.x = v165.origin.x;
  v177.origin.y = v16;
  v177.size.width = v18;
  v177.size.height = v20;
  MidY = CGRectGetMidY(v177);
  v154 = v33;
  rect = v16;
  v156 = v31;
  if (self->_delegateFlags.respondsToShouldUseSquareImageInAccessoryForItemAtIndexPath)
  {
    delegate3 = [(PUOneUpTilingLayout *)self delegate];
    v37 = [delegate3 layout:self shouldUseSquareImageInAccessoryForItemAtIndexPath:pathCopy];

    if (v37)
    {
      v144 = MidY;
      transformCopy = transform;
      offsetCopy = offset;
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      windows = [mEMORY[0x1E69DC668] windows];
      firstObject = [windows firstObject];
      windowScene = [firstObject windowScene];
      interfaceOrientation = [windowScene interfaceOrientation];

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        v45 = 1;
      }

      else
      {
        v45 = (interfaceOrientation - 3) >= 2;
      }

      v46 = !v45;
      v178.origin.x = v160;
      v178.origin.y = v31;
      v178.size.width = v33;
      v178.size.height = v158;
      Width = CGRectGetWidth(v178);
      v179.origin.x = v160;
      v179.origin.y = v31;
      v179.size.width = v33;
      v179.size.height = v158;
      Height = CGRectGetHeight(v179);
      if (self->_delegateFlags.respondsToBestSquareRectForItemAtIndexPath)
      {
        delegate4 = [(PUOneUpTilingLayout *)self delegate];
        [delegate4 layout:self bestSquareRectForItemAtIndexPath:pathCopy];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
      }

      else
      {
        v49 = *MEMORY[0x1E695F058];
        v51 = *(MEMORY[0x1E695F058] + 8);
        v53 = *(MEMORY[0x1E695F058] + 16);
        v55 = *(MEMORY[0x1E695F058] + 24);
      }

      alphaCopy = alpha;
      v180.origin.x = v49;
      v180.origin.y = v51;
      v180.size.width = v53;
      v180.size.height = v55;
      if (CGRectIsEmpty(v180))
      {
        v181.origin.x = v165.origin.x;
        v181.origin.y = rect;
        v181.size.width = v18;
        v181.size.height = v20;
        CGRectGetWidth(v181);
        v182.origin.x = v165.origin.x;
        v182.origin.y = rect;
        v182.size.width = v18;
        v182.size.height = v20;
        CGRectGetHeight(v182);
        PXRectWithAspectRatioFittingRect();
        PXRectNormalize();
        v49 = v60;
        v51 = v61;
        v53 = v62;
        v55 = v63;
      }

      v152 = v55;
      v64 = v25;
      if (alphaCopy)
      {
        v64 = v25;
        if ((options & 2) != 0)
        {
          [(PUOneUpTilingLayout *)self _contentOffsetForItemAtIndexPath:pathCopy];
        }
      }

      v137 = v53;
      v138 = v51;
      if (v64 >= 0.0)
      {
        v57 = v20;
        v58 = v18;
        transform = transformCopy;
        offset = offsetCopy;
        v68 = v55;
LABEL_60:
        if (contentsRect)
        {
          if ((options & 2) != 0)
          {
            v87 = *(MEMORY[0x1E69C48E0] + 16);
            contentsRect->origin = *MEMORY[0x1E69C48E0];
            contentsRect->size = v87;
          }

          else
          {
            [PUOneUpTilingLayout rectForFittingToTargetPixelSize:v58 imagePixelSize:v57 bestSquareUnitRect:v18, v20, v49, v138, v137, v68];
            contentsRect->origin.x = v88;
            contentsRect->origin.y = v89;
            contentsRect->size.width = v90;
            contentsRect->size.height = v91;
          }
        }

        MidY = v144;
        goto LABEL_65;
      }

      v149 = v24;
      v150 = v20;
      if (Width >= Height)
      {
        v65 = Height;
      }

      else
      {
        v65 = Width;
      }

      v136 = v64;
      if (v46)
      {
        PXSizeGetAspectRatio();
        v66 = v65;
        if (v67 <= 2.0)
        {
          v65 = Width - Height;
        }
      }

      else
      {
        v69 = +[PUOneUpSettings sharedInstance];
        squareImageCapToHalfHeight = [v69 squareImageCapToHalfHeight];

        v71 = Height * 0.5;
        if (Height * 0.5 >= v65)
        {
          v71 = v65;
        }

        if (squareImageCapToHalfHeight)
        {
          v66 = v71;
        }

        else
        {
          v66 = v65;
        }
      }

      v183.origin.x = v160;
      v183.origin.y = v156;
      v183.size.width = v65;
      v183.size.height = v66;
      v140 = CGRectGetWidth(v183);
      v184.origin.x = v165.origin.x;
      v184.origin.y = rect;
      v184.size.width = v18;
      v184.size.height = v20;
      v135 = v140 - CGRectGetWidth(v184);
      v185.origin.x = v160;
      v185.origin.y = v156;
      v185.size.width = v65;
      v141 = v66;
      v185.size.height = v66;
      v72 = CGRectGetHeight(v185);
      v186.origin.x = v165.origin.x;
      v186.origin.y = rect;
      v186.size.width = v18;
      v186.size.height = v20;
      v73 = v72 - CGRectGetHeight(v186);
      if (v46)
      {
        v74 = v73;
        v187.origin.x = v165.origin.x;
        v187.origin.y = rect;
        v187.size.width = v18;
        v187.size.height = v150;
        v75 = Height + (Height - CGRectGetHeight(v187)) * -0.5;
        [(PUOneUpTilingLayout *)self contentGuideInsets];
        v77 = fabs(v136) / (v75 - v76);
        if (v77 <= 1.0)
        {
          v78 = v77;
        }

        else
        {
          v78 = 1.0;
        }

        v143 = v78;
        if ((options & 2) != 0)
        {
          v57 = v150;
          v58 = v18;
          transform = transformCopy;
          offset = offsetCopy;
          v20 = v150;
LABEL_54:
          v24 = v149;
          goto LABEL_58;
        }

        v58 = v18 + v135 * v78;
        v57 = v150 + v74 * v78;
        v190.origin.x = v160;
        v190.origin.y = v156;
        v134 = v65;
        v190.size.width = v65;
        v190.size.height = v141;
        CGRectGetMaxX(v190);
        v191.origin.x = v165.origin.x;
        v191.origin.y = rect;
        v191.size.width = v18;
        v191.size.height = v150;
        CGRectGetMaxX(v191);
        v192.origin.x = v165.origin.x;
        v192.origin.y = rect;
        v192.size.width = v18;
        v192.size.height = v150;
        CGRectGetMaxX(v192);
        PXRectGetCenter();
        MidX = v81;
        v193.origin.x = v160;
        v193.origin.y = v156;
        v193.size.width = v65;
        v193.size.height = v141;
        CGRectGetMaxY(v193);
        v194.origin.x = v165.origin.x;
        v194.origin.y = rect;
        v194.size.width = v18;
        v194.size.height = v150;
        CGRectGetMaxY(v194);
        v195.origin.x = v165.origin.x;
        v195.origin.y = rect;
        v195.size.width = v18;
        v195.size.height = v150;
        CGRectGetMaxY(v195);
        PXRectGetCenter();
        v144 = v82;
        PXPointMultiplyWithFloat();
        v167.x = v83;
        v167.y = v84;
        transform = transformCopy;
        offset = offsetCopy;
        v20 = v150;
        v25 = 0.0;
      }

      else
      {
        v188.origin.x = v160;
        v188.origin.y = v156;
        v188.size.width = v65;
        v188.size.height = v141;
        MaxY = CGRectGetMaxY(v188);
        v189.origin.x = v165.origin.x;
        v189.origin.y = rect;
        v189.size.width = v18;
        v189.size.height = v20;
        v80 = fabs(v136 / (MaxY - CGRectGetMaxY(v189)));
        if (v80 > 1.0)
        {
          v80 = 1.0;
        }

        v143 = v80;
        if ((options & 2) != 0)
        {
          v57 = v20;
          v58 = v18;
          transform = transformCopy;
          offset = offsetCopy;
          goto LABEL_54;
        }

        v85 = v73;
        v58 = v18 + v135 * v80;
        v57 = v20 + v85 * v80;
        PXRectGetCenter();
        v144 = v86;
        v196.origin.x = v165.origin.x;
        v196.origin.y = rect;
        v196.size.width = v18;
        v196.size.height = v20;
        v25 = v136 + CGRectGetMaxY(v196) - v57;
        transform = transformCopy;
        offset = offsetCopy;
      }

      v24 = v149;
LABEL_58:
      v68 = v152;
      if (alphaCopy)
      {
        *alphaCopy = v143;
      }

      goto LABEL_60;
    }
  }

  if (contentsRect)
  {
    v56 = *(MEMORY[0x1E69C48E0] + 16);
    contentsRect->origin = *MEMORY[0x1E69C48E0];
    contentsRect->size = v56;
  }

  v57 = v20;
  v58 = v18;
LABEL_65:
  v92 = MidY + v167.y + v25;
  v93 = v58 * v166;
  v94 = v57 * v166;
  v95 = MidX + v167.x + v24 - v93 * 0.5;
  v96 = v92 - v57 * v166 * 0.5;
  CGAffineTransformMakeRotation(transform, v165.size.width);
  v168 = *transform;
  v169 = *&transform[16];
  v170 = *&transform[32];
  if (([v21 hasUserInput] & 1) == 0)
  {
    v153 = v18;
    v197.size.height = v158;
    v197.origin.x = v160;
    v197.origin.y = v156;
    v197.size.width = v154;
    v198 = CGRectOffset(v197, v24, v25);
    y = v198.origin.y;
    v159 = v198.size.width;
    x = v198.origin.x;
    v157 = v198.size.height;
    v203.origin.x = v95;
    v203.origin.y = v96;
    v203.size.width = v93;
    v203.size.height = v94;
    v199 = CGRectIntersection(v198, v203);
    v98 = v199.origin.x;
    v99 = v199.origin.y;
    v100 = v199.size.width;
    v101 = v199.size.height;
    if (offset)
    {
      parallaxComputer = [(PUOneUpTilingLayout *)self parallaxComputer];
      [(PUTilingLayout *)self visibleRect];
      [parallaxComputer contentParallaxOffsetForViewFrame:v98 visibleRect:{v99, v100, v101, v103, v104, v105, v106}];
    }

    if (!PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat() || (PXFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      v107 = PLOneUpGetLog();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        transformCopy2 = transform;
        offsetCopy2 = offset;
        v108 = NSStringFromCGPoint(v167);
        v109 = v165.size.width;
        v200.origin.x = v165.origin.x;
        v200.origin.y = rect;
        v200.size.height = v20;
        v200.size.width = v153;
        v110 = NSStringFromCGRect(v200);
        if (v21)
        {
          objc_msgSend_affineTransform(v21);
        }

        else
        {
          memset(transform, 0, 48);
        }

        v111 = NSStringFromCGAffineTransform(transform);
        v201.size.width = v159;
        v201.origin.x = x;
        v201.origin.y = y;
        v201.size.height = v157;
        v112 = NSStringFromCGRect(v201);
        v175.x = v24;
        v175.y = v25;
        v113 = NSStringFromCGPoint(v175);
        *transform = 138413570;
        *&transform[4] = v108;
        *&transform[12] = 2048;
        *&transform[14] = v109;
        *&transform[22] = 2112;
        *&transform[24] = v110;
        *&transform[32] = 2112;
        *&transform[34] = v111;
        *&transform[42] = 2112;
        *&transform[44] = v112;
        v172 = 2112;
        v173 = v113;
        _os_log_impl(&dword_1B36F3000, v107, OS_LOG_TYPE_DEFAULT, "Clipped tile doesn't appear to be centered, the content might not be displayed properly. translation=%@; rotation=%f; untransformedRect=%@, affineTransform=%@, pageRect=%@, contentOffset=%@", transform, 0x3Eu);

        transform = transformCopy2;
        offset = offsetCopy2;
      }
    }
  }

  [(PUOneUpTilingLayout *)self shouldPinContentToTop];
  traitCollection = [(PUOneUpTilingLayout *)self traitCollection];
  [traitCollection displayScale];
  v116 = v115;

  if (v116 == 0.0)
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen scale];
  }

  PXPointRoundToPixel();
  v119 = v118;
  v121 = v120;
  PXSizeRoundToPixel();
  v123 = v122;
  v125 = v124;
  v126 = PXFloatApproximatelyEqualToFloat();
  PXPointRoundToPixel();
  if (rect)
  {
    v129 = 0.0;
    if (!v126)
    {
      v129 = v121;
    }

    rect->origin.x = v119;
    rect->origin.y = v129;
    rect->size.width = v123;
    rect->size.height = v125;
  }

  if (transform)
  {
    v130 = v169;
    *&transform->a = v168;
    *&transform->c = v130;
    *&transform->tx = v170;
  }

  if (offset)
  {
    offset->x = v127;
    offset->y = v128;
  }
}

- (id)_displayTileTransformForItemAtIndexPath:(id)path pageSize:(CGSize)size secondaryDisplayTransform:(id)transform options:(unint64_t)options
{
  optionsCopy = options;
  height = size.height;
  width = size.width;
  pathCopy = path;
  transformCopy = transform;
  if ((optionsCopy & 1) != 0 || !self->_delegateFlags.respondsToModelTileTransformForItemAtIndexPath || (-[PUOneUpTilingLayout delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), [v13 layout:self modelTileTransformForItemAtIndexPath:pathCopy], initWithNoUserInput = objc_claimAutoreleasedReturnValue(), v13, !initWithNoUserInput))
  {
    initWithNoUserInput = [[PUModelTileTransform alloc] initWithNoUserInput];
  }

  [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:pathCopy pageRect:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
  v16 = v15;
  v18 = v17;
  if (self->_delegateFlags.respondsToShouldInitiallyZoomToFillForItemAtIndexPath)
  {
    delegate = [(PUOneUpTilingLayout *)self delegate];
    v20 = [delegate layout:self shouldInitiallyZoomToFillForItemAtIndexPath:pathCopy contentSize:v16 viewportSize:{v18, width, height}];

    v21 = 1.0;
    if (v20)
    {
      mEMORY[0x1E69C3738] = [MEMORY[0x1E69C3738] sharedInstance];
      [mEMORY[0x1E69C3738] zoomFactorForContentWithSize:v16 toFillViewWithSize:{v18, width, height}];
      v21 = v23;
    }
  }

  else
  {
    v21 = 1.0;
  }

  height = [PUDisplayTileTransform displayTileTransformWithModelTileTransform:initWithNoUserInput initialScale:transformCopy initialSize:v21 displaySize:v16 secondaryDisplayTileTransform:v18, width, height];

  return height;
}

- (id)_displayTileTransformForItemAtIndexPath:(id)path options:(unint64_t)options
{
  pathCopy = path;
  [(PUOneUpTilingLayout *)self displaySizeForInsetMatching];
  if (v8 == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(PUOneUpTilingLayout *)self _displayTileTransformForItemAtIndexPath:pathCopy pageSize:0 secondaryDisplayTransform:options options:?];
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
  v13 = [(PUOneUpTilingLayout *)self _displayTileTransformForItemAtIndexPath:pathCopy pageSize:v10 secondaryDisplayTransform:options options:v11, v12];

  return v13;
}

- (CGRect)_untransformedRectForItemAtIndexPath:(id)path pageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  v9 = 1.0;
  if (self->_delegateFlags.respondsToAspectRatioForItemAtIndexPath)
  {
    delegate = [(PUOneUpTilingLayout *)self delegate];
    [delegate layout:self aspectRatioForItemAtIndexPath:pathCopy];
    v9 = v11;
  }

  if (self->_delegateFlags.respondsToInsetsWhenScaledToFitForItemAtIndexPath)
  {
    delegate2 = [(PUOneUpTilingLayout *)self delegate];
    [delegate2 layout:self insetsWhenScaledToFitForItemAtIndexPath:pathCopy inViewportSize:{width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x1E69DDCE0];
    v16 = *(MEMORY[0x1E69DDCE0] + 8);
    v18 = *(MEMORY[0x1E69DDCE0] + 16);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if ([(PUOneUpTilingLayout *)self useReviewScreenBars])
  {
    [(PUOneUpTilingLayout *)self windowInterfaceOrientation];
    objc_msgSend_reviewScreenContentGeometryForReferenceBounds_forContentSize_withOrientation_(PUReviewScreenUtilities, x, y, width, height, v9, 1.0);
    UIRectCenteredAboutPoint();
  }

  else
  {
    v25 = objc_opt_class();
    [(PUOneUpTilingLayout *)self minimumMarginForInsetContent];
    [v25 untransformedRectForItemWithAspectRatio:v9 pageRect:x safeInsets:y minimumInsetMargin:{width, height, v14, v16, v18, v20, v26}];
  }

  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;

  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGSize)_contentPixelSizeForItemAtIndexPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (self->_delegateFlags.respondsToPixelSizeForItemAtIndexPath)
  {
    delegate = [(PUOneUpTilingLayout *)self delegate];
    [delegate layout:self pixelSizeForItemAtIndexPath:pathCopy];
    v7 = v6;
    v9 = v8;
  }

  else if (self->_delegateFlags.respondsToAspectRatioForItemAtIndexPath)
  {
    delegate2 = [(PUOneUpTilingLayout *)self delegate];
    [delegate2 layout:self aspectRatioForItemAtIndexPath:pathCopy];

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    PFSizeWithAspectRatioFittingSize();
    v7 = v11;
    v9 = v12;
  }

  else
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 138412290;
      v17 = pathCopy;
      _os_log_fault_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_FAULT, "Unable to get content pixel size for item at index path %@. Delegate must implement pixelSizeForItemAtIndexPath or aspectRatioForItemAtIndexPath.", &v16, 0xCu);
    }

    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)_untransformedRectForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
  [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:pathCopy pageRect:?];
  v6 = v5;
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

- (CGRect)_frameForTileWithSize:(CGSize)size centeredOnItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(MEMORY[0x1E695F058] + 16);
  v38.origin = *MEMORY[0x1E695F058];
  v38.size = v14;
  [(PUOneUpTilingLayout *)self _getLayoutRect:&v38 transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];

  y = v38.origin.y;
  x = v38.origin.x;
  height = v38.size.height;
  width = v38.size.width;
  v45.origin.x = v7;
  rect_8 = v9;
  v45.origin.y = v9;
  v19 = v11;
  v45.size.width = v11;
  v20 = v13;
  v45.size.height = v13;
  if (CGRectIntersectsRect(v38, v45))
  {
    v46.origin.x = v7;
    v46.origin.y = rect_8;
    v21 = v19;
    v46.size.width = v19;
    v46.size.height = v20;
    v39 = CGRectIntersection(v38, v46);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v22 = size.width + 20.0 - CGRectGetWidth(v39);
    if (v22 >= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v24 = size.height + 20.0 - CGRectGetHeight(v40);
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = rect_8;
    if (v23 > 0.0 || v24 > 0.0)
    {
      v26 = -v24;
      v27 = v7;
      v28 = v21;
      v29 = v20;
      v47 = CGRectInset(*(&v25 - 1), -v23, v26);
      v41 = CGRectIntersection(v38, v47);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
    }
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidY = CGRectGetMidY(v43);
  v32 = size.width;
  v33 = MidY - size.height * 0.5;
  v34 = MidX - size.width * 0.5;
  v35 = size.height;
  result.size.height = v35;
  result.size.width = v32;
  result.origin.y = v33;
  result.origin.x = v34;
  return result;
}

- (CGRect)_pageRectForItemAtIndexPath:(id)path
{
  pathCopy = path;
  -[PUSectionedTilingLayout boundsForSection:](self, "boundsForSection:", [pathCopy section]);
  v6 = v5;
  v8 = v7;
  [(PUOneUpTilingLayout *)self _itemSize];
  v10 = v9;
  v12 = v11;
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v14 = v13;
  v15 = -[PUSectionedTilingLayout numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]);
  LODWORD(self) = [(PUSectionedTilingLayout *)self leftToRight];
  item = [pathCopy item];

  v17 = v15 + ~item;
  if (self)
  {
    v17 = item;
  }

  v18 = v6 + v17 * (v10 + v14);
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGSize)_itemSize
{
  p_itemSize = &self->_itemSize;
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  if (width == -1.79769313e308 && height == -1.79769313e308)
  {
    [(PUOneUpTilingLayout *)self prepareLayout];
    width = p_itemSize->width;
    height = p_itemSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setUseSyndicationAttributionTile:(BOOL)tile
{
  if (self->_useSyndicationAttributionTile != tile)
  {
    self->_useSyndicationAttributionTile = tile;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindSyndicationAttribution];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setShouldHideMainContent:(BOOL)content
{
  if (self->_shouldHideMainContent != content)
  {
    self->_shouldHideMainContent = content;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PUTilingLayout *)self invalidateLayoutWithContext:v5 updateImmediately:1];
  }
}

- (void)setUseVerticalReviewScreenControlBarLayout:(BOOL)layout
{
  if (self->_useVerticalReviewScreenControlBarLayout != layout)
  {
    self->_useVerticalReviewScreenControlBarLayout = layout;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindReviewScreenControlBar];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setShouldPinContentToTop:(BOOL)top
{
  if (self->_shouldPinContentToTop != top)
  {
    self->_shouldPinContentToTop = top;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setDisplaySizeForInsetMatching:(CGSize)matching
{
  if (matching.width != self->_displaySizeForInsetMatching.width || matching.height != self->_displaySizeForInsetMatching.height)
  {
    self->_displaySizeForInsetMatching = matching;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindUserTransform];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setCanDisplayLoadingIndicators:(BOOL)indicators
{
  if (self->_canDisplayLoadingIndicators != indicators)
  {
    self->_canDisplayLoadingIndicators = indicators;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindLoadingIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setBufferingIndicatorSize:(CGSize)size
{
  if (size.width != self->_bufferingIndicatorSize.width || size.height != self->_bufferingIndicatorSize.height)
  {
    self->_bufferingIndicatorSize = size;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindBufferingIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setWindowInterfaceOrientation:(int64_t)orientation
{
  if (self->_windowInterfaceOrientation != orientation)
  {
    self->_windowInterfaceOrientation = orientation;
    if ([(PUOneUpTilingLayout *)self useReviewScreenBars])
    {
      v4 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
      [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:PUTileKindReviewScreenTopBar];
      [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:PUTileKindReviewScreenControlBar];
      [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
      [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v4];
    }
  }
}

- (void)setUseAssetExplorerReviewScreenBadgeTiles:(BOOL)tiles
{
  if (self->_useAssetExplorerReviewScreenBadgeTiles != tiles)
  {
    self->_useAssetExplorerReviewScreenBadgeTiles = tiles;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenBadge];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setAssetExplorerReviewScreenProgressIndicatorSize:(CGSize)size
{
  if (size.width != self->_assetExplorerReviewScreenProgressIndicatorSize.width || size.height != self->_assetExplorerReviewScreenProgressIndicatorSize.height)
  {
    self->_assetExplorerReviewScreenProgressIndicatorSize = size;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setRenderIndicatorSize:(CGSize)size
{
  if (size.width != self->_renderIndicatorSize.width || size.height != self->_renderIndicatorSize.height)
  {
    self->_renderIndicatorSize = size;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindRenderIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setProgressIndicatorContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_progressIndicatorContentInsets.top), vceqq_f64(v4, *&self->_progressIndicatorContentInsets.bottom)))) & 1) == 0)
  {
    self->_progressIndicatorContentInsets = insets;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setPeopleRowSize:(CGSize)size
{
  if (size.width != self->_peopleRowSize.width || size.height != self->_peopleRowSize.height)
  {
    self->_peopleRowSize = size;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindPeople];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setProgressIndicatorSize:(CGSize)size
{
  if (size.width != self->_progressIndicatorSize.width || size.height != self->_progressIndicatorSize.height)
  {
    self->_progressIndicatorSize = size;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setUseBadgeTiles:(BOOL)tiles
{
  if (self->_useBadgeTiles != tiles)
  {
    self->_useBadgeTiles = tiles;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindBadge];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setPlayButtonSize:(CGSize)size
{
  if (size.width != self->_playButtonSize.width || size.height != self->_playButtonSize.height)
  {
    self->_playButtonSize = size;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindPlayButton];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setUseImportStatusIndicatorTiles:(BOOL)tiles
{
  if (self->_useImportStatusIndicatorTiles != tiles)
  {
    self->_useImportStatusIndicatorTiles = tiles;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindImportStatusIndicator];
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setUseSelectionIndicatorTiles:(BOOL)tiles
{
  if (self->_useSelectionIndicatorTiles != tiles)
  {
    self->_useSelectionIndicatorTiles = tiles;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindSelectionIndicator];
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setInsetContentCornerRadius:(double)radius
{
  if (self->_insetContentCornerRadius != radius)
  {
    self->_insetContentCornerRadius = radius;
    [(PUOneUpTilingLayout *)self invalidateAllContentTiles];
  }
}

- (void)setInsetContentBorderColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_insetContentBorderColor != colorCopy)
  {
    v7 = colorCopy;
    colorCopy = [colorCopy isEqual:?];
    v6 = v7;
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_insetContentBorderColor, color);
      colorCopy = [(PUOneUpTilingLayout *)self invalidateAllContentTiles];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](colorCopy, v6);
}

- (void)setInsetContentBorderWidth:(double)width
{
  if (self->_insetContentBorderWidth != width)
  {
    self->_insetContentBorderWidth = width;
    [(PUOneUpTilingLayout *)self invalidateAllContentTiles];
  }
}

- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentDecorationAdditionalInsets.top), vceqq_f64(v4, *&self->_contentDecorationAdditionalInsets.bottom)))) & 1) == 0)
  {
    self->_contentDecorationAdditionalInsets = insets;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindSelectionIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindPeople];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindImportStatusIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindRenderIndicator];
    [(PUOneUpTilingLayoutInvalidationContext *)v6 invalidatedContentInsets];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setContentSafeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentSafeInsets.top), vceqq_f64(v4, *&self->_contentSafeInsets.bottom)))) & 1) == 0)
  {
    self->_contentSafeInsets = insets;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUOneUpTilingLayoutInvalidationContext *)v6 _setInvalidatedContentInsets:1];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)invalidateAllContentTiles
{
  v3 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v3 _setInvalidatedContentInsets:1];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindUserTransform];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindBadge];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindBufferingIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindLoadingIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindPlayButton];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindPeople];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindRenderIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindImportStatusIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindAccessory];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenBadge];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindSelectionIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindSyndicationAttribution];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindCropButton];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindLivePhotoVideoPlaybackOverlay];
  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)invalidatePrimaryContentTiles
{
  v3 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v3 _setInvalidatedContentInsets:1];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (BOOL)_shouldShowRenderIndicatorForIndexPath:(id)path size:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([path length] != 2)
  {
    return 0;
  }

  if (height == *(MEMORY[0x1E695F060] + 8))
  {
    return width != *MEMORY[0x1E695F060];
  }

  return 1;
}

- (BOOL)_isVideoPlacholderVisibleForItemAtIndexPath:(id)path
{
  if (!self->_delegateFlags.respondsToShouldShowVideoPlaceholderForItemAtIndexPath)
  {
    return 0;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  LOBYTE(selfCopy) = [WeakRetained layout:selfCopy shouldShowVideoPlaceholderForItemAtIndexPath:pathCopy];

  return selfCopy;
}

- (BOOL)_isShowingInfoPanelForItemAtIndexPath:(id)path
{
  if (!self->_delegateFlags.respondsToIsShowingInfoPanelForItemAtIndexPath)
  {
    return 0;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  LOBYTE(selfCopy) = [WeakRetained layout:selfCopy isShowingInfoPanelForItemAtIndexPath:pathCopy];

  return selfCopy;
}

- (BOOL)_accessoryViewVisibilityForItemAtIndexPath:(id)path
{
  if (!self->_delegateFlags.respondsToShouldShowAccessoryForItemAtIndexPath)
  {
    return 0;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  LOBYTE(selfCopy) = [WeakRetained layout:selfCopy shouldShowAccessoryForItemAtIndexPath:pathCopy];

  return selfCopy;
}

- (CGPoint)_contentOffsetForItemAtIndexPath:(id)path
{
  if (self->_delegateFlags.respondsToContentOffsetForItemAtIndexPath)
  {
    pathCopy = path;
    delegate = [(PUOneUpTilingLayout *)self delegate];
    [delegate layout:self contentOffsetForItemAtIndexPath:pathCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)invalidateProgressIndicatorForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:pathCopy kind:PUTileKindProgressIndicator];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)invalidateLoadingIndicatorForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:pathCopy kind:PUTileKindLoadingIndicator];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)invalidateVideoPlaceholderForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v5 _setInvalidatedVideoPlaceholderTile:1];
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:pathCopy kind:PUTileKindVideoPlaceholder];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)_invalidateContentRelatedTilesWithIndexPath:(id)path inContext:(id)context
{
  contextCopy = context;
  pathCopy = path;
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:@"PUTileKindItemContent"];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindUserTransform];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindBadge];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindPlayButton];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindProgressIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindPeople];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindRenderIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindImportStatusIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindBufferingIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindLoadingIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindAccessory];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindAssetExplorerReviewScreenBadge];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindSelectionIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
  [contextCopy invalidateTileWithIndexPath:pathCopy kind:PUTileKindCropButton];

  [contextCopy invalidateAllTilesWithKind:PUTileKindLivePhotoVideoPlaybackOverlay];
}

- (void)invalidateContentOffsetForItemAtIndexPath:(id)path withOptions:(unint64_t)options
{
  pathCopy = path;
  v7 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setInvalidatedContentOffset:1];
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setOptions:options];
  [(PUOneUpTilingLayout *)self _invalidateContentRelatedTilesWithIndexPath:pathCopy inContext:v7];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v7];
}

- (void)invalidateAccessoryForItemAtIndexPath:(id)path withOptions:(unint64_t)options
{
  pathCopy = path;
  v7 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setInvalidatedAccessoryTile:1];
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setOptions:options];
  [(PUOneUpTilingLayout *)self _invalidateContentRelatedTilesWithIndexPath:pathCopy inContext:v7];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v7];
}

- (void)invalidateModelTileTransformForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayout *)self _invalidateContentRelatedTilesWithIndexPath:pathCopy inContext:v5];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)invalidateBadgeSizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:pathCopy kind:PUTileKindBadge];
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:pathCopy kind:PUTileKindAssetExplorerReviewScreenBadge];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (CGRect)visibleRectForItemAtIndexPath:(id)path transitionProgress:(double)progress
{
  pathCopy = path;
  [(PUOneUpTilingLayout *)self _itemSize];
  v8 = v7;
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v10 = v8 + v9;
  if ([(PUSectionedTilingLayout *)self leftToRight])
  {
    v11 = v10 * progress;
  }

  else
  {
    v11 = -(v10 * progress);
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;

  return CGRectOffset(*&v20, v11, 0.0);
}

- (UIEdgeInsets)_cropInsetsForTileAtIndexPath:(id)path layoutRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  delegate = [(PUOneUpTilingLayout *)self delegate];
  v11 = [delegate layout:self insetModeForItemAtIndexPath:pathCopy];

  if (v11 == 1)
  {
    v43 = width;
    v44 = height;
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v45 = v15;
    v46 = v14;
    if (self->_delegateFlags.respondsToInsetsWhenScaledToFitForItemAtIndexPath)
    {
      v16 = v12;
      v17 = v13;
      delegate2 = [(PUOneUpTilingLayout *)self delegate];
      [delegate2 layout:self insetsWhenScaledToFitForItemAtIndexPath:pathCopy inViewportSize:{v46, v45}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v15 = v45;
      v14 = v46;
      v13 = v17;
      v12 = v16;
    }

    else
    {
      v20 = *MEMORY[0x1E69DDCE0];
      v22 = *(MEMORY[0x1E69DDCE0] + 8);
      v24 = *(MEMORY[0x1E69DDCE0] + 16);
      v26 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v31 = v12 + v22;
    v32 = v13 + v20;
    v33 = v14 - (v26 + v22);
    v34 = v15 - (v24 + v20);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = v43;
    v47.size.height = v44;
    if (!CGRectIsNull(v47))
    {
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = v43;
      v48.size.height = v44;
      v50.origin.x = v31;
      v50.origin.y = v32;
      v50.size.width = v33;
      v50.size.height = v34;
      CGRectIntersection(v48, v50);
    }

    PXEdgeInsetsBetweenRects();
    PXEdgeInsetsMaxEachEdge();
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
  }

  else
  {
    v27 = *MEMORY[0x1E69C48A0];
    v28 = *(MEMORY[0x1E69C48A0] + 8);
    v29 = *(MEMORY[0x1E69C48A0] + 16);
    v30 = *(MEMORY[0x1E69C48A0] + 24);
  }

  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  result.right = v42;
  result.bottom = v41;
  result.left = v40;
  result.top = v39;
  return result;
}

- (id)_createLayoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  if ([kindCopy isEqualToString:@"PUTileKindItemContent"])
  {
    if ([pathCopy length] == 2)
    {
      v10 = *(MEMORY[0x1E695F058] + 16);
      slice.origin = *MEMORY[0x1E695F058];
      slice.size = v10;
      v11 = *(MEMORY[0x1E695EFD0] + 16);
      v675.origin = *MEMORY[0x1E695EFD0];
      v675.size = v11;
      v676 = *(MEMORY[0x1E695EFD0] + 32);
      v683 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E69C48E0] + 16);
      v681 = *MEMORY[0x1E69C48E0];
      v682 = v12;
      [(PUOneUpTilingLayout *)self _getLayoutRect:&slice transform:&v675 parallaxOffset:&v683 contentsRect:&v681 alpha:0 forContentOfItemAtIndexPath:pathCopy options:0];
      shouldHideMainContent = [(PUOneUpTilingLayout *)self shouldHideMainContent];
      v14 = 1.0;
      if (shouldHideMainContent)
      {
        v14 = 0.0;
      }

      rect = v14;
      if ([(PUOneUpTilingLayout *)self _shouldApplyInsetStylingToContentWithRect:pathCopy indexPath:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height])
      {
        [(PUOneUpTilingLayout *)self _insetContentCornerRadiusForItemAtIndexPath:pathCopy];
        rect1 = v15;
        indexPathOfCurrentItem = *MEMORY[0x1E69796E8];
        insetContentBorderColor = [(PUOneUpTilingLayout *)self insetContentBorderColor];
        [(PUOneUpTilingLayout *)self insetContentBorderWidth];
        v658 = v18;
        v19 = 15;
      }

      else
      {
        v49 = +[PUOneUpSettings sharedInstance];
        [v49 itemContentCornerRadius];
        rect1 = v50;

        indexPathOfCurrentItem = *MEMORY[0x1E69796E8];
        insetContentBorderColor = 0;
        v19 = 0;
        v658 = 0.0;
      }

      [(PUOneUpTilingLayout *)self _cropInsetsForTileAtIndexPath:pathCopy layoutRect:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      v654 = v51;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
      v59 = [PUParallaxedTileLayoutInfo alloc];
      x = slice.origin.x;
      y = slice.origin.y;
      width = slice.size.width;
      height = slice.size.height;
      MidX = CGRectGetMidX(slice);
      v687.origin.x = x;
      v687.origin.y = y;
      v687.size.width = width;
      v687.size.height = height;
      MidY = CGRectGetMidY(v687);
      coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
      remainder = v675;
      v680 = v676;
      v627 = [(PUParallaxedTileLayoutInfo *)v59 initWithTileIdentifier:v58 center:indexPathOfCurrentItem size:v19 alpha:insetContentBorderColor cornerRadius:&remainder cornerCurve:coordinateSystem cornerMask:MidX borderWidth:MidY borderColor:slice.size.width transform:slice.size.height zPosition:rect parallaxOffset:rect1 contentsRect:v658 coordinateSystem:0.0 cropInsets:v683 normalizedLegibilityInsets:*&v681, v682, v654, v53, v55, v57, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];

LABEL_19:
      goto LABEL_20;
    }

    goto LABEL_219;
  }

  if ([kindCopy isEqualToString:PUTileKindBackground])
  {
    if (![pathCopy length] && -[PUOneUpTilingLayout useBackgroundTile](self, "useBackgroundTile"))
    {
      [(PUTilingLayout *)self visibleRect];
      PXRectScaleFromCenter();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
      v28 = [PUTileLayoutInfo alloc];
      v685.origin.x = v21;
      v685.origin.y = v23;
      v685.size.width = v25;
      v685.size.height = v27;
      v29 = CGRectGetMidX(v685);
      v686.origin.x = v21;
      v686.origin.y = v23;
      v686.size.width = v25;
      v686.size.height = v27;
      v30 = CGRectGetMidY(v686);
      v31 = *&PUTilingLayoutBackgroundZPosition;
      coordinateSystem2 = [(PUTilingLayout *)self coordinateSystem];
      v33 = *(MEMORY[0x1E695EFD0] + 16);
      v675.origin = *MEMORY[0x1E695EFD0];
      v675.size = v33;
      v676 = *(MEMORY[0x1E695EFD0] + 32);
      v627 = [(PUTileLayoutInfo *)v28 initWithTileIdentifier:indexPathOfCurrentItem center:&v675 size:coordinateSystem2 alpha:v29 transform:v30 zPosition:v25 coordinateSystem:v27, 1.0, v31];

      [(PUTilingLayout *)self visibleRect];
      PXEdgeInsetsBetweenRects();
      [(PUTileLayoutInfo *)v627 setExpandedRectInsets:?];
LABEL_20:

      goto LABEL_220;
    }

    goto LABEL_219;
  }

  if ([kindCopy isEqualToString:PUTileKindReviewScreenTopBar])
  {
    if (!-[PUOneUpTilingLayout useReviewScreenBars](self, "useReviewScreenBars") || [pathCopy length])
    {
      goto LABEL_219;
    }

    [(PUTilingLayout *)self visibleRect];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [(PUOneUpTilingLayout *)self windowInterfaceOrientation];
    v678 = 0u;
    v676 = 0u;
    memset(&v677, 0, sizeof(v677));
    memset(&v675, 0, sizeof(v675));
    objc_msgSend_reviewScreenTopBarGeometryForReferenceBounds_withOrientation_(PUReviewScreenUtilities, v36, v38, v40, v42);
    memset(&remainder, 0, sizeof(remainder));
    v680 = 0u;
    v43 = 1.0;
    if (self->_delegateFlags.respondsToAlphaForReviewScreenBarsInLayout)
    {
      delegate = [(PUOneUpTilingLayout *)self delegate];
      [delegate alphaForReviewScreenBarsInLayout:self];
      v43 = v45;
    }

    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v46 = [PUTileLayoutInfo alloc];
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    slice = remainder;
    v674 = v680;
    v48 = 1001.0;
    goto LABEL_27;
  }

  if ([kindCopy isEqualToString:PUTileKindReviewScreenControlBar])
  {
    if (!-[PUOneUpTilingLayout useReviewScreenBars](self, "useReviewScreenBars") || [pathCopy length])
    {
      goto LABEL_219;
    }

    [(PUTilingLayout *)self visibleRect];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    [(PUOneUpTilingLayout *)self windowInterfaceOrientation];
    v678 = 0u;
    v676 = 0u;
    memset(&v677, 0, sizeof(v677));
    memset(&v675, 0, sizeof(v675));
    objc_msgSend_reviewScreenControlBarGeometryForReferenceBounds_withOrientation_(PUReviewScreenUtilities, v68, v70, v72, v74);
    memset(&remainder, 0, sizeof(remainder));
    v680 = 0u;
    v43 = 1.0;
    if (self->_delegateFlags.respondsToAlphaForReviewScreenBarsInLayout)
    {
      delegate2 = [(PUOneUpTilingLayout *)self delegate];
      [delegate2 alphaForReviewScreenBarsInLayout:self];
      v43 = v76;
    }

    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v46 = [PUTileLayoutInfo alloc];
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    slice = remainder;
    v674 = v680;
    v48 = 1000.0;
LABEL_27:
    p_slice = &slice;
    v78 = v46;
    v79 = indexPathOfCurrentItem;
    v80 = 0.0;
    v81 = 0.0;
    v82 = 0.0;
    v83 = 0.0;
    v84 = v43;
LABEL_28:
    v168 = [(PUTileLayoutInfo *)v78 initWithTileIdentifier:v79 center:p_slice size:coordinateSystem3 alpha:v80 transform:v81 zPosition:v82 coordinateSystem:v83, v84, v48];
    goto LABEL_29;
  }

  if ([kindCopy isEqualToString:PUTileKindReviewScreenScrubberBar])
  {
    if (![(PUOneUpTilingLayout *)self useReviewScreenBars])
    {
      goto LABEL_219;
    }

    v86 = [pathCopy length];
    if (self->_delegateFlags.respondsToShouldShowReviewScreenScrubberBar)
    {
      if (v86)
      {
        goto LABEL_219;
      }

      delegate3 = [(PUOneUpTilingLayout *)self delegate];
      v88 = [delegate3 layoutShouldShowReviewScreenScrubberBar:self];

      if ((v88 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (v86)
    {
      goto LABEL_219;
    }

    [(PUTilingLayout *)self visibleRect];
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    [(PUOneUpTilingLayout *)self windowInterfaceOrientation];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    v678 = 0u;
    v676 = 0u;
    memset(&v677, 0, sizeof(v677));
    memset(&v675, 0, sizeof(v675));
    objc_msgSend_reviewScreenScrubberBarGeometryForReferenceBounds_withOrientation_safeAreaInsets_(PUReviewScreenUtilities, v119, v121, v123, v125, v126, v127, v128, v129);
    v131 = 0.0;
    v130 = 0.0;
    if (*MEMORY[0x1E695F060] == 0.0 && v675.size.height == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_219;
    }

    v133 = *(&v676 + 1);
    v132 = *&v676;
    remainder = v677;
    v680 = v678;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v134 = [PUTileLayoutInfo alloc];
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    slice = remainder;
    v674 = v680;
    v48 = 1002.0;
    v84 = 1.0;
    p_slice = &slice;
    goto LABEL_53;
  }

  if ([kindCopy isEqualToString:PUTileKindUserTransform])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout useUserTransformTiles](self, "useUserTransformTiles"))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:pathCopy];
    v98 = v97;
    v100 = v99;
    recta = v101;
    rect1a = v102;
    [(PUOneUpTilingLayout *)self _contentPixelSizeForItemAtIndexPath:pathCopy];
    v650 = v104;
    v651 = v103;
    v655 = v100 - v92;
    v659 = v98 - v90;
    if (self->_delegateFlags.respondsToInsetsWhenScaledToFitForItemAtIndexPath)
    {
      delegate4 = [(PUOneUpTilingLayout *)self delegate];
      [delegate4 layout:self insetsWhenScaledToFitForItemAtIndexPath:pathCopy inViewportSize:{v94, v96}];
      v648 = v107;
      v649 = v106;
      v646 = v109;
      v647 = v108;
    }

    else
    {
      [(PUOneUpTilingLayout *)self contentGuideInsets];
      v648 = v158;
      v649 = v157;
      v646 = v160;
      v647 = v159;
    }

    [(PUOneUpTilingLayout *)self _cropInsetsForTileAtIndexPath:pathCopy layoutRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v162 = v161;
    v164 = v163;
    v166 = v165;
    v168 = v167;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v169 = [PUUserTransformTileLayoutInfo alloc];
    Center = PURectGetCenter(v90, v92, v94, v96);
    v172 = v171;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v173 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v173;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v168 = [(PUUserTransformTileLayoutInfo *)v169 initWithTileIdentifier:indexPathOfCurrentItem center:&v675 size:coordinateSystem3 alpha:Center transform:v172 zPosition:v94 coordinateSystem:v96 untransformedContentFrame:1.0 chromeInsets:20.0 contentPixelSize:*&v659 cropInsets:*&v655, recta, rect1a, v649, v648, v647, v646, v651, v650, v162, v164, v166, v168];
LABEL_29:
    v627 = v168;

    goto LABEL_20;
  }

  if ([kindCopy isEqualToString:PUTileKindPlayButton])
  {
    v110 = [pathCopy length];
    [(PUOneUpTilingLayout *)self playButtonSize];
    if (v110 != 2)
    {
      goto LABEL_219;
    }

    v113 = v111;
    v114 = v112;
    v115 = v111 != *MEMORY[0x1E695F060];
    if (v112 != *(MEMORY[0x1E695F060] + 8))
    {
      v115 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowPlayButtonForItemAtIndexPath)
    {
      if (!v115)
      {
        goto LABEL_219;
      }

      delegate5 = [(PUOneUpTilingLayout *)self delegate];
      v117 = [delegate5 layout:self shouldShowPlayButtonForItemAtIndexPath:pathCopy];

      if ((v117 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v115)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _frameForTileWithSize:pathCopy centeredOnItemAtIndexPath:v113, v114];
    v175 = v174;
    v177 = v176;
    v179 = v178;
    v181 = v180;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v175, v177, v179, v181);
    v185 = v184;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v186 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v186;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v84 = 1.0;
    p_slice = &v675;
    v48 = 30.0;
    goto LABEL_81;
  }

  if ([kindCopy isEqualToString:PUTileKindProgressIndicator])
  {
    v135 = [pathCopy length];
    [(PUOneUpTilingLayout *)self progressIndicatorSize];
    v137 = v136;
    v139 = v138;
    [(PUOneUpTilingLayout *)self progressIndicatorContentInsets];
    if (v135 != 2)
    {
      goto LABEL_219;
    }

    v143 = v140;
    v144 = v141;
    v145 = v142;
    v146 = v137 != *MEMORY[0x1E695F060];
    if (v139 != *(MEMORY[0x1E695F060] + 8))
    {
      v146 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowProgressIndicatorForItemAtIndexPath)
    {
      if (!v146)
      {
        goto LABEL_219;
      }

      delegate6 = [(PUOneUpTilingLayout *)self delegate];
      v148 = [delegate6 layout:self shouldShowProgressIndicatorForItemAtIndexPath:pathCopy];

      if ((v148 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v146)
    {
      goto LABEL_219;
    }

    v656 = v145;
    v652 = v143;
    rect1b = v139;
    rectb = v137;
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v220 = v219;
    v222 = v221;
    v224 = v223;
    v226 = v225;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    UIEdgeInsetsMax();
    v228 = v220 + v227;
    v230 = v222 + v229;
    v232 = v224 - (v227 + v231);
    v234 = v229 + v233;
    v235 = *(MEMORY[0x1E695F058] + 16);
    v236 = v226 - v234;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v235;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
    v699.origin.x = v228;
    v699.origin.y = v230;
    v699.size.width = v232;
    v699.size.height = v236;
    if (CGRectIntersectsRect(remainder, v699))
    {
      v700.origin.x = v228;
      v700.origin.y = v230;
      v700.size.width = v232;
      v700.size.height = v236;
      remainder = CGRectIntersection(remainder, v700);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    v238 = v237;
    v241 = remainder.size.width - (v239.f64[0] + v240);
    v243 = remainder.size.height - (v242 + v238);
    v239.f64[1] = v242;
    v244 = vaddq_f64(remainder.origin, v239);
    remainder.origin = v244;
    remainder.size.width = v241;
    remainder.size.height = v243;
    if (self->_delegateFlags.respondsToShouldMoveProgressIndicatorForItemAtIndexPath)
    {
      delegate7 = [(PUOneUpTilingLayout *)self delegate];
      v246 = [delegate7 layout:self shouldMoveProgressIndicatorForItemAtIndexPath:pathCopy];

      v244.x = remainder.origin.x;
      v247 = remainder.origin.y;
      v241 = remainder.size.width;
      v243 = remainder.size.height;
      if (v246)
      {
        v248 = _PUOneUpSelectionIndicatorFrame(leftToRight, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
        v250 = v249;
        v252 = v251;
        v254 = v253;
        PURectGetCenter(v248, v249, v251, v253);
        v256 = v255 + rect1b * -0.5;
        v257 = PURectGetCenter(v248, v250, v252, v254);
        v258 = v257 + 15.5 + 17.0 - v652;
        v259 = rectb;
        v260 = v656 + v257 + -15.5 + -17.0 - rectb;
        if (leftToRight)
        {
          v261 = v260;
        }

        else
        {
          v261 = v258;
        }

LABEL_117:
        indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
        v352 = [PUTileLayoutInfo alloc];
        v353 = PURectGetCenter(v261, v256, v259, rect1b);
        v355 = v354;
        coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
        v356 = *(MEMORY[0x1E695EFD0] + 16);
        v675.origin = *MEMORY[0x1E695EFD0];
        v675.size = v356;
        v676 = *(MEMORY[0x1E695EFD0] + 32);
        v84 = 1.0;
        p_slice = &v675;
        v48 = 31.0;
        v78 = v352;
        v79 = indexPathOfCurrentItem;
        v80 = v353;
        v81 = v355;
        v82 = v259;
        v83 = rect1b;
        goto LABEL_28;
      }
    }

    else
    {
      v247 = v244.y;
    }

    v259 = v137;
    if (leftToRight)
    {
      v261 = v656 + CGRectGetMaxX(*&v244.x) + -17.0 - v137;
    }

    else
    {
      v261 = CGRectGetMinX(*&v244.x) + 17.0 - v652;
    }

    v256 = v144 + CGRectGetMaxY(remainder) + -17.0 - v139;
    goto LABEL_117;
  }

  if ([kindCopy isEqualToString:PUTileKindPeople])
  {
    v149 = [pathCopy length];
    [(PUOneUpTilingLayout *)self peopleRowSize];
    if (v149 != 2)
    {
      goto LABEL_219;
    }

    v152 = v150;
    v153 = v151;
    v154 = v150 != *MEMORY[0x1E695F060];
    if (v151 != *(MEMORY[0x1E695F060] + 8))
    {
      v154 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowPeopleRowForItemAtIndexPath)
    {
      if (!v154)
      {
        goto LABEL_219;
      }

      delegate8 = [(PUOneUpTilingLayout *)self delegate];
      v156 = [delegate8 layout:self shouldShowPeopleRowForItemAtIndexPath:pathCopy];

      if ((v156 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v154)
    {
      goto LABEL_219;
    }

    rectc = v153;
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v292 = v291;
    v294 = v293;
    v296 = v295;
    rect1d = v297;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    UIEdgeInsetsMax();
    v299 = v292 + v298;
    v301 = v294 + v300;
    v303 = v296 - (v298 + v302);
    v305 = rect1d - (v300 + v304);
    v306 = *(MEMORY[0x1E695F058] + 16);
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v306;
    slice.origin.x = 1.0;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 contentsRect:0 alpha:&slice forContentOfItemAtIndexPath:pathCopy options:0];
    v703.origin.x = v299;
    v703.origin.y = v301;
    v703.size.width = v303;
    v703.size.height = v305;
    if (CGRectIntersectsRect(remainder, v703))
    {
      v704.origin.x = v299;
      v704.origin.y = v301;
      v704.size.width = v303;
      v704.size.height = v305;
      remainder = CGRectIntersection(remainder, v704);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    v310.f64[1] = v309;
    remainder.origin = vaddq_f64(remainder.origin, v310);
    remainder.size.width = remainder.size.width - (v310.f64[0] + v307);
    remainder.size.height = remainder.size.height - (v309 + v308);
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    v312 = remainder.size.width;
    if (v152 >= remainder.size.width * 0.5)
    {
      v313 = remainder.size.width * 0.5;
    }

    else
    {
      v313 = v152;
    }

    if (leftToRight)
    {
      v314 = v311;
      v315 = remainder.origin.x;
      v316 = remainder.origin.y;
      v317 = remainder.size.height;
      v318 = CGRectGetMinX(*(&v312 - 2)) + v314 * -2.0;
    }

    else
    {
      v386 = remainder.origin.x;
      v387 = remainder.origin.y;
      v388 = remainder.size.height;
      v318 = CGRectGetMaxX(*(&v312 - 2)) - v152;
    }

    if (self->_delegateFlags.respondsToShouldMovePeopleRowForItemAtIndexPath && (-[PUOneUpTilingLayout renderIndicatorSize](self, "renderIndicatorSize"), -[PUOneUpTilingLayout _shouldShowRenderIndicatorForIndexPath:size:](self, "_shouldShowRenderIndicatorForIndexPath:size:", pathCopy)) && (-[PUOneUpTilingLayout delegate](self, "delegate"), v389 = objc_claimAutoreleasedReturnValue(), v390 = [v389 layout:self shouldMovePeopleRowForItemAtIndexPath:pathCopy], v389, v390))
    {
      [(PUOneUpTilingLayout *)self renderIndicatorSize];
      _PUOneUpRenderIndicatorFrame(leftToRight, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v391);
      MaxY = v392 + 10.0;
    }

    else
    {
      MaxY = CGRectGetMaxY(remainder);
    }

    v394 = MaxY - v153;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v395 = [PUTileLayoutInfo alloc];
    v396 = PURectGetCenter(v318, v394, v313, rectc);
    v398 = v397;
    v399 = slice.origin.x;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v400 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v400;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v48 = 37.0;
    p_slice = &v675;
    v78 = v395;
    v79 = indexPathOfCurrentItem;
    v80 = v396;
    v81 = v398;
    v82 = v313;
    v83 = rectc;
    v84 = v399;
    goto LABEL_28;
  }

  if ([kindCopy isEqualToString:PUTileKindRenderIndicator])
  {
    [(PUOneUpTilingLayout *)self renderIndicatorSize];
    v188 = v187;
    if (![(PUOneUpTilingLayout *)self _shouldShowRenderIndicatorForIndexPath:pathCopy size:?])
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v190 = v189;
    v192 = v191;
    v194 = v193;
    v196 = v195;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    UIEdgeInsetsMax();
    v198 = v190 + v197;
    v200 = v192 + v199;
    v202 = v194 - (v197 + v201);
    v204 = v199 + v203;
    v205 = *(MEMORY[0x1E695F058] + 16);
    v206 = v196 - v204;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v205;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
    v697.origin.x = v198;
    v697.origin.y = v200;
    v697.size.width = v202;
    v697.size.height = v206;
    if (CGRectIntersectsRect(remainder, v697))
    {
      v698.origin.x = v198;
      v698.origin.y = v200;
      v698.size.width = v202;
      v698.size.height = v206;
      remainder = CGRectIntersection(remainder, v698);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    remainder.origin.x = remainder.origin.x + v210;
    remainder.origin.y = v209 + remainder.origin.y;
    remainder.size.width = remainder.size.width - (v210 + v207);
    remainder.size.height = remainder.size.height - (v209 + v208);
    v211 = _PUOneUpRenderIndicatorFrame(leftToRight, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v188);
    v213 = v212;
    v179 = v214;
    v181 = v215;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v211, v213, v179, v181);
    v185 = v216;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v217 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v217;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    *&v218 = 36.0;
    goto LABEL_79;
  }

  if ([kindCopy isEqualToString:PUTileKindImportStatusIndicator])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout useImportStatusIndicatorTiles](self, "useImportStatusIndicatorTiles"))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v263 = v262;
    v265 = v264;
    v267 = v266;
    v269 = v268;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v271 = v263 + v270;
    v273 = v265 + v272;
    v275 = v267 - (v270 + v274);
    v277 = v272 + v276;
    v278 = *(MEMORY[0x1E695F058] + 16);
    v279 = v269 - v277;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v278;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
    v701.origin.x = v271;
    v701.origin.y = v273;
    v701.size.width = v275;
    v701.size.height = v279;
    if (CGRectIntersectsRect(remainder, v701))
    {
      v702.origin.x = v271;
      v702.origin.y = v273;
      v702.size.width = v275;
      v702.size.height = v279;
      remainder = CGRectIntersection(remainder, v702);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    remainder.origin.x = remainder.origin.x + v283;
    remainder.origin.y = v282 + remainder.origin.y;
    remainder.size.width = remainder.size.width - (v283 + v280);
    remainder.size.height = remainder.size.height - (v282 + v281);
    v284 = _PUOneUpSelectionIndicatorFrame(leftToRight, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
    v286 = v285;
    v179 = v287;
    v181 = v288;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v284, v286, v179, v181);
    v185 = v289;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v290 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v290;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v48 = 35.0;
    goto LABEL_80;
  }

  if ([kindCopy isEqualToString:PUTileKindAssetExplorerReviewScreenProgressIndicator])
  {
    v319 = [pathCopy length];
    [(PUOneUpTilingLayout *)self assetExplorerReviewScreenProgressIndicatorSize];
    if (v319 != 2)
    {
      goto LABEL_219;
    }

    v130 = v320;
    v131 = v321;
    if (v320 == *MEMORY[0x1E695F060] && v321 == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v323 = v322;
    v325 = v324;
    v327 = v326;
    v329 = v328;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v331 = v323 + v330;
    v333 = v325 + v332;
    v335 = v327 - (v330 + v334);
    v337 = v332 + v336;
    v338 = *(MEMORY[0x1E695F058] + 16);
    v339 = v329 - v337;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v338;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
    v705.origin.x = v331;
    v705.origin.y = v333;
    v705.size.width = v335;
    v705.size.height = v339;
    if (CGRectIntersectsRect(remainder, v705))
    {
      v706.origin.x = v331;
      v706.origin.y = v333;
      v706.size.width = v335;
      v706.size.height = v339;
      remainder = CGRectIntersection(remainder, v706);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    v341 = v340;
    v343 = v342;
    v345 = v344;
    v346 = remainder.origin.x + v342;
    v347 = v341 + remainder.origin.y;
    v349 = remainder.size.width - (v343 + v348);
    v350 = remainder.size.height - (v341 + v345);
    remainder.origin.x = v346;
    remainder.origin.y = v341 + remainder.origin.y;
    remainder.size.width = v349;
    remainder.size.height = v350;
    if (leftToRight)
    {
      v351 = CGRectGetMaxX(*&v346) + -10.0 - v130;
    }

    else
    {
      v351 = CGRectGetMinX(*&v346) + 10.0;
    }

    v423 = CGRectGetMaxY(remainder) + -15.0 - v131;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v134 = [PUTileLayoutInfo alloc];
    v132 = PURectGetCenter(v351, v423, v130, v131);
    v133 = v424;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v425 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v425;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v48 = 32.0;
    v84 = 1.0;
    p_slice = &v675;
LABEL_53:
    v78 = v134;
    v79 = indexPathOfCurrentItem;
    v80 = v132;
    v81 = v133;
    v82 = v130;
    v83 = v131;
    goto LABEL_28;
  }

  if ([kindCopy isEqualToString:PUTileKindSelectionIndicator])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout useSelectionIndicatorTiles](self, "useSelectionIndicatorTiles"))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v358 = v357;
    v360 = v359;
    v362 = v361;
    v364 = v363;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v366 = v358 + v365;
    v368 = v360 + v367;
    v370 = v362 - (v365 + v369);
    v372 = v367 + v371;
    v373 = *(MEMORY[0x1E695F058] + 16);
    v374 = v364 - v372;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v373;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
    v707.origin.x = v366;
    v707.origin.y = v368;
    v707.size.width = v370;
    v707.size.height = v374;
    if (CGRectIntersectsRect(remainder, v707))
    {
      v708.origin.x = v366;
      v708.origin.y = v368;
      v708.size.width = v370;
      v708.size.height = v374;
      remainder = CGRectIntersection(remainder, v708);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    remainder.origin.x = remainder.origin.x + v378;
    remainder.origin.y = v377 + remainder.origin.y;
    remainder.size.width = remainder.size.width - (v378 + v375);
    remainder.size.height = remainder.size.height - (v377 + v376);
    v379 = _PUOneUpSelectionIndicatorFrame(leftToRight, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
    v381 = v380;
    v179 = v382;
    v181 = v383;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v379, v381, v179, v181);
    v185 = v384;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v385 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v385;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v48 = 33.0;
    goto LABEL_80;
  }

  if ([kindCopy isEqualToString:PUTileKindBufferingIndicator])
  {
    if ([pathCopy length] != 2 || -[PUOneUpTilingLayout _accessoryViewVisibilityForItemAtIndexPath:](self, "_accessoryViewVisibilityForItemAtIndexPath:", pathCopy) || -[PUOneUpTilingLayout _isShowingInfoPanelForItemAtIndexPath:](self, "_isShowingInfoPanelForItemAtIndexPath:", pathCopy))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self bufferingIndicatorSize];
    v402 = v401;
    v404 = v403;
    v405 = v401 != *MEMORY[0x1E695F060];
    if (v403 != *(MEMORY[0x1E695F060] + 8))
    {
      v405 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowBufferingIndicatorForItemAtIndexPath)
    {
      if (!v405)
      {
        goto LABEL_219;
      }

      delegate9 = [(PUOneUpTilingLayout *)self delegate];
      v407 = [delegate9 layout:self shouldShowBufferingIndicatorForItemAtIndexPath:pathCopy];

      if ((v407 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v405)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _frameForTileWithSize:pathCopy centeredOnItemAtIndexPath:v402, v404];
    v543 = v542;
    v545 = v544;
    v179 = v546;
    v181 = v547;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v543, v545, v179, v181);
    v185 = v548;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v549 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v549;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v84 = 1.0;
    p_slice = &v675;
    v48 = 12.0;
    goto LABEL_81;
  }

  if ([kindCopy isEqualToString:PUTileKindLoadingIndicator])
  {
    v409 = *MEMORY[0x1E695F060];
    v408 = *(MEMORY[0x1E695F060] + 8);
    v410 = *MEMORY[0x1E695F060];
    v411 = v408;
    if ([(PUOneUpTilingLayout *)self canDisplayLoadingIndicators])
    {
      v410 = v409;
      v411 = v408;
      if ([pathCopy length] == 2)
      {
        v410 = v409;
        v411 = v408;
        if (self->_delegateFlags.respondsToLoadingIndicatorSizeForItemAtIndexPath)
        {
          delegate10 = [(PUOneUpTilingLayout *)self delegate];
          [delegate10 layout:self loadingIndicatorSizeForItemAtIndexPath:pathCopy];
          v410 = v413;
          v411 = v414;
        }
      }
    }

    if (v410 == v409 && v411 == v408)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _frameForTileWithSize:pathCopy centeredOnItemAtIndexPath:v410, v411];
    v416 = v415;
    v418 = v417;
    v179 = v419;
    v181 = v420;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v416, v418, v179, v181);
    v185 = v421;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v422 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v422;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v84 = 1.0;
    p_slice = &v675;
    v48 = 10.0;
    goto LABEL_81;
  }

  if ([kindCopy isEqualToString:PUTileKindBadge])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout useBadgeTiles](self, "useBadgeTiles"))
    {
      goto LABEL_219;
    }

    v427 = *MEMORY[0x1E695F060];
    v426 = *(MEMORY[0x1E695F060] + 8);
    v428 = *(MEMORY[0x1E695F058] + 16);
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v428;
    v660 = 0.0;
    rect1c = v426;
    rectd = v427;
    if (self->_delegateFlags.respondsToBadgeSizeForItemAtIndexPath)
    {
      [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
      v429 = remainder.size.width + -12.0;
      delegate11 = [(PUOneUpTilingLayout *)self delegate];
      v660 = v429;
      [delegate11 layout:self badgeSizeForItemAtIndexPath:pathCopy contentWidth:v429];
      rectd = v431;
      rect1c = v432;
    }

    v433 = rectd;
    if (rectd == v427)
    {
      v433 = rect1c;
      if (rect1c == v426)
      {
        goto LABEL_219;
      }
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy, v433];
    v435 = v434;
    v437 = v436;
    v439 = v438;
    v441 = v440;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    if (v443 < 6.0)
    {
      v443 = 6.0;
    }

    if (v445 < 6.0)
    {
      v445 = 6.0;
    }

    v446 = v435 + v443;
    v447 = v437 + v442;
    v448 = v439 - (v443 + v445);
    v449 = v441 - (v442 + v444);
    v688.origin.x = v446;
    v688.origin.y = v447;
    v688.size.width = v448;
    v688.size.height = v449;
    v450 = CGRectGetMinX(v688) + 6.0;
    v653 = v446;
    v657 = v448;
    v689.origin.x = v446;
    v689.origin.y = v447;
    v689.size.width = v448;
    v689.size.height = v449;
    v451 = CGRectGetMinY(v689) + 11.0;
    [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:pathCopy];
    PXEdgeInsetsMake();
    PXEdgeInsetsInsetRect();
    v709.origin.x = v452;
    v709.origin.y = v453;
    v709.size.width = v454;
    v709.size.height = v455;
    v456 = v450;
    v690.origin.x = v450;
    v457 = v451;
    v690.origin.y = v451;
    v690.size.width = rectd;
    v690.size.height = rect1c;
    if (CGRectIntersectsRect(v690, v709))
    {
      v710.origin.x = v653;
      v710.size.width = v657;
      v710.origin.y = v447;
      v710.size.height = v449;
      if (CGRectIntersectsRect(remainder, v710))
      {
        v711.origin.x = v653;
        v711.size.width = v657;
        v711.origin.y = v447;
        v711.size.height = v449;
        v691 = CGRectIntersection(remainder, v711);
        remainder = v691;
        v458 = v691.size.width + -12.0;
        delegate12 = [(PUOneUpTilingLayout *)self delegate];
        v660 = v458;
        [delegate12 layout:self badgeSizeForItemAtIndexPath:pathCopy contentWidth:v458];
        rectd = v460;
        rect1c = v461;

        v456 = CGRectGetMinX(remainder) + 6.0;
        v457 = CGRectGetMinY(remainder) + 11.0;
      }
    }

    if (!CGRectIsNull(remainder))
    {
      v462 = CGRectGetMaxY(remainder) + -11.0;
      v692.origin.x = v456;
      v692.origin.y = v457;
      v692.size.width = rectd;
      v692.size.height = rect1c;
      v463 = v462 - CGRectGetHeight(v692);
      if (v457 >= v463)
      {
        v457 = v463;
      }
    }

    v464 = fmin(v660, v657 + -12.0);
    v712.origin.x = v456;
    v712.origin.y = v457;
    v712.size.width = rectd;
    v712.size.height = rect1c;
    v465 = CGRectIntersectsRect(remainder, v712);
    v466 = 0;
    if (self->_delegateFlags.respondsToLeadingBadgesWidthForItemAtIndexPath)
    {
      delegate13 = [(PUOneUpTilingLayout *)self delegate];
      [delegate13 layout:self leadingBadgesWidthForItemAtIndexPath:pathCopy contentWidth:v464];
      v466 = v468;
    }

    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v469 = [PUBadgeTileLayoutInfo alloc];
    v470 = PURectGetCenter(v456, v457, rectd, rect1c);
    v472 = v471;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v473 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v473;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v168 = [(PUBadgeTileLayoutInfo *)v469 initWithTileIdentifier:indexPathOfCurrentItem center:&v675 size:coordinateSystem3 alpha:v465 transform:v470 zPosition:v472 hitTestOutset:rectd coordinateSystem:rect1c isOverContent:1.0 contentWidth:26.0 leadingContentWidth:*MEMORY[0x1E69C4898], *(MEMORY[0x1E69C4898] + 8), *(MEMORY[0x1E69C4898] + 16), *(MEMORY[0x1E69C4898] + 24), *&v464, v466];
    goto LABEL_29;
  }

  if ([kindCopy isEqualToString:PUTileKindAssetExplorerReviewScreenBadge])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout useAssetExplorerReviewScreenBadgeTiles](self, "useAssetExplorerReviewScreenBadgeTiles"))
    {
      goto LABEL_219;
    }

    v475 = *MEMORY[0x1E695F060];
    v474 = *(MEMORY[0x1E695F060] + 8);
    v476 = *MEMORY[0x1E695F060];
    v477 = v474;
    if (self->_delegateFlags.respondsToAssetExplorerReviewScreenBadgeSizeForItemAtIndexPath)
    {
      delegate14 = [(PUOneUpTilingLayout *)self delegate];
      [delegate14 layout:self assetExplorerReviewScreenBadgeSizeForItemAtIndexPath:pathCopy];
      v476 = v479;
      v477 = v480;
    }

    if (v476 == v475 && v477 == v474)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v482 = v481;
    v484 = v483;
    v486 = v485;
    v488 = v487;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v490 = v482 + v489;
    v492 = v484 + v491;
    v494 = v486 - (v489 + v493);
    v496 = v491 + v495;
    v497 = *(MEMORY[0x1E695F058] + 16);
    v498 = v488 - v496;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v497;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:pathCopy options:0];
    v713.origin.x = v490;
    v713.origin.y = v492;
    v713.size.width = v494;
    v713.size.height = v498;
    v499 = CGRectIntersectsRect(remainder, v713);
    v500 = remainder.origin.x;
    v501 = remainder.origin.y;
    v502 = remainder.size.width;
    v503 = remainder.size.height;
    if (v499)
    {
      v714.origin.x = v490;
      v714.origin.y = v492;
      v714.size.width = v494;
      v714.size.height = v498;
      *&v500 = CGRectIntersection(*&v500, v714);
      remainder.origin.x = v500;
      remainder.origin.y = v501;
      remainder.size.width = v502;
      remainder.size.height = v503;
    }

    v504 = CGRectGetMinX(*&v500) + 10.0;
    v505 = CGRectGetMinY(remainder) + 10.0;
    v715.origin.x = v504;
    v715.origin.y = v505;
    v715.size.width = v476;
    v715.size.height = v477;
    v506 = CGRectIntersectsRect(remainder, v715);
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v507 = [PUBadgeTileLayoutInfo alloc];
    v508 = PURectGetCenter(v504, v505, v476, v477);
    v510 = v509;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v511 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v511;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v168 = [(PUBadgeTileLayoutInfo *)v507 initWithTileIdentifier:indexPathOfCurrentItem center:&v675 size:coordinateSystem3 alpha:v506 transform:v508 zPosition:v510 hitTestOutset:v476 coordinateSystem:v477 isOverContent:1.0 contentWidth:34.0 leadingContentWidth:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), 0, 0];
    goto LABEL_29;
  }

  if ([kindCopy isEqualToString:PUTileKindAccessory])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout _accessoryViewVisibilityForItemAtIndexPath:](self, "_accessoryViewVisibilityForItemAtIndexPath:", pathCopy))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v513 = v512;
    v515 = v514;
    v517 = v516;
    v519 = v518;
    v520 = +[PUOneUpSettings sharedInstance];
    [v520 minimumVisibleContentHeight];
    v522 = v521;

    if (self->_delegateFlags.respondsToMinimumVisibleContentHeightForItemAtIndexPath)
    {
      delegate15 = [(PUOneUpTilingLayout *)self delegate];
      [delegate15 layout:self minimumVisibleContentHeightForItemAtIndexPath:pathCopy];
      v522 = v524;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v526 = v522 + v525;
    v693.origin.x = v513;
    v693.origin.y = v515;
    v693.size.width = v517;
    v693.size.height = v519;
    CGRectDivide(v693, &slice, &remainder, v526, CGRectMinYEdge);
    v527 = *(MEMORY[0x1E695F058] + 16);
    v681 = *MEMORY[0x1E695F058];
    v682 = v527;
    *&v683 = 0x3FF0000000000000;
    v528 = +[PUOneUpSettings sharedInstance];
    shouldFadeAccessoryView = [v528 shouldFadeAccessoryView];

    if (shouldFadeAccessoryView)
    {
      v530 = &v683;
    }

    else
    {
      v530 = 0;
    }

    [(PUOneUpTilingLayout *)self _getLayoutRect:&v681 transform:0 parallaxOffset:0 contentsRect:0 alpha:v530 forContentOfItemAtIndexPath:pathCopy options:3];
    v681 = vsubq_f64(v681, remainder.origin);
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v532 = v531;
    v534 = v533;
    v536 = v535;
    v538 = v537;
    if (self->_delegateFlags.respondsToMinimumVisibleAccessoryHeightForItemAtIndexPath)
    {
      delegate16 = [(PUOneUpTilingLayout *)self delegate];
      [delegate16 layout:self minimumVisibleAccessoryHeightForItemAtIndexPath:pathCopy];
      v541 = v540;
    }

    else
    {
      v541 = 0x4049000000000000;
    }

    delegate17 = [(PUOneUpTilingLayout *)self delegate];
    [delegate17 layout:self accessoryOffsetForItemAtIndexPath:pathCopy];
    rect1e = v595;
    recte = v594;

    v596.f64[0] = recte;
    v596.f64[1] = rect1e;
    remainder.origin = vaddq_f64(remainder.origin, v596);
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v597 = [PUAccessoryTileLayoutInfo alloc];
    v598 = PURectGetCenter(remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
    v600 = v599;
    v601 = *&v683;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v602 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v602;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    v168 = [(PUAccessoryTileLayoutInfo *)v597 initWithTileIdentifier:indexPathOfCurrentItem center:&v675 size:coordinateSystem3 alpha:v598 transform:v600 zPosition:remainder.size.width coordinateSystem:remainder.size.height untransformedContentFrame:v601 contentInsets:-1.0 minimumVisibleHeight:*&v681, v682, v532, v534, v536, v538, v541];
    goto LABEL_29;
  }

  if ([kindCopy isEqualToString:PUTileKindVideoPlaceholder])
  {
    if ([pathCopy length] != 2 || !-[PUOneUpTilingLayout _isVideoPlacholderVisibleForItemAtIndexPath:](self, "_isVideoPlacholderVisibleForItemAtIndexPath:", pathCopy))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v551 = v550;
    v553 = v552;
    v179 = v554;
    v181 = v555;
    indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v182 = [PUTileLayoutInfo alloc];
    v183 = PURectGetCenter(v551, v553, v179, v181);
    v185 = v556;
    coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
    v557 = *(MEMORY[0x1E695EFD0] + 16);
    v675.origin = *MEMORY[0x1E695EFD0];
    v675.size = v557;
    v676 = *(MEMORY[0x1E695EFD0] + 32);
    *&v218 = 100.0;
LABEL_79:
    v48 = *&v218;
LABEL_80:
    v84 = 1.0;
    p_slice = &v675;
LABEL_81:
    v78 = v182;
    v79 = indexPathOfCurrentItem;
    v80 = v183;
    v81 = v185;
    v82 = v179;
    v83 = v181;
    goto LABEL_28;
  }

  if (![kindCopy isEqualToString:PUTileKindLivePhotoVideoPlaybackOverlay])
  {
    if (![kindCopy isEqualToString:PUTileKindSyndicationAttribution])
    {
      if (![kindCopy isEqualToString:PUTileKindCropButton])
      {
        goto LABEL_219;
      }

      if (!self->_delegateFlags.respondsToShouldShowCropButtonForItemAtIndexPath)
      {
        goto LABEL_219;
      }

      delegate18 = [(PUOneUpTilingLayout *)self delegate];
      v604 = [delegate18 layout:self shouldShowCropButtonForItemAtIndexPath:pathCopy];

      if (!v604)
      {
        goto LABEL_219;
      }

      [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
      v605 = v694.origin.x;
      v606 = v694.origin.y;
      v607 = v694.size.width;
      v608 = v694.size.height;
      v609 = CGRectGetMaxX(v694) + -140.0;
      v695.origin.x = v605;
      v695.origin.y = v606;
      v695.size.width = v607;
      v695.size.height = v608;
      MinY = CGRectGetMinY(v695);
      indexPathOfCurrentItem = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
      v611 = [PUTileLayoutInfo alloc];
      v612 = PURectGetCenter(v609, MinY, 140.0, 80.0);
      v614 = v613;
      coordinateSystem3 = [(PUTilingLayout *)self coordinateSystem];
      v615 = *(MEMORY[0x1E695EFD0] + 16);
      v675.origin = *MEMORY[0x1E695EFD0];
      v675.size = v615;
      v676 = *(MEMORY[0x1E695EFD0] + 32);
      v48 = 38.0;
      v84 = 1.0;
      p_slice = &v675;
      v78 = v611;
      v79 = indexPathOfCurrentItem;
      v80 = v612;
      v81 = v614;
      v82 = 140.0;
      v83 = 80.0;
      goto LABEL_28;
    }

    if (![(PUOneUpTilingLayout *)self useSyndicationAttributionTile])
    {
      goto LABEL_219;
    }

    if (!self->_delegateFlags.respondsToShouldShowAttributionViewForItemAtIndexPath)
    {
      goto LABEL_219;
    }

    delegate19 = [(PUOneUpTilingLayout *)self delegate];
    v563 = [delegate19 layout:self shouldShowAttributionViewForItemAtIndexPath:pathCopy];

    if (!v563)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:pathCopy];
    v565 = v564;
    v567 = v566;
    v569 = v568;
    v571 = v570;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v573 = v572;
    v575 = v567 + v574;
    v577 = v572 + v576;
    v579 = v574 + v578;
    v580 = [(PUOneUpTilingLayout *)self layoutInfoForTileWithIndexPath:pathCopy kind:PUTileKindBadge];
    [v580 size];
    v582 = v581;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_211:
      v585 = v565 + v573;
      v586 = v569 - v577;
      v587 = v571 - v579;
      v588 = v582 + 10.0;
      mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
      syndicated1upPillAlignment = [mEMORY[0x1E69C3408] syndicated1upPillAlignment];

      if (syndicated1upPillAlignment == 1)
      {
        v591 = v586 - v588 + -10.0;
        v592 = v585 + v588;
      }

      else
      {
        v591 = v586 * 0.5 - v588 + v586 * 0.5 - v588;
        v696.origin.x = v585;
        v696.origin.y = v575 + 9.0;
        v696.size.width = v586;
        v696.size.height = v571 - v579;
        v592 = CGRectGetMidX(v696) - v591 * 0.5;
      }

      v634 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
      v635 = [PUTileLayoutInfo alloc];
      v636 = PURectGetCenter(v592, v575 + 9.0, v591, v587);
      v638 = v637;
      coordinateSystem4 = [(PUTilingLayout *)self coordinateSystem];
      v640 = *(MEMORY[0x1E695EFD0] + 16);
      v675.origin = *MEMORY[0x1E695EFD0];
      v675.size = v640;
      v676 = *(MEMORY[0x1E695EFD0] + 32);
      v627 = [(PUTileLayoutInfo *)v635 initWithTileIdentifier:v634 center:&v675 size:coordinateSystem4 alpha:v636 transform:v638 zPosition:v591 coordinateSystem:v587, 1.0, 14.0];

      goto LABEL_220;
    }

    v583 = v580;
    if (v583)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_210:
        [v583 leadingContentWidth];
        v582 = v584;

        goto LABEL_211;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v644 = objc_opt_class();
      v643 = NSStringFromClass(v644);
      px_descriptionForAssertionMessage = [v583 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:978 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"potentialBadgesLayoutInfo", v643, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v642 = objc_opt_class();
      v643 = NSStringFromClass(v642);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:978 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"potentialBadgesLayoutInfo", v643}];
    }

    goto LABEL_210;
  }

  v558 = +[PUOneUpSettings sharedInstance];
  shouldMergeOverlappingLivePhotos = [v558 shouldMergeOverlappingLivePhotos];

  if (shouldMergeOverlappingLivePhotos)
  {
    indexPathOfCurrentItem = [(PUOneUpTilingLayout *)self indexPathOfCurrentItem];
    v627 = 0;
    if ([pathCopy length] || !indexPathOfCurrentItem)
    {
      goto LABEL_20;
    }

    memset(&slice, 0, sizeof(slice));
    v676 = 0u;
    memset(&v675, 0, sizeof(v675));
    [(PUOneUpTilingLayout *)self _getLayoutRect:&slice transform:&v675 parallaxOffset:0 contentsRect:0 alpha:0 forContentOfItemAtIndexPath:indexPathOfCurrentItem options:0];
    if ([(PUOneUpTilingLayout *)self _shouldApplyInsetStylingToContentWithRect:pathCopy indexPath:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height])
    {
      [(PUOneUpTilingLayout *)self insetContentCornerRadius];
      v561 = v560;
    }

    else
    {
      v617 = +[PUOneUpSettings sharedInstance];
      [v617 itemContentCornerRadius];
      v561 = v618;
    }

    v619 = *MEMORY[0x1E69796E8];
    [(PUOneUpTilingLayout *)self _cropInsetsForTileAtIndexPath:indexPathOfCurrentItem layoutRect:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    v621 = v620;
    v623 = v622;
    v625 = v624;
    v627 = v626;
    insetContentBorderColor = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v628 = [PUTileLayoutInfo alloc];
    v629 = PURectGetCenter(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
    v631 = v630;
    coordinateSystem5 = [(PUTilingLayout *)self coordinateSystem];
    v633 = *(MEMORY[0x1E695EFD0] + 16);
    remainder.origin = *MEMORY[0x1E695EFD0];
    remainder.size = v633;
    v680 = *(MEMORY[0x1E695EFD0] + 32);
    v627 = [(PUTileLayoutInfo *)v628 initWithTileIdentifier:insetContentBorderColor center:v619 size:0 alpha:&remainder cornerRadius:coordinateSystem5 cornerCurve:v629 cornerMask:v631 transform:slice.size.width zPosition:slice.size.height contentsRect:1.0 coordinateSystem:v561 cropInsets:11.0, *MEMORY[0x1E69C48E0], *(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24), v621, v623, v625, v627];

    goto LABEL_19;
  }

LABEL_219:
  v627 = 0;
LABEL_220:

  return v627;
}

- (double)_insetContentCornerRadiusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_delegateFlags.respondsToInsetContentCornerRadiusForItemAtIndexPath)
  {
    delegate = [(PUOneUpTilingLayout *)self delegate];
    [delegate layout:self insetContentCornerRadiusForItemAtIndexPath:pathCopy];
    v7 = v6;
  }

  else
  {
    [(PUOneUpTilingLayout *)self insetContentCornerRadius];
    v7 = v8;
  }

  return v7;
}

- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  v8 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:kindCopy];
  v9 = [v8 objectForKeyedSubscript:pathCopy];

  if (!v9)
  {
    v9 = [(PUOneUpTilingLayout *)self _createLayoutInfoForTileWithIndexPath:pathCopy kind:kindCopy];
    v10 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:kindCopy];
    if (v10)
    {
      if (v9)
      {
LABEL_4:
        null = v9;
LABEL_7:
        v12 = null;
        [v10 setObject:null forKeyedSubscript:pathCopy];

        goto LABEL_8;
      }
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind setObject:v10 forKeyedSubscript:kindCopy];
      if (v9)
      {
        goto LABEL_4;
      }
    }

    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_7;
  }

LABEL_8:
  null2 = [MEMORY[0x1E695DFB0] null];
  v14 = [null2 isEqual:v9];

  if (v14)
  {

    v9 = 0;
  }

  return v9;
}

- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items
{
  [(PUOneUpTilingLayout *)self _itemSize];
  v8 = v7;
  if (items < 1)
  {
    v11 = *MEMORY[0x1E695F060];
  }

  else
  {
    v9 = v6;
    [(PUOneUpTilingLayout *)self interpageSpacing];
    v11 = -(v10 - items * (v9 + v10));
  }

  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_collectLayoutInfosForTilesInRect:(CGRect)rect withIndexPath:(id)path kinds:(id)kinds toSet:(id)set
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  kindsCopy = kinds;
  setCopy = set;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [kindsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(kindsCopy);
        }

        v20 = [(PUOneUpTilingLayout *)self layoutInfoForTileWithIndexPath:pathCopy kind:*(*(&v22 + 1) + 8 * v19)];
        v21 = v20;
        if (v20)
        {
          [v20 frame];
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          if (CGRectIntersectsRect(v28, v29))
          {
            [setCopy addObject:v21];
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [kindsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)addLayoutInfosForSupplementaryTilesInRect:(CGRect)rect toSet:(id)set
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  v13 = PUTileKindBackground;
  v14 = PUTileKindReviewScreenTopBar;
  v15 = PUTileKindReviewScreenControlBar;
  v16 = PUTileKindReviewScreenScrubberBar;
  v17 = PUTileKindLivePhotoVideoPlaybackOverlay;
  v9 = MEMORY[0x1E695DEC8];
  setCopy = set;
  v11 = [v9 arrayWithObjects:&v13 count:5];
  pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  [(PUOneUpTilingLayout *)self _collectLayoutInfosForTilesInRect:pu_rootIndexPath withIndexPath:v11 kinds:setCopy toSet:x, y, width, height];
}

- (void)addLayoutInfosForTilesInRect:(CGRect)rect section:(int64_t)section toSet:(id)set
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31[16] = *MEMORY[0x1E69E9840];
  setCopy = set;
  [(PUSectionedTilingLayout *)self boundsForSection:section];
  v13 = v12;
  [(PUOneUpTilingLayout *)self _itemSize];
  v15 = v14;
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v17 = v15 + v16;
  v18 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:section];
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  v20 = width + x - v13;
  if (leftToRight)
  {
    v20 = x - v13;
  }

  v21 = -width;
  if (leftToRight)
  {
    v21 = width;
  }

  v22 = vcvtmd_s64_f64(v20 / v17);
  if (!leftToRight)
  {
    v22 = v18 + ~v22;
  }

  v23 = v22 & ~(v22 >> 63);
  v24 = vcvtpd_s64_f64((x - v13 + v21) / v17);
  if (!leftToRight)
  {
    v24 = v18 + ~v24;
  }

  if (v24 >= v18 - 1)
  {
    v24 = v18 - 1;
  }

  if (v23 <= v24)
  {
    v25 = v24 + 1;
    do
    {
      v26 = [MEMORY[0x1E696AC88] indexPathForItem:v23 inSection:section];
      [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v26];
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      if (CGRectIntersectsRect(v32, v33))
      {
        v31[0] = @"PUTileKindItemContent";
        v31[1] = PUTileKindUserTransform;
        v31[2] = PUTileKindPlayButton;
        v31[3] = PUTileKindProgressIndicator;
        v31[4] = PUTileKindPeople;
        v31[5] = PUTileKindRenderIndicator;
        v31[6] = PUTileKindBufferingIndicator;
        v31[7] = PUTileKindLoadingIndicator;
        v31[8] = PUTileKindBadge;
        v31[9] = PUTileKindAccessory;
        v31[10] = PUTileKindVideoPlaceholder;
        v31[11] = PUTileKindAssetExplorerReviewScreenBadge;
        v31[12] = PUTileKindSelectionIndicator;
        v31[13] = PUTileKindImportStatusIndicator;
        v31[14] = PUTileKindAssetExplorerReviewScreenProgressIndicator;
        v31[15] = PUTileKindSyndicationAttribution;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:16];
        v28 = +[PUOneUpSettings sharedInstance];
        quickCropEnabled = [v28 quickCropEnabled];

        if (quickCropEnabled)
        {
          v30 = [v27 arrayByAddingObject:PUTileKindCropButton];

          v27 = v30;
        }

        [(PUOneUpTilingLayout *)self _collectLayoutInfosForTilesInRect:v26 withIndexPath:v27 kinds:setCopy toSet:x, y, width, height];
      }

      ++v23;
    }

    while (v25 != v23);
  }
}

- (CGSize)estimatedSectionSize
{
  [(PUOneUpTilingLayout *)self sizeForSection:0x7FFFFFFFFFFFFFFFLL numberOfItems:20];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)preferredScrollInfo
{
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v4 = v3;
  v6 = v5;
  [(PUSectionedTilingLayout *)self interSectionSpacing];
  if (v4 != v7)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 0;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "One-up layout has different interpage and inter-section spacings. This will result in undefined paging behavior.", v21, 2u);
    }
  }

  v9 = +[PUOneUpSettings sharedInstance];
  [v9 pagingSpringPullAdjustment];
  v11 = v10;

  v12 = +[PUOneUpSettings sharedInstance];
  [v12 pagingFrictionAdjustment];
  v14 = v13;

  v15 = +[PURootSettings sharedInstance];
  irisUIEnabled = [v15 irisUIEnabled];

  if (irisUIEnabled)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0.0;
  }

  if (irisUIEnabled)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = [PUTilingScrollInfo scrollInfoWithScrollDirections:2 enabledPagingWithInterpageSpacing:v4 pagingSpringPullAdjustment:v6 pagingFrictionAdjustment:v17, v18];

  return v19;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([contextCopy invalidatedAllTiles])
  {
    [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind removeAllObjects];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    invalidatedTileKinds = [contextCopy invalidatedTileKinds];
    v6 = [invalidatedTileKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(invalidatedTileKinds);
          }

          v10 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
          [v10 removeAllObjects];

          ++v9;
        }

        while (v7 != v9);
        v7 = [invalidatedTileKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__PUOneUpTilingLayout_invalidateLayoutWithContext___block_invoke;
    v12[3] = &unk_1E7B7DD00;
    v12[4] = self;
    [contextCopy enumerateInvalidatedTilesUsingBlock:v12];
  }

  v11.receiver = self;
  v11.super_class = PUOneUpTilingLayout;
  [(PUTilingLayout *)&v11 invalidateLayoutWithContext:contextCopy];
}

void __51__PUOneUpTilingLayout_invalidateLayoutWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 248);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:a3];
  [v6 removeObjectForKey:v5];
}

- (void)prepareLayout
{
  v14.receiver = self;
  v14.super_class = PUOneUpTilingLayout;
  [(PUSectionedTilingLayout *)&v14 prepareLayout];
  [(PUTilingLayout *)self visibleRect];
  self->_itemSize.width = v3;
  self->_itemSize.height = v4;
  [(PUTilingLayout *)self visibleRect];
  MidX = CGRectGetMidX(v15);
  v6 = [(PUOneUpTilingLayout *)self _indexPathOfItemClosestToAbscissa:?];
  inFocusIndexPath = self->_inFocusIndexPath;
  self->_inFocusIndexPath = v6;

  v8 = self->_inFocusIndexPath;
  if (v8)
  {
    v13 = 0;
    [(PUOneUpTilingLayout *)self _normalizedTransitionProgressFrom:v8 withAbscissa:&v13 outNeighbor:MidX];
    v10 = v9;
    v11 = v13;
  }

  else
  {
    v11 = 0;
    v10 = 0.0;
  }

  self->_transitionProgress = v10;
  neighborIndexPath = self->_neighborIndexPath;
  self->_neighborIndexPath = v11;
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUTilingLayout *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v21.receiver = self;
  v21.super_class = PUOneUpTilingLayout;
  [(PUSectionedTilingLayout *)&v21 setVisibleRect:x, y, width, height];
  if (width != v13 || height != v15)
  {
    self->_itemSize = PUSizeNull;
    v17 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v17 invalidateContentBounds];
    [(PUTilingLayoutInvalidationContext *)v17 invalidateAllTiles];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v17];
  }

  if (x != v9 || y != v11)
  {
    v19 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    parallaxComputer = [(PUOneUpTilingLayout *)self parallaxComputer];

    if (parallaxComputer)
    {
      [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
    }

    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindBackground];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindReviewScreenTopBar];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindReviewScreenControlBar];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindReviewScreenScrubberBar];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindLivePhotoVideoPlaybackOverlay];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v19];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToPixelSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAspectRatioForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToInsetsWhenScaledToFitForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToBadgeSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToLeadingBadgesWidthForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAssetExplorerReviewScreenBadgeSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowPlayButtonForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowCropButtonForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowProgressIndicatorForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldMoveProgressIndicatorForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowPeopleRowForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldMovePeopleRowForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowBufferingIndicatorForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToLoadingIndicatorSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToModelTileTransformForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToContentOffsetForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowAccessoryForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToIsShowingInfoPanelForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMinimumVisibleContentHeightForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMinimumVisibleAccessoryHeightForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowVideoPlaceholderForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldInitiallyZoomToFillForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowReviewScreenScrubberBar = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAlphaForReviewScreenBarsInLayout = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToBestSquareRectForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMinimumItemHeightNeededInAccessoryForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldUseSquareImageInAccessoryForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowAttributionViewForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanApplyInsetStylingToItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillApplyDisplayTransform = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToInsetContentCornerRadiusForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  }
}

- (PUOneUpTilingLayout)init
{
  v12.receiver = self;
  v12.super_class = PUOneUpTilingLayout;
  v2 = [(PUTilingLayout *)&v12 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #20.0 }

    v2->_interpageSpacing = _Q0;
    v2->_itemSize = PUSizeNull;
    [(PUSectionedTilingLayout *)v2 setInterSectionSpacing:v2->_interpageSpacing.width, v2->_interpageSpacing.height];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    layoutInfosByIndexPathByTileKind = v3->_layoutInfosByIndexPathByTileKind;
    v3->_layoutInfosByIndexPathByTileKind = dictionary;
  }

  return v3;
}

+ (CGRect)untransformedRectForItemWithAspectRatio:(double)ratio pageRect:(CGRect)rect safeInsets:(UIEdgeInsets)insets
{
  [self untransformedRectForItemWithAspectRatio:ratio pageRect:rect.origin.x safeInsets:rect.origin.y minimumInsetMargin:{rect.size.width, rect.size.height, *&insets.top, *&insets.left, *&insets.bottom, *&insets.right, 0}];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (id)centerTileKinds
{
  if (centerTileKinds_onceToken != -1)
  {
    dispatch_once(&centerTileKinds_onceToken, &__block_literal_global_46700);
  }

  v3 = centerTileKinds_centerTileKinds;

  return v3;
}

void __38__PUOneUpTilingLayout_centerTileKinds__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = PUTileKindBufferingIndicator;
  v4[1] = PUTileKindLoadingIndicator;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = centerTileKinds_centerTileKinds;
  centerTileKinds_centerTileKinds = v2;
}

+ (CGRect)rectForFittingToTargetPixelSize:(CGSize)size imagePixelSize:(CGSize)pixelSize bestSquareUnitRect:(CGRect)rect
{
  v5 = 0.0;
  PXRectWithAspectRatioFittingRect();
  PXRectNormalize();
  PXRectGetCenter();
  PXRectWithCenterAndSize();
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectGetMinX(v19) >= 0.0)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (CGRectGetMaxX(v20) <= 1.0)
    {
      v5 = x;
    }

    else
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v5 = 1.0 - CGRectGetWidth(v21);
    }
  }

  v22.origin.x = v5;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = 0.0;
  if (CGRectGetMinY(v22) >= 0.0)
  {
    v23.origin.x = v5;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v10 = y;
    if (CGRectGetMaxY(v23) > 1.0)
    {
      v24.origin.x = v5;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v10 = 1.0 - CGRectGetHeight(v24);
    }
  }

  v11 = *MEMORY[0x1E69C48E0];
  v12 = *(MEMORY[0x1E69C48E0] + 8);
  v13 = *(MEMORY[0x1E69C48E0] + 16);
  v14 = *(MEMORY[0x1E69C48E0] + 24);
  if (PXRectApproximatelyEqualToRect())
  {
    height = v14;
    width = v13;
    v10 = v12;
    v5 = v11;
  }

  v15 = v5;
  v16 = v10;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end