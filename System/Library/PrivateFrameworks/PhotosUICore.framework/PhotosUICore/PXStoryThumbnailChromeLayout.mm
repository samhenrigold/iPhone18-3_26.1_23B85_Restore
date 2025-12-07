@interface PXStoryThumbnailChromeLayout
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (NSIndexSet)axSpriteIndexes;
- (PXStoryLayoutSpec)spec;
- (PXStoryThumbnailChromeLayout)init;
- (PXStoryThumbnailChromeLayout)initWithModel:(id)model;
- (id)_baseConfigurationForButtonWithSystemImageName:(id)name;
- (id)_buttonConfigurationForSpriteIndex:(unsigned int)index;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_handleDetailsViewButton:(id)button;
- (void)_handleFavoriteButton:(id)button;
- (void)_handlePlayButton:(id)button;
- (void)_invalidateContent;
- (void)_invalidateContentAlpha;
- (void)_invalidateIsFavorite;
- (void)_invalidateTransform;
- (void)_updateContent;
- (void)_updateContentAlpha;
- (void)_updateIsFavorite;
- (void)_updateTransform;
- (void)alphaDidChange;
- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)setAlphaOverride:(id)override;
- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference;
- (void)setIsFavorite:(BOOL)favorite;
- (void)setScaleFromTopRightCorner:(double)corner;
- (void)update;
@end

@implementation PXStoryThumbnailChromeLayout

- (NSIndexSet)axSpriteIndexes
{
  axSpriteIndexes = self->_axSpriteIndexes;
  if (!axSpriteIndexes)
  {
    localNumberOfSprites = [(PXStoryThumbnailChromeLayout *)self localNumberOfSprites];
    v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, localNumberOfSprites}];
    v6 = self->_axSpriteIndexes;
    self->_axSpriteIndexes = v5;

    axSpriteIndexes = self->_axSpriteIndexes;
  }

  return axSpriteIndexes;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_130060 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryThumbnailChromeLayout.m" lineNumber:410 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 0x200000000000) != 0)
  {
    [(PXStoryThumbnailChromeLayout *)self _invalidateIsFavorite];
    if ((change & 0x2000) == 0)
    {
LABEL_4:
      if ((change & 0x4000000000000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      [(PXStoryThumbnailChromeLayout *)self _invalidateContentAlpha];
      if ((change & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((change & 0x2000) == 0)
  {
    goto LABEL_4;
  }

  [(PXStoryThumbnailChromeLayout *)self _invalidateContentVersion];
  if ((change & 0x4000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((change & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_12:
  [(PXStoryThumbnailChromeLayout *)self _invalidateTransform];
LABEL_6:
  spec = [(PXStoryThumbnailChromeLayout *)self spec];
  if ([spec thumbnailChromeShowsPlayButton])
  {

    if ((change & 0x2000000000000000) != 0)
    {
      [(PXStoryThumbnailChromeLayout *)self _invalidateContentVersion];
    }
  }

  else
  {
  }
}

- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference
{
  if (override)
  {
    v5 = MEMORY[0x1E696AD98];
    [override chromeAlpha];
    v6 = [v5 numberWithDouble:?];
    [(PXStoryThumbnailChromeLayout *)self setAlphaOverride:v6];
  }

  else
  {

    [(PXStoryThumbnailChromeLayout *)self setAlphaOverride:?];
  }
}

- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference
{
  placementCopy = placement;
  [(PXStoryThumbnailChromeLayout *)self alpha];
  [placementCopy setChromeAlpha:?];
}

- (void)_handleDetailsViewButton:(id)button
{
  v6 = *MEMORY[0x1E69E9840];
  actionPerformer = [(PXStoryThumbnailChromeLayout *)self actionPerformer];
  presentDetailsViewAction = [actionPerformer presentDetailsViewAction];

  if (!presentDetailsViewAction)
  {
    PXAssertGetLog();
  }

  presentDetailsViewAction2 = [actionPerformer presentDetailsViewAction];
  presentDetailsViewAction2[2]();
}

- (void)_handlePlayButton:(id)button
{
  v6 = *MEMORY[0x1E69E9840];
  actionPerformer = [(PXStoryThumbnailChromeLayout *)self actionPerformer];
  presentPlayerAction = [actionPerformer presentPlayerAction];

  if (!presentPlayerAction)
  {
    PXAssertGetLog();
  }

  presentPlayerAction2 = [actionPerformer presentPlayerAction];
  presentPlayerAction2[2]();
}

- (void)_handleFavoriteButton:(id)button
{
  buttonCopy = button;
  [(PXStoryThumbnailChromeLayout *)self setIsFavorite:[(PXStoryThumbnailChromeLayout *)self isFavorite]^ 1];
  objc_initWeak(&location, self);
  actionPerformer = [(PXStoryThumbnailChromeLayout *)self actionPerformer];
  isFavorite = [(PXStoryThumbnailChromeLayout *)self isFavorite];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PXStoryThumbnailChromeLayout__handleFavoriteButton___block_invoke;
  v7[3] = &unk_1E7747EB0;
  objc_copyWeak(&v8, &location);
  [actionPerformer setFavorite:isFavorite completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__PXStoryThumbnailChromeLayout__handleFavoriteButton___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _invalidateIsFavorite];
  }
}

- (id)_baseConfigurationForButtonWithSystemImageName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(PXStoryChromeButtonConfiguration);
  [(PXStoryChromeButtonConfiguration *)v5 setSystemImageName:nameCopy];

  [(PXStoryChromeButtonConfiguration *)v5 setTarget:self];
  spec = [(PXStoryThumbnailChromeLayout *)self spec];
  thumbnailChromeButtonSpec = [spec thumbnailChromeButtonSpec];
  [(PXStoryChromeButtonConfiguration *)v5 setSpec:thumbnailChromeButtonSpec];

  [(PXStoryChromeButtonConfiguration *)v5 setPointerShape:1];
  PXEdgeInsetsMake();
}

- (id)_buttonConfigurationForSpriteIndex:(unsigned int)index
{
  if (self->_actionMenuButtonSpriteIndex == index)
  {
    v4 = [(PXStoryThumbnailChromeLayout *)self _baseConfigurationForButtonWithSystemImageName:@"ellipsis.circle"];
    v5 = [PXMenuBuilder defaultStoryThumbnailActionsMenuWithModel:self->_model isFavorite:[(PXStoryThumbnailChromeLayout *)self isFavorite]];
    [v4 setMenu:v5];

    goto LABEL_13;
  }

  if (self->_favoriteButtonSpriteIndex == index)
  {
    if ([(PXStoryThumbnailChromeLayout *)self isFavorite])
    {
      v6 = @"suit.heart.fill";
    }

    else
    {
      v6 = @"suit.heart";
    }

    v7 = [(PXStoryThumbnailChromeLayout *)self _baseConfigurationForButtonWithSystemImageName:v6];
    v4 = v7;
    v8 = sel__handleFavoriteButton_;
  }

  else
  {
    if (self->_playButtonSpriteIndex == index)
    {
      v4 = [(PXStoryThumbnailChromeLayout *)self _baseConfigurationForButtonWithSystemImageName:@"play.fill"];
      [v4 setAction:sel__handlePlayButton_];
      spec = [(PXStoryThumbnailChromeLayout *)self spec];
      thumbnailChromePlayButtonSpec = [spec thumbnailChromePlayButtonSpec];
      [v4 setSpec:thumbnailChromePlayButtonSpec];

      spec2 = [(PXStoryThumbnailChromeLayout *)self spec];
      thumbnailChromePlayButtonSpec2 = [spec2 thumbnailChromePlayButtonSpec];
      [v4 setBackgroundStyle:{objc_msgSend(thumbnailChromePlayButtonSpec2, "backgroundStyle")}];

      [v4 setBackgroundExtendsUnderLabel:1];
      v13 = PXLocalizedStringFromTable(@"InteractiveMemoryCardActionPlay", @"PhotosUICore");
      [v4 setLabel:v13];

      [v4 setPointerShape:0];
      goto LABEL_13;
    }

    if (self->_detailsViewButtonSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryThumbnailChromeLayout.m" lineNumber:332 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = [(PXStoryThumbnailChromeLayout *)self _baseConfigurationForButtonWithSystemImageName:@"square.grid.3x3.fill"];
    spec3 = [(PXStoryThumbnailChromeLayout *)self spec];
    thumbnailChromeDetailsViewButtonSpec = [spec3 thumbnailChromeDetailsViewButtonSpec];
    [v4 setSpec:thumbnailChromeDetailsViewButtonSpec];

    spec4 = [(PXStoryThumbnailChromeLayout *)self spec];
    thumbnailChromeDetailsViewButtonSpec2 = [spec4 thumbnailChromeDetailsViewButtonSpec];
    [v4 setSystemImageStyle:{objc_msgSend(thumbnailChromeDetailsViewButtonSpec2, "systemImageStyle")}];

    v8 = sel__handleDetailsViewButton_;
    v7 = v4;
  }

  [v7 setAction:v8];
LABEL_13:

  return v4;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  [(PXStoryThumbnailChromeLayout *)self referenceSize];
  objc_msgSend_geometryForSpriteAtIndex_(self);
  [(PXStoryThumbnailChromeLayout *)self scaleFromTopRightCorner];
  PXPointSubtract();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_actionMenuButtonSpriteIndex != index && self->_favoriteButtonSpriteIndex != index && self->_playButtonSpriteIndex != index && self->_detailsViewButtonSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryThumbnailChromeLayout.m" lineNumber:293 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = objc_opt_class();

  return v8;
}

- (void)_updateContentAlpha
{
  [(PXStoryThumbnailChromeLayout *)self alpha];
  v4 = v3;
  alphaOverride = [(PXStoryThumbnailChromeLayout *)self alphaOverride];
  v6 = alphaOverride;
  if (alphaOverride)
  {
    [alphaOverride floatValue];
    v4 = v7;
  }

  v8 = +[PXStorySettings sharedInstance];
  isHovering = 1.0;
  if ([v8 showFeedChromeOnHover])
  {
    model = [(PXStoryThumbnailChromeLayout *)self model];
    isHovering = [model isHovering];
  }

  localNumberOfSprites = [(PXStoryThumbnailChromeLayout *)self localNumberOfSprites];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PXStoryThumbnailChromeLayout__updateContentAlpha__block_invoke;
  v12[3] = &unk_1E774B270;
  v12[4] = self;
  *&v12[5] = v4;
  *&v12[6] = isHovering;
  [(PXStoryThumbnailChromeLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v12];
}

void __51__PXStoryThumbnailChromeLayout__updateContentAlpha__block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, float *a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    for (i = 0; v4 != i; ++i)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 32);
      if (i == v9[257])
      {
        if ([v9 isFavorite])
        {
          goto LABEL_7;
        }

        v9 = *(a1 + 32);
      }

      v10 = [v9 spec];
      v11 = [v10 thumbnailChromeShowsPlayButton];

      if (v11)
      {
LABEL_7:
        if (i == *(*(a1 + 32) + 1032))
        {
          v12 = fmax(v8 * 15.0 + -14.0, 0.0);
          if (v12 <= 1.0)
          {
            v8 = v12;
          }

          else
          {
            v8 = 1.0;
          }
        }

        goto LABEL_12;
      }

      v8 = v8 * *(a1 + 48);
LABEL_12:
      v13 = v8;
      *a4 = v13;
      a4 += 40;
    }
  }
}

- (void)_invalidateContentAlpha
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout _invalidateContentAlpha]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:258 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryThumbnailChromeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  [(PXStoryThumbnailChromeLayout *)self referenceSize];
  [(PXStoryThumbnailChromeLayout *)self spec];
  [objc_claimAutoreleasedReturnValue() thumbnailChromePadding];
  PXRectWithOriginAndSize();
}

void __46__PXStoryThumbnailChromeLayout__updateContent__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = v8[256];
  if (v9 != -1)
  {
    v10 = *(a1 + 48);
    v11 = [v8 _buttonConfigurationForSpriteIndex:{v9, a4}];
    v12 = (*(v10 + 16))(v10, v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = (a3 + 32 * *(*(a1 + 32) + 1024));
    v88.origin.x = v12;
    v88.origin.y = v14;
    v88.size.width = v16;
    v88.size.height = v18;
    MidX = CGRectGetMidX(v88);
    v89.origin.x = v12;
    v89.origin.y = v14;
    v89.size.width = v16;
    v89.size.height = v18;
    MidY = CGRectGetMidY(v89);
    v90.origin.x = v12;
    v90.origin.y = v14;
    v90.size.width = v16;
    v90.size.height = v18;
    Width = CGRectGetWidth(v90);
    v91.origin.x = v12;
    v91.origin.y = v14;
    v91.size.width = v16;
    v91.size.height = v18;
    Height = CGRectGetHeight(v91);
    v23.f64[0] = Width;
    v23.f64[1] = Height;
    *v19 = MidX;
    *&v19[1] = MidY;
    v19[2] = 0xC059000000000000;
    v19[3] = vcvt_f32_f64(v23);
    *(a5 + 40 * *(*(a1 + 32) + 1024) + 32) = *(*(a1 + 32) + 1040);
    v8 = *(a1 + 32);
  }

  if (v8[257] != -1)
  {
    v24 = *(a1 + 48);
    v25 = [v8 _buttonConfigurationForSpriteIndex:?];
    v26 = (*(v24 + 16))(v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = (a3 + 32 * *(*(a1 + 32) + 1028));
    v92.origin.x = v26;
    v92.origin.y = v28;
    v92.size.width = v30;
    v92.size.height = v32;
    v34 = CGRectGetMidX(v92);
    v93.origin.x = v26;
    v93.origin.y = v28;
    v93.size.width = v30;
    v93.size.height = v32;
    v35 = CGRectGetMidY(v93);
    v94.origin.x = v26;
    v94.origin.y = v28;
    v94.size.width = v30;
    v94.size.height = v32;
    v86 = CGRectGetWidth(v94);
    v95.origin.x = v26;
    v95.origin.y = v28;
    v95.size.width = v30;
    v95.size.height = v32;
    v36 = CGRectGetHeight(v95);
    v37.f64[0] = v86;
    v37.f64[1] = v36;
    *v33 = v34;
    *&v33[1] = v35;
    v33[2] = 0xC059000000000000;
    v33[3] = vcvt_f32_f64(v37);
    *(a5 + 40 * *(*(a1 + 32) + 1028) + 32) = *(*(a1 + 32) + 1040);
    v8 = *(a1 + 32);
  }

  if (v8[258] != -1)
  {
    v38 = [v8 rootLayout];
    v39 = [v38 coordinateSpace];

    v40 = [*(a1 + 32) model];
    v41 = [v40 presentedTitleFrame];
    [v41 rectInCoordinateSpace:v39];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = [*(a1 + 32) model];
    v51 = [v50 presentedSubtitleFrame];
    [v51 rectInCoordinateSpace:v39];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v96.origin.x = v43;
    v96.origin.y = v45;
    v96.size.width = v47;
    v96.size.height = v49;
    v103.origin.x = v53;
    v103.origin.y = v55;
    v103.size.width = v57;
    v103.size.height = v59;
    v97 = CGRectUnion(v96, v103);
    x = v97.origin.x;
    y = v97.origin.y;
    v62 = v97.size.width;
    v63 = v97.size.height;
    MinX = *MEMORY[0x1E695F058];
    v65 = *(MEMORY[0x1E695F058] + 8);
    v66 = *(MEMORY[0x1E695F058] + 16);
    v67 = *(MEMORY[0x1E695F058] + 24);
    v104.origin.x = *MEMORY[0x1E695F058];
    v104.origin.y = v65;
    v104.size.width = v66;
    v104.size.height = v67;
    if (!CGRectEqualToRect(v97, v104))
    {
      v68 = [*(a1 + 32) _buttonConfigurationForSpriteIndex:*(*(a1 + 32) + 1032)];
      [PXStoryChromeButton sizeWithConfiguration:v68];
      v66 = v69;
      v67 = v70;

      v71 = [*(a1 + 32) model];
      v72 = [v71 titleAlignment];

      v73 = x;
      v74 = y;
      v75 = v62;
      v76 = v63;
      if (v72 == 2)
      {
        MinX = CGRectGetMaxX(*&v73) - v66;
      }

      else if (v72)
      {
        MinX = CGRectGetMidX(*&v73) + v66 * -0.5;
      }

      else
      {
        MinX = CGRectGetMinX(*&v73);
      }

      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = v62;
      v98.size.height = v63;
      MaxY = CGRectGetMaxY(v98);
      [*(a1 + 40) thumbnailPlayButtonPadding];
      v65 = MaxY + v78;
    }

    v79 = (a3 + 32 * *(*(a1 + 32) + 1032));
    v99.origin.x = MinX;
    v99.origin.y = v65;
    v99.size.width = v66;
    v99.size.height = v67;
    v80 = CGRectGetMidX(v99);
    v100.origin.x = MinX;
    v100.origin.y = v65;
    v100.size.width = v66;
    v100.size.height = v67;
    v81 = CGRectGetMidY(v100);
    v101.origin.x = MinX;
    v101.origin.y = v65;
    v101.size.width = v66;
    v101.size.height = v67;
    v87 = CGRectGetWidth(v101);
    v102.origin.x = MinX;
    v102.origin.y = v65;
    v102.size.width = v66;
    v102.size.height = v67;
    v82 = CGRectGetHeight(v102);
    v83.f64[0] = v87;
    v83.f64[1] = v82;
    *v79 = v80;
    *&v79[1] = v81;
    v79[2] = 0xC059000000000000;
    v79[3] = vcvt_f32_f64(v83);
    *(a5 + 40 * *(*(a1 + 32) + 1032) + 32) = *(*(a1 + 32) + 1040);

    v8 = *(a1 + 32);
  }

  if (v8[259] != -1)
  {
    v84 = [v8 _buttonConfigurationForSpriteIndex:v8[258]];
    [PXStoryChromeButton sizeWithConfiguration:v84];

    PXRectWithOriginAndSize();
  }
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:180 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryThumbnailChromeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTransform
{
  [(PXStoryThumbnailChromeLayout *)self referenceSize];
  v4 = v3;
  model = [(PXStoryThumbnailChromeLayout *)self model];
  [model pressAnimationInfo];
  v7 = v6;

  v8 = v4 >= v7 || v7 <= 0.0;
  v9 = v4 / v7;
  if (v8)
  {
    v9 = 1.0;
  }

  [(PXStoryThumbnailChromeLayout *)self setScaleFromTopRightCorner:v9];
}

- (void)_invalidateTransform
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout _invalidateTransform]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:165 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryThumbnailChromeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateIsFavorite
{
  model = [(PXStoryThumbnailChromeLayout *)self model];
  -[PXStoryThumbnailChromeLayout setIsFavorite:](self, "setIsFavorite:", [model currentAssetCollectionIsFavorite]);
}

- (void)_invalidateIsFavorite
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout _invalidateIsFavorite]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:157 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryThumbnailChromeLayout *)self setNeedsUpdate];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout update]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryThumbnailChromeLayout *)self _updateIsFavorite];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout update]"];
        [currentHandler2 handleFailureInFunction:v11 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryThumbnailChromeLayout *)self _updateTransform];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout update]"];
      [currentHandler3 handleFailureInFunction:v13 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryThumbnailChromeLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout update]"];
      [currentHandler4 handleFailureInFunction:v15 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryThumbnailChromeLayout *)self _updateContentAlpha];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryThumbnailChromeLayout update]"];
      [currentHandler5 handleFailureInFunction:v17 file:@"PXStoryThumbnailChromeLayout.m" lineNumber:152 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v18.receiver = self;
  v18.super_class = PXStoryThumbnailChromeLayout;
  [(PXGCompositeLayout *)&v18 update];
}

- (void)setAlphaOverride:(id)override
{
  overrideCopy = override;
  v6 = overrideCopy;
  if (self->_alphaOverride != overrideCopy)
  {
    v8 = overrideCopy;
    v7 = [(NSNumber *)overrideCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_alphaOverride, override);
      [(PXStoryThumbnailChromeLayout *)self _invalidateContentAlpha];
      v6 = v8;
    }
  }
}

- (void)setIsFavorite:(BOOL)favorite
{
  if (self->_isFavorite != favorite)
  {
    self->_isFavorite = favorite;
    [(PXStoryThumbnailChromeLayout *)self _invalidateContentVersion];
  }
}

- (void)setScaleFromTopRightCorner:(double)corner
{
  if (self->_scaleFromTopRightCorner != corner)
  {
    self->_scaleFromTopRightCorner = corner;
    [(PXStoryThumbnailChromeLayout *)self _invalidateContentVersion];
  }
}

- (PXStoryLayoutSpec)spec
{
  model = [(PXStoryThumbnailChromeLayout *)self model];
  layoutSpec = [model layoutSpec];

  return layoutSpec;
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryThumbnailChromeLayout;
  [(PXStoryThumbnailChromeLayout *)&v3 alphaDidChange];
  [(PXStoryThumbnailChromeLayout *)self _invalidateContentAlpha];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryThumbnailChromeLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryThumbnailChromeLayout *)self _invalidateTransform];
  [(PXStoryThumbnailChromeLayout *)self _invalidateContent];
}

- (PXStoryThumbnailChromeLayout)initWithModel:(id)model
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = PXStoryThumbnailChromeLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    [(PXStoryModel *)v7->_model registerChangeObserver:v7 context:ModelObservationContext_130060];
    thumbnailActionPerformer = [modelCopy thumbnailActionPerformer];
    actionPerformer = v7->_actionPerformer;
    v7->_actionPerformer = thumbnailActionPerformer;

    layoutSpec = [modelCopy layoutSpec];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__PXStoryThumbnailChromeLayout_initWithModel___block_invoke;
    aBlock[3] = &unk_1E773BA78;
    aBlock[4] = &v14;
    v11 = _Block_copy(aBlock);
    v7->_favoriteButtonSpriteIndex = v11[2](v11, [layoutSpec thumbnailChromeShowsFavoriteButton]);
    v7->_actionMenuButtonSpriteIndex = v11[2](v11, [layoutSpec thumbnailChromeShowsActionMenuButton]);
    v7->_playButtonSpriteIndex = v11[2](v11, [layoutSpec thumbnailChromeShowsPlayButton]);
    v7->_detailsViewButtonSpriteIndex = v11[2](v11, [modelCopy detailsViewButtonDisplayStyle] == 2);
    [(PXStoryThumbnailChromeLayout *)v7 addSpriteCount:*(v15 + 6) withInitialState:&__block_literal_global_130120];
    [(PXStoryThumbnailChromeLayout *)v7 setContentSource:v7];
    [(PXStoryThumbnailChromeLayout *)v7 _invalidateIsFavorite];
    [(PXStoryThumbnailChromeLayout *)v7 _invalidateContentAlpha];

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

uint64_t __46__PXStoryThumbnailChromeLayout_initWithModel___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24);
  *(v2 + 24) = result + 1;
  return result;
}

void __46__PXStoryThumbnailChromeLayout_initWithModel___block_invoke_2(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *(off_1E7722048 + 6);
    v7 = *(off_1E7722048 + 7);
    v8 = *(off_1E7722048 + 8);
    v9 = *(off_1E7722048 + 9);
    v10 = *(off_1E7722048 + 2);
    v11 = *(off_1E7722048 + 3);
    v12 = *(off_1E7722048 + 4);
    v13 = *(off_1E7722048 + 5);
    v14 = *off_1E7722048;
    v15 = *(off_1E7722048 + 1);
    do
    {
      v16 = (*(a3 + 3) + v3);
      v16[6] = v6;
      v16[7] = v7;
      v16[8] = v8;
      v16[9] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v12;
      v16[5] = v13;
      *v16 = v14;
      v16[1] = v15;
      *(*(a3 + 4) + v4) = 2561;
      ++v5;
      v4 += 40;
      v3 += 160;
    }

    while (v5 < *a3);
  }
}

- (PXStoryThumbnailChromeLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryThumbnailChromeLayout.m" lineNumber:60 description:{@"%s is not available as initializer", "-[PXStoryThumbnailChromeLayout init]"}];

  abort();
}

@end