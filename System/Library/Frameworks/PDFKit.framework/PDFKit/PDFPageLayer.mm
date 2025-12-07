@interface PDFPageLayer
+ (id)pageShadowMetrics;
- (BOOL)_hasTileWithFrameInLayer:(CGRect)layer;
- (BOOL)_isTile:(id)tile occludedByTiles:(id)tiles;
- (BOOL)isVisible;
- (CGAffineTransform)layerEffectTransform;
- (CGRect)_layerTileToRootViewBounds:(id)bounds;
- (CGRect)_pageLayerVisibleRect;
- (PDFPageLayer)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties;
- (id)_subtractRectB:(CGRect)b fromRectA:(CGRect)a;
- (id)geometryInterface;
- (id)page;
- (id)renderingProperties;
- (int64_t)displayBox;
- (void)_forceTileUpdate;
- (void)_hideTileLayer:(BOOL)layer;
- (void)_printRectsArray:(id)array;
- (void)_releasePageLayerEffects;
- (void)_releaseTiles;
- (void)_renderingPropertyUpdate:(id)update;
- (void)_setEnablePageShadows:(BOOL)shadows;
- (void)_tileUpdateComplete;
- (void)_updateLayerEffect:(id)effect withPageTransform:(CGAffineTransform *)transform;
- (void)_updateTiles;
- (void)addPageLayerEffect:(id)effect;
- (void)applyTileLayoutScale:(double)scale;
- (void)dealloc;
- (void)initPageCornerRadiusForMagnification:(double)magnification;
- (void)layoutSublayers;
- (void)removePageLayerEffectForID:(id)d;
- (void)restoreOriginalTileLayout;
- (void)saveOriginalTileLayout;
- (void)scalePageLayerEffects:(double)effects;
- (void)setCornerRadius:(double)radius;
- (void)setMasksToBounds:(BOOL)bounds;
- (void)setNeedsTilesUpdate;
- (void)tileDrawingComplete:(id)complete;
- (void)updatePageLayerEffectForID:(id)d;
- (void)updatePageLayerEffects;
@end

@implementation PDFPageLayer

- (PDFPageLayer)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties
{
  pageCopy = page;
  interfaceCopy = interface;
  propertiesCopy = properties;
  v49.receiver = self;
  v49.super_class = PDFPageLayer;
  v11 = [(PDFPageLayer *)&v49 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_page, pageCopy);
    objc_storeWeak(&v12->_geometryInterface, interfaceCopy);
    objc_storeWeak(&v12->_renderingProperties, propertiesCopy);
    v12->_oldPageRotation = [pageCopy rotation];
    v13 = objc_alloc_init(MEMORY[0x1E6979398]);
    contentLayer = v12->_contentLayer;
    v12->_contentLayer = v13;

    [(CALayer *)v12->_contentLayer setName:@"contentLayer"];
    [(CALayer *)v12->_contentLayer setZPosition:-801.0];
    [(CALayer *)v12->_contentLayer setMasksToBounds:1];
    [(PDFPageLayer *)v12 insertSublayer:v12->_contentLayer atIndex:0];
    v15 = objc_alloc_init(MEMORY[0x1E6979398]);
    tilesLayer = v12->_tilesLayer;
    v12->_tilesLayer = v15;

    [(CALayer *)v12->_tilesLayer setName:@"tilesLayer"];
    [(CALayer *)v12->_tilesLayer setZPosition:-800.0];
    [(CALayer *)v12->_tilesLayer setAllowsEdgeAntialiasing:0];
    [(CALayer *)v12->_contentLayer insertSublayer:v12->_tilesLayer above:v12];
    v17 = objc_alloc_init(MEMORY[0x1E6979398]);
    effectsLayer = v12->_effectsLayer;
    v12->_effectsLayer = v17;

    [(CALayer *)v12->_effectsLayer setName:@"effectsLayer"];
    [(CALayer *)v12->_contentLayer addSublayer:v12->_effectsLayer];
    [(CALayer *)v12->_effectsLayer setAllowsGroupBlending:0];
    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    shadowLayer1 = v12->_shadowLayer1;
    v12->_shadowLayer1 = v19;

    [(CALayer *)v12->_shadowLayer1 setName:@"shadowLayer1"];
    [(CALayer *)v12->_shadowLayer1 setMasksToBounds:0];
    v21 = v12->_shadowLayer1;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBackgroundColor:](v21, "setBackgroundColor:", [clearColor CGColor]);

    [(CALayer *)v12->_shadowLayer1 setZPosition:-1000.0];
    [(PDFPageLayer *)v12 insertSublayer:v12->_shadowLayer1 below:v12->_contentLayer];
    v23 = objc_alloc_init(MEMORY[0x1E6979398]);
    shadowLayer2 = v12->_shadowLayer2;
    v12->_shadowLayer2 = v23;

    [(CALayer *)v12->_shadowLayer2 setName:@"shadowLayer2"];
    [(CALayer *)v12->_shadowLayer2 setMasksToBounds:0];
    v25 = v12->_shadowLayer2;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBackgroundColor:](v25, "setBackgroundColor:", [clearColor2 CGColor]);

    [(CALayer *)v12->_shadowLayer2 setZPosition:-1000.0];
    [(PDFPageLayer *)v12 insertSublayer:v12->_shadowLayer2 below:v12->_shadowLayer1];
    v27 = v12->_tilesLayer;
    CGAffineTransformMakeScale(&v48, 1.0, -1.0);
    [(CALayer *)v27 setAffineTransform:&v48];
    [pageCopy boundsForBox:{objc_msgSend(propertiesCopy, "displayBox")}];
    v12->_oldBoundsForBox.origin.x = v28;
    v12->_oldBoundsForBox.origin.y = v29;
    v12->_oldBoundsForBox.size.width = v30;
    v12->_oldBoundsForBox.size.height = v31;
    v12->_zoomGenerationDelay = 0.25;
    v12->_visibilityDelegateIndex = 0x7FFFFFFFFFFFFFFFLL;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tiles = v12->_tiles;
    v12->_tiles = v32;

    v12->_tileLayerHidden = 0;
    v12->_allowUpdate = 1;
    atomic_store(0, &v12->_isTiling);
    atomic_store(0, &v12->_requestedTiling);
    [(PDFPageLayer *)v12 setAllowsGroupBlending:0];
    enablePageShadows = [propertiesCopy enablePageShadows];
    v35 = 0;
    if (enablePageShadows)
    {
      v35 = [propertiesCopy isDarkMode] ^ 1;
    }

    [(PDFPageLayer *)v12 _setEnablePageShadows:v35];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__renderingPropertyUpdate_ name:@"PDFRenderingPropertiesChanged" object:propertiesCopy];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__pageDidRotate_ name:@"PDFPageDidRotate" object:pageCopy];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v12 selector:sel__pageDidRotate_ name:@"PDFPageDidChangeBounds" object:pageCopy];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v12 selector:sel__pageChangedPageRef_ name:@"PDFPagePageRefChanged" object:pageCopy];

    v40 = [[PDFTimer alloc] initWithThrottleDelay:sel__forceTileUpdate forSelector:v12 forTarget:0.1];
    forcedUpdateTimer = v12->_forcedUpdateTimer;
    v12->_forcedUpdateTimer = v40;

    document = [pageCopy document];
    v43 = [document indexForPage:pageCopy];

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PDFPageLayer, page index %d", v43];
    [(PDFPageLayer *)v12 setName:v44];

    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pageLayerEffects = v12->_pageLayerEffects;
    v12->_pageLayerEffects = v45;
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFPageLayer;
  [(PDFPageLayer *)&v4 dealloc];
}

- (void)setMasksToBounds:(BOOL)bounds
{
  v3.receiver = self;
  v3.super_class = PDFPageLayer;
  [(PDFPageLayer *)&v3 setMasksToBounds:bounds];
}

+ (id)pageShadowMetrics
{
  if (pageShadowMetrics_onceToken != -1)
  {
    +[PDFPageLayer pageShadowMetrics];
  }

  v3 = pageShadowMetrics_metrics;

  return v3;
}

void __33__PDFPageLayer_pageShadowMetrics__block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = +[PDFRenderingProperties isSolariumEnabled];
  v1 = &unk_1F4184458;
  if (v0)
  {
    v1 = &unk_1F4184448;
  }

  v9[0] = @"kPageShadowsOffsetShadow1";
  v9[1] = @"kPageShadowsRadiusShadow1";
  v2 = &unk_1F4184468;
  if (!v0)
  {
    v2 = &unk_1F4184478;
  }

  v10[0] = v1;
  v10[1] = v2;
  v3 = &unk_1F4184498;
  if (v0)
  {
    v3 = &unk_1F4184488;
  }

  v9[2] = @"kPageShadowsOpacityShadow1";
  v9[3] = @"kPageShadowsOffsetShadow2";
  v4 = &unk_1F41844A8;
  if (!v0)
  {
    v4 = &unk_1F41844B8;
  }

  v10[2] = v3;
  v10[3] = v4;
  v9[4] = @"kPageShadowsRadiusShadow2";
  v9[5] = @"kPageShadowsOpacityShadow2";
  v5 = &unk_1F41844C8;
  if (!v0)
  {
    v5 = &unk_1F41844D8;
  }

  v6 = &unk_1F41844E8;
  if (!v0)
  {
    v6 = &unk_1F41844F8;
  }

  v10[4] = v5;
  v10[5] = v6;
  v9[6] = @"kPageShadowsBorderWidth";
  v9[7] = @"kPageShadowsBorderOpacity";
  v10[6] = &unk_1F4184478;
  v10[7] = &unk_1F4184508;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
  v8 = pageShadowMetrics_metrics;
  pageShadowMetrics_metrics = v7;
}

- (id)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (id)geometryInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);

  return WeakRetained;
}

- (id)renderingProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);

  return WeakRetained;
}

- (void)setNeedsTilesUpdate
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_isTiling, &v3, 1u);
  if (v3)
  {
    atomic_store(1u, &self->_requestedTiling);
  }

  else if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PDFPageLayer *)self _updateTiles];

    [(PDFPageLayer *)self _tileUpdateComplete];
  }

  else
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __35__PDFPageLayer_setNeedsTilesUpdate__block_invoke;
    v4[3] = &unk_1E8151400;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __35__PDFPageLayer_setNeedsTilesUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateTiles];
    [v2 _tileUpdateComplete];
    WeakRetained = v2;
  }
}

- (int64_t)displayBox
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  displayBox = [WeakRetained displayBox];

  return displayBox;
}

- (void)_tileUpdateComplete
{
  atomic_store(0, &self->_isTiling);
  v4 = 1;
  atomic_compare_exchange_strong(&self->_requestedTiling, &v4, 0);
  if (v4 == 1)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PDFPageLayer__tileUpdateComplete__block_invoke;
    block[3] = &unk_1E8150990;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)isVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  [WeakRetained rootViewBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extendedRootViewBounds];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  [(PDFPageLayer *)self bounds];
  PDFRectFromCGRect();
  [WeakRetained convertRectToRootView:self fromPageLayer:?];
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v16 = PDFRectIntersectsRect(v18, v19);

  return v16;
}

- (void)addPageLayerEffect:(id)effect
{
  effectCopy = effect;
  if (effectCopy)
  {
    v13 = effectCopy;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    pageLayerEffects = self->_pageLayerEffects;
    uUID = [v13 UUID];
    v7 = [(NSMutableDictionary *)pageLayerEffects objectForKey:uUID];

    if (v7)
    {
      [v7 removeFromSuperlayer];
      v8 = self->_pageLayerEffects;
      uUID2 = [v7 UUID];
      [(NSMutableDictionary *)v8 removeObjectForKey:uUID2];
    }

    [(CALayer *)self->_effectsLayer addSublayer:v13];
    v10 = self->_pageLayerEffects;
    uUID3 = [v13 UUID];
    [(NSMutableDictionary *)v10 setObject:v13 forKey:uUID3];

    uUID4 = [v13 UUID];
    [(PDFPageLayer *)self updatePageLayerEffectForID:uUID4];

    [MEMORY[0x1E6979518] commit];
    effectCopy = v13;
  }
}

- (void)removePageLayerEffectForID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_pageLayerEffects objectForKey:?];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v4 removeFromSuperlayer];
    [(NSMutableDictionary *)self->_pageLayerEffects removeObjectForKey:dCopy];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)updatePageLayerEffectForID:(id)d
{
  v4 = [(PDFPageLayer *)self pageLayerEffectForID:d];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    objc_msgSend_layerEffectTransform(self);
    [(PDFPageLayer *)self _updateLayerEffect:v4 withPageTransform:&v5];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)updatePageLayerEffects
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  objc_msgSend_layerEffectTransform(self);
  _pageLayerEffects = [(PDFPageLayer *)self _pageLayerEffects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [_pageLayerEffects countByEnumeratingWithState:&v10 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_pageLayerEffects);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9[0] = v14;
        v9[1] = v15;
        v9[2] = v16;
        [(PDFPageLayer *)self _updateLayerEffect:v8 withPageTransform:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [_pageLayerEffects countByEnumeratingWithState:&v10 objects:v17 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)_updateLayerEffect:(id)effect withPageTransform:(CGAffineTransform *)transform
{
  effectCopy = effect;
  [effectCopy pageFrame];
  v7 = v6;
  PDFRectGetCenterPoint(v8, v9, v6);
  PDFPointToCGPoint();
  PDFPointFromCGPoint();
  PDFRectMakeFromCenter(v10, v11, v7);
  WeakRetained = objc_loadWeakRetained(&self->_page);
  rotation = [WeakRetained rotation];
  v14 = objc_loadWeakRetained(&self->_renderingProperties);
  [WeakRetained boundsForBox:{objc_msgSend(v14, "displayBox")}];
  v16 = v15;
  v18 = v17;

  PDFRectRotate(rotation, v16, v18);
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  *&v21.a = *MEMORY[0x1E695EFD0];
  *&v21.c = v19;
  *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  [effectCopy setAffineTransform:&v21];
  PDFRectToCGRect();
  [effectCopy setFrame:?];
  if ([effectCopy shouldRotateContent])
  {
    v20 = PDFDegToRad(rotation);
    CGAffineTransformMakeRotation(&v21, v20);
    [effectCopy setAffineTransform:&v21];
  }

  [effectCopy update];
}

- (CGAffineTransform)layerEffectTransform
{
  v5 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:0];
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v7 = objc_loadWeakRetained(&self->_renderingProperties);
  displayBox = [v7 displayBox];
  if (WeakRetained)
  {
    [WeakRetained transformForBox:displayBox];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return [PDFPage setNativeRotationDrawingEnabledForThisThread:v5];
}

- (void)scalePageLayerEffects:(double)effects
{
  [(CALayer *)self->_effectsLayer frame];
  v6 = v5;
  v8 = v7;
  effectsLayer = self->_effectsLayer;
  CGAffineTransformMakeScale(&v10, effects, effects);
  [(CALayer *)effectsLayer setAffineTransform:&v10];
  [(CALayer *)self->_effectsLayer setFrame:0.0, 0.0, v6, v8];
}

- (void)_forceTileUpdate
{
  if (!self->_isForcingUpdate)
  {
    self->_isForcingUpdate = 1;
    [(PDFPageLayer *)self setNeedsTilesUpdate];
  }
}

- (void)saveOriginalTileLayout
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_tiles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = v7 + 16;
        [v7 frame];
        PDFRectFromCGRect();
        *v8 = v9;
        v8[1] = v10;
        v8[2] = v11;
        v8[3] = v12;
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)restoreOriginalTileLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_tiles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = *MEMORY[0x1E6979DC0];
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        PDFRectToCGRect();
        [v8 setFrame:v9];
        [v8 setContentsGravity:v6];
        ++v7;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)applyTileLayoutScale:(double)scale
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_tiles;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = *MEMORY[0x1E6979DF0];
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        PDFRectToCGRect();
        [v9 setFrame:v10];
        [v9 setContentsGravity:v7];
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)initPageCornerRadiusForMagnification:(double)magnification
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  [(PDFPageLayer *)self bounds];
  [WeakRetained adjustedPageCornerRadiusForPageSize:v6 magnification:{v7, magnification}];
  v9 = v8;

  [(PDFPageLayer *)self setCornerRadius:v9];
  v10 = *MEMORY[0x1E69796E8];

  [(PDFPageLayer *)self setCornerCurve:v10];
}

- (void)setCornerRadius:(double)radius
{
  [(PDFPageLayer *)self cornerRadius];
  if (v5 != radius)
  {
    v6.receiver = self;
    v6.super_class = PDFPageLayer;
    [(PDFPageLayer *)&v6 setCornerRadius:radius];
    [(PDFPageLayer *)self setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  v14.receiver = self;
  v14.super_class = PDFPageLayer;
  [(PDFPageLayer *)&v14 layoutSublayers];
  [(PDFPageLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFPageLayer *)self cornerRadius];
  v12 = v11;
  [(CALayer *)self->_contentLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_tilesLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_effectsLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_shadowLayer1 setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_shadowLayer2 setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_contentLayer setCornerRadius:v12];
  [(CALayer *)self->_shadowLayer1 setCornerRadius:v12];
  [(CALayer *)self->_shadowLayer2 setCornerRadius:v12];
  v13 = CGPathCreateWithContinuousRoundedRect();
  [(CALayer *)self->_shadowLayer1 setShadowPath:v13];
  [(CALayer *)self->_shadowLayer2 setShadowPath:v13];
  CFRelease(v13);
  [(PDFPageLayer *)self setNeedsTilesUpdate];
}

- (void)_releaseTiles
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_tiles count])
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = objc_autoreleasePoolPush();
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_tiles;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_tiles removeAllObjects];
    objc_autoreleasePoolPop(v3);
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)_releasePageLayerEffects
{
  v13 = *MEMORY[0x1E69E9840];
  objectEnumerator = [(NSMutableDictionary *)self->_pageLayerEffects objectEnumerator];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_pageLayerEffects removeAllObjects];
}

- (void)_hideTileLayer:(BOOL)layer
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_tileLayerHidden != layer)
  {
    layerCopy = layer;
    self->_tileLayerHidden = layer;
    [(CALayer *)self->_tilesLayer setHidden:?];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_tiles;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHidden:{layerCopy, v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setEnablePageShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  v22 = self->_shadowLayer1;
  v5 = self->_shadowLayer2;
  v6 = +[PDFRenderingProperties isSolariumEnabled];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (shadowsCopy)
  {
    pageShadowMetrics = [objc_opt_class() pageShadowMetrics];
    if (!v6)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v9 = [pageShadowMetrics objectForKeyedSubscript:@"PageShadowsBorderOpacity"];
      [v9 doubleValue];
      v10 = [blackColor colorWithAlphaComponent:?];
      -[CALayer setBorderColor:](v22, "setBorderColor:", [v10 CGColor]);

      v11 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsBorderWidth"];
      [v11 doubleValue];
      [(CALayer *)v22 setBorderWidth:?];
    }

    v12 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOpacityShadow1"];
    [v12 doubleValue];
    *&v13 = v13;
    [(CALayer *)v22 setShadowOpacity:v13];

    v14 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsRadiusShadow1"];
    [v14 doubleValue];
    [(CALayer *)v22 setShadowRadius:?];

    v15 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOffsetShadow1"];
    [v15 doubleValue];
    [(CALayer *)v22 setShadowOffset:0.0, v16];

    v17 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOpacityShadow2"];
    [v17 doubleValue];
    *&v18 = v18;
    [(CALayer *)v5 setShadowOpacity:v18];

    v19 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsRadiusShadow2"];
    [v19 doubleValue];
    [(CALayer *)v5 setShadowRadius:?];

    v20 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOffsetShadow2"];
    [v20 doubleValue];
    [(CALayer *)v5 setShadowOffset:0.0, v21];
  }

  else
  {
    if (!v6)
    {
      [(CALayer *)v22 setBorderWidth:0.0];
    }

    [(CALayer *)v22 setShadowOpacity:0.0];
    [(CALayer *)v22 setShadowRadius:0.0];
    [(CALayer *)v5 setShadowOpacity:0.0];
    [(CALayer *)v5 setShadowRadius:0.0];
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)tileDrawingComplete:(id)complete
{
  v61 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = self->_tiles;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        if (([v12 isWorking] & 1) == 0)
        {
          v13 = v5;
          if (v12[30] < completeCopy[30] || (v14 = [v12 hasContent], v13 = v6, v14))
          {
            [v13 addObject:v12];
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v9);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v48 + 1) + 8 * j);
        if ([v6 count] && -[PDFPageLayer _isTile:occludedByTiles:](self, "_isTile:occludedByTiles:", v21, v6))
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v18);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  while ([v15 count])
  {
    lastObject = [v15 lastObject];
    [v15 removeLastObject];
    [lastObject removeFromSuperlayer];
    [(NSMutableArray *)self->_tiles removeObject:lastObject];
  }

  [MEMORY[0x1E6979518] commit];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = self->_tiles;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    while (2)
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v23);
        }

        contents = [*(*(&v44 + 1) + 8 * k) contents];

        if (!contents)
        {
          v29 = 0;
          goto LABEL_34;
        }
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v29 = 1;
LABEL_34:

  WeakRetained = objc_loadWeakRetained(&self->_page);
  v31 = WeakRetained;
  if (v29 && WeakRetained)
  {
    v56[1] = @"pageViewFrameInPDFView";
    v57[0] = WeakRetained;
    v56[0] = @"page";
    v32 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{self->_lastLayerFrameInRootView.origin.x, self->_lastLayerFrameInRootView.origin.y, self->_lastLayerFrameInRootView.size.width, self->_lastLayerFrameInRootView.size.height}];
    v57[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFPageDrawingComplete" object:self userInfo:v33];
  }

  if (GetDefaultsWriteLogPerfTimes())
  {
    document = [v31 document];
    v36 = [document indexForPage:v31];

    if (v29)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v39 = (v38 * 1000.0);

      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:self->_lastZoomChange];
      v42 = v41;

      NSLog(&cfstr_Pdfkit2Logperf_1.isa, v36, v39, v42);
    }

    NSLog(&cfstr_Pdfkit2Logperf_2.isa, v36, -[NSMutableArray count](self->_tiles, "count"), [v16 count], objc_msgSend(v6, "count"), context);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)_isTile:(id)tile occludedByTiles:(id)tiles
{
  v38 = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  tilesCopy = tiles;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = MEMORY[0x1E696B098];
  [(PDFPageLayer *)self _layerTileToRootViewBounds:tileCopy];
  v10 = [v9 PDFKitValueWithPDFRect:?];
  [v8 addObject:v10];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = tilesCopy;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDFPageLayer *)self _layerTileToRootViewBounds:*(*(&v33 + 1) + 8 * i), v33];
        if (v18 > 0.0001)
        {
          v20 = v19;
          if (v19 > 0.0001)
          {
            v21 = v16;
            v22 = v17;
            v23 = v18;
            if ([v8 count])
            {
              v24 = 0;
              do
              {
                v25 = [v8 objectAtIndex:0];
                [v8 removeObjectAtIndex:0];
                [v25 PDFKitPDFRectValue];
                v30 = [(PDFPageLayer *)self _subtractRectB:v21 fromRectA:v22, v23, v20, v26, v27, v28, v29];
                if (v30 || [0 count])
                {
                  [v8 addObjectsFromArray:v30];
                }

                ++v24;
              }

              while (v24 < [v8 count]);
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v31 = [v8 count] == 0;
  return v31;
}

- (id)_subtractRectB:(CGRect)b fromRectA:(CGRect)a
{
  height = a.size.height;
  width = a.size.width;
  y = a.origin.y;
  x = a.origin.x;
  v8 = b.size.height;
  v9 = b.size.width;
  v10 = b.origin.y;
  v11 = b.origin.x;
  v102[1] = *MEMORY[0x1E69E9840];
  v122.origin.x = v11;
  v122.origin.y = v10;
  v122.size.width = v9;
  v122.size.height = v8;
  if (!PDFRectIntersectsRect(a, v122))
  {
    v13 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{x, y, width, height}];
    v102[0] = v13;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:1];
LABEL_5:

    goto LABEL_6;
  }

  v105.origin.x = v11;
  v105.origin.y = v10;
  v105.size.width = v9;
  v105.size.height = v8;
  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  if (PDFRectContainsRect(v105, v123))
  {
    v12 = 0;
    goto LABEL_6;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  PDFPointMake();
  v16 = v15;
  v18 = v17;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v16, v18, v19, v20);
  v124.origin.x = v21;
  v124.origin.y = v22;
  v124.size.width = v23;
  v124.size.height = v24;
  v106.origin.x = x;
  v106.origin.y = y;
  v106.size.width = width;
  v106.size.height = height;
  v107 = PDFRectIntersection(v106, v124);
  if (v107.size.width > 0.0001 && v107.size.height > 0.0001)
  {
    v25 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v107.origin.x, v107.origin.y}];
    [v12 addObject:v25];
  }

  PDFPointMake();
  v27 = v26;
  v29 = v28;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v27, v29, v30, v31);
  v125.origin.x = v32;
  v125.origin.y = v33;
  v125.size.width = v34;
  v125.size.height = v35;
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  v109 = PDFRectIntersection(v108, v125);
  if (v109.size.width > 0.0001 && v109.size.height > 0.0001)
  {
    v36 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v109.origin.x, v109.origin.y}];
    [v12 addObject:v36];
  }

  PDFPointMake();
  v38 = v37;
  v40 = v39;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v38, v40, v41, v42);
  v126.origin.x = v43;
  v126.origin.y = v44;
  v126.size.width = v45;
  v126.size.height = v46;
  v110.origin.x = x;
  v110.origin.y = y;
  v110.size.width = width;
  v110.size.height = height;
  v111 = PDFRectIntersection(v110, v126);
  if (v111.size.width > 0.0001 && v111.size.height > 0.0001)
  {
    v47 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v111.origin.x, v111.origin.y}];
    [v12 addObject:v47];
  }

  PDFPointMake();
  v49 = v48;
  v51 = v50;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v49, v51, v52, v53);
  v127.origin.x = v54;
  v127.origin.y = v55;
  v127.size.width = v56;
  v127.size.height = v57;
  v112.origin.x = x;
  v112.origin.y = y;
  v112.size.width = width;
  v112.size.height = height;
  v113 = PDFRectIntersection(v112, v127);
  if (v113.size.width > 0.0001 && v113.size.height > 0.0001)
  {
    v58 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v113.origin.x, v113.origin.y}];
    [v12 addObject:v58];
  }

  PDFPointMake();
  v60 = v59;
  v62 = v61;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v60, v62, v63, v64);
  v128.origin.x = v65;
  v128.origin.y = v66;
  v128.size.width = v67;
  v128.size.height = v68;
  v114.origin.x = x;
  v114.origin.y = y;
  v114.size.width = width;
  v114.size.height = height;
  v115 = PDFRectIntersection(v114, v128);
  if (v115.size.width > 0.0001 && v115.size.height > 0.0001)
  {
    v69 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v115.origin.x, v115.origin.y}];
    [v12 addObject:v69];
  }

  PDFPointMake();
  v71 = v70;
  v73 = v72;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v71, v73, v74, v75);
  v129.origin.x = v76;
  v129.origin.y = v77;
  v129.size.width = v78;
  v129.size.height = v79;
  v116.origin.x = x;
  v116.origin.y = y;
  v116.size.width = width;
  v116.size.height = height;
  v117 = PDFRectIntersection(v116, v129);
  if (v117.size.width > 0.0001 && v117.size.height > 0.0001)
  {
    v80 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v117.origin.x, v117.origin.y}];
    [v12 addObject:v80];
  }

  PDFPointMake();
  v82 = v81;
  v84 = v83;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v82, v84, v85, v86);
  v130.origin.x = v87;
  v130.origin.y = v88;
  v130.size.width = v89;
  v130.size.height = v90;
  v118.origin.x = x;
  v118.origin.y = y;
  v118.size.width = width;
  v118.size.height = height;
  v119 = PDFRectIntersection(v118, v130);
  if (v119.size.width > 0.0001 && v119.size.height > 0.0001)
  {
    v91 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v119.origin.x, v119.origin.y}];
    [v12 addObject:v91];
  }

  PDFPointMake();
  v93 = v92;
  v95 = v94;
  PDFPointMake();
  PDFPageLayerTileRectFromPoints(v93, v95, v96, v97);
  v131.origin.x = v98;
  v131.origin.y = v99;
  v131.size.width = v100;
  v131.size.height = v101;
  v120.origin.x = x;
  v120.origin.y = y;
  v120.size.width = width;
  v120.size.height = height;
  v121 = PDFRectIntersection(v120, v131);
  if (v121.size.width > 0.0001 && v121.size.height > 0.0001)
  {
    v13 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v121.origin.x, v121.origin.y}];
    [v12 addObject:v13];
    goto LABEL_5;
  }

LABEL_6:

  return v12;
}

- (CGRect)_layerTileToRootViewBounds:(id)bounds
{
  boundsCopy = bounds;
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  [boundsCopy bounds];
  [boundsCopy convertRect:self toLayer:?];

  PDFRectFromCGRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PDFPageLayer *)self bounds];
  PDFRectFromCGRect();
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  v43 = PDFRectIntersection(v42, v47);
  [WeakRetained convertRectToRootView:self fromPageLayer:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [WeakRetained rootViewBounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extendedRootViewBounds];
    v23 = v30;
    v25 = v31;
    v27 = v32;
    v29 = v33;
  }

  v44.origin.x = v15;
  v44.origin.y = v17;
  v44.size.width = v19;
  v44.size.height = v21;
  v48.origin.x = v23;
  v48.origin.y = v25;
  v48.size.width = v27;
  v48.size.height = v29;
  v45 = PDFRectIntersection(v44, v48);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;

  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (CGRect)_pageLayerVisibleRect
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  [WeakRetained rootViewBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extendedRootViewBounds];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  [(PDFPageLayer *)self frame];
  PDFRectFromCGRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [WeakRetained convertRootViewRect:self toPageLayer:{v5, v7, v9, v11}];
  v39.origin.x = v24;
  v39.origin.y = v25;
  v39.size.width = v26;
  v39.size.height = v27;
  v36.origin.x = v17;
  v36.origin.y = v19;
  v36.size.width = v21;
  v36.size.height = v23;
  v37 = PDFRectIntersection(v36, v39);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (BOOL)_hasTileWithFrameInLayer:(CGRect)layer
{
  height = layer.size.height;
  width = layer.size.width;
  y = layer.origin.y;
  x = layer.origin.x;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_tiles;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * i) frame];
        PDFRectFromCGRect();
        if (vabdd_f64(v14, x) < 0.0001 && vabdd_f64(v11, y) < 0.0001 && vabdd_f64(v12, width) < 0.0001 && vabdd_f64(v13, height) < 0.0001)
        {
          LOBYTE(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v8;
}

- (void)_printRectsArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  NSLog(&cfstr_RectCountD.isa, [arrayCopy count]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = arrayCopy;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v8) PDFKitPDFRectValue];
        v13 = PDFRectToString(v9, v10, v11, v12);
        NSLog(&cfstr_Rectvalue.isa, v13);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_renderingPropertyUpdate:(id)update
{
  userInfo = [update userInfo];
  v4 = [userInfo objectForKey:@"PDFRenderingPropertyKey"];
  integerValue = [v4 integerValue];

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
    if ([WeakRetained enablePageShadows])
    {
      v7 = [WeakRetained isDarkMode] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [(PDFPageLayer *)self _setEnablePageShadows:v7];
  }

  if (integerValue == 7 || integerValue == 0)
  {
    [(PDFPageLayer *)self forceTileUpdate];
    [(PDFPageLayer *)self updatePageLayerEffects];
  }
}

- (void)_updateTiles
{
  v130 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  if (!self->_tileLayerHidden && self->_allowUpdate && [WeakRetained enableTileUpdates])
  {
    if ([(PDFPageLayer *)self isVisible]&& (GetDefaultsWriteDrawTiles() & 1) != 0)
    {
      isForcingUpdate = self->_isForcingUpdate;
      if (isForcingUpdate)
      {
        ++self->_generationCount;
      }

      v3 = objc_loadWeakRetained(&self->_page);
      [v3 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      oldPageRotation = self->_oldPageRotation;
      v111 = v3;
      if (oldPageRotation != [v3 rotation] || (v133.origin.x = v5, v133.origin.y = v7, v133.size.width = v9, v133.size.height = v11, !PDFRectEqualToRect(self->_oldBoundsForBox, v133)))
      {
        self->_oldPageRotation = [v3 rotation];
        self->_oldBoundsForBox.origin.x = v5;
        self->_oldBoundsForBox.origin.y = v7;
        self->_oldBoundsForBox.size.width = v9;
        self->_oldBoundsForBox.size.height = v11;
        [(PDFPageLayer *)self clearTiles];
      }

      v13 = objc_loadWeakRetained(&self->_geometryInterface);
      [v13 rootViewBounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if (objc_opt_respondsToSelector())
      {
        [v13 extendedRootViewBounds];
        v15 = v22;
        v17 = v23;
        v107 = v24;
        v21 = v25;
      }

      else
      {
        v107 = v19;
      }

      v26 = isForcingUpdate;
      [(PDFPageLayer *)self bounds];
      PDFRectFromCGRect();
      [v13 convertRectToRootView:self fromPageLayer:?];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v110 = +[PDFTilePool sharedPool];
      tileSurfaceSize = [v110 tileSurfaceSize];
      PDFRectMake();
      [v13 convertRootViewRect:self toPageLayer:?];
      v100 = tileSurfaceSize / v36;
      obj = tileSurfaceSize;
      if (vabdd_f64(self->_lastLayoutZoomFactor, tileSurfaceSize / v36) > 0.0001)
      {
        v37 = v30;
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:self->_lastZoomChange];
        v40 = v39;

        if (self->_lastZoomChange && v40 < self->_zoomGenerationDelay)
        {
          if (!self->_zoomChangeScheduled)
          {
            self->_zoomChangeScheduled = 1;
            objc_initWeak(&location, self);
            v41 = dispatch_time(0, (self->_zoomGenerationDelay * 1000000000.0));
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __28__PDFPageLayer__updateTiles__block_invoke;
            block[3] = &unk_1E8151400;
            objc_copyWeak(&v127, &location);
            dispatch_after(v41, MEMORY[0x1E69E96A0], block);
            objc_destroyWeak(&v127);
            objc_destroyWeak(&location);
          }

LABEL_69:

          goto LABEL_70;
        }

        self->_lastLayoutZoomFactor = v100;
        self->_lastLayerFrameInRootView.origin.x = v28;
        self->_lastLayerFrameInRootView.origin.y = v37;
        v30 = v37;
        self->_lastLayerFrameInRootView.size.width = v32;
        self->_lastLayerFrameInRootView.size.height = v34;
        ++self->_generationCount;
        date2 = [MEMORY[0x1E695DF00] date];
        lastZoomChange = self->_lastZoomChange;
        self->_lastZoomChange = date2;

        [(PDFPageLayer *)self updatePageLayerEffects];
        v26 = isForcingUpdate;
        tileSurfaceSize = obj;
      }

      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v28 < v15)
      {
        v45 = ((v15 - v28) / tileSurfaceSize);
      }

      else
      {
        v45 = 0;
      }

      if (v30 < v17)
      {
        v46 = ((v17 - v30) / tileSurfaceSize);
      }

      else
      {
        v46 = 0;
      }

      v47 = v21 + v17 - v30;
      v106 = v21;
      if (v34 <= v21)
      {
        v47 = v34;
      }

      v98 = (v47 / tileSurfaceSize);
      v99 = v45;
      if (v46 <= v98)
      {
        v48 = v107 + v15 - v28;
        if (v32 <= v107)
        {
          v48 = v32;
        }

        v97 = (v48 / tileSurfaceSize);
        v49 = MEMORY[0x1E695EFD0];
        v105 = v15;
        v104 = v17;
        do
        {
          if (v99 <= v97)
          {
            v50 = v99;
            do
            {
              PDFRectMake();
              x = v131.origin.x;
              y = v131.origin.y;
              width = v131.size.width;
              height = v131.size.height;
              v134.origin.x = v15;
              v134.origin.y = v17;
              v134.size.height = v106;
              v134.size.width = v107;
              if (PDFRectIntersectsRect(v131, v134))
              {
                PDFRectMake();
                v59 = v55;
                v60 = v56;
                v61 = v57;
                v62 = v58;
                if (v26 || ![(PDFPageLayer *)self _hasTileWithFrameInLayer:v55, v56, v57, v58])
                {
                  v102 = v49[1];
                  *&location.a = *v49;
                  v103 = *&location.a;
                  *&location.c = v102;
                  *&location.tx = v49[2];
                  v101 = *&location.tx;
                  CGAffineTransformMakeTranslation(&t2, -v59, -v60);
                  *&t1.a = v103;
                  *&t1.c = v102;
                  *&t1.tx = v101;
                  CGAffineTransformConcat(&location, &t1, &t2);
                  CGAffineTransformMakeScale(&t1, v100, v100);
                  v122 = location;
                  CGAffineTransformConcat(&t2, &v122, &t1);
                  location = t2;
                  v63 = [PDFPageLayerTile alloc];
                  generationCount = self->_generationCount;
                  t2 = location;
                  v100 = [(PDFPageLayerTile *)v63 initWithFrame:self forPageLayer:&t2 withRenderingTransform:generationCount tileContentsScale:v59 generationID:v60, v61, v62, v100];
                  [(PDFPageLayerTile *)v100 setRootViewFrame:x, y, width, height];
                  if ([v13 flipsTileContents])
                  {
                    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
                    [(PDFPageLayerTile *)v100 setAffineTransform:&t2];
                  }

                  [v44 addObject:v100];
                }
              }

              ++v50;
              v15 = v105;
              v17 = v104;
            }

            while (v97 + 1 != v50);
          }
        }

        while (v46++ != v98);
      }

      v67 = [(NSMutableArray *)self->_tiles sortedArrayUsingComparator:&__block_literal_global_215];
      v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      obja = v67;
      v69 = [obja countByEnumeratingWithState:&v118 objects:v129 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v119;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v119 != v71)
            {
              objc_enumerationMutation(obja);
            }

            v73 = *(*(&v118 + 1) + 8 * i);
            if (v73[30] >= self->_generationCount - 8 && (([*(*(&v118 + 1) + 8 * i) isWorking] & 1) != 0 || (objc_msgSend(v73, "hasContent") & 1) != 0 || v73[30] >= self->_generationCount))
            {
              [v73 bounds];
              [v73 convertRect:self toLayer:?];
              PDFRectFromCGRect();
              [v13 convertRectToRootView:self fromPageLayer:?];
              v135.origin.x = v15;
              v135.origin.y = v17;
              v135.size.width = v107;
              v135.size.height = v106;
              if (PDFRectIntersectsRect(v132, v135))
              {
                continue;
              }
            }

            [v68 addObject:v73];
          }

          v70 = [obja countByEnumeratingWithState:&v118 objects:v129 count:16];
        }

        while (v70);
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      while ([v68 count])
      {
        lastObject = [v68 lastObject];
        [v68 removeLastObject];
        [lastObject removeFromSuperlayer];
        [(NSMutableArray *)self->_tiles removeObject:lastObject];
      }

      [MEMORY[0x1E6979518] commit];
      [v13 rootViewBounds];
      CenterPoint = PDFRectGetCenterPoint(v75, v76, v77);
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __28__PDFPageLayer__updateTiles__block_invoke_3;
      v117[3] = &__block_descriptor_48_e47_q24__0__PDFPageLayerTile_8__PDFPageLayerTile_16l;
      *&v117[4] = CenterPoint;
      v117[5] = v79;
      v80 = [v44 sortedArrayUsingComparator:v117];
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v81 = v80;
      v82 = [v81 countByEnumeratingWithState:&v113 objects:v128 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v114;
        do
        {
          for (j = 0; j != v83; ++j)
          {
            if (*v114 != v84)
            {
              objc_enumerationMutation(v81);
            }

            v86 = *(*(&v113 + 1) + 8 * j);
            [(CALayer *)self->_tilesLayer addSublayer:v86];
            [(NSMutableArray *)self->_tiles addObject:v86];
            [v86 setZPosition:-800.0];
            v87 = *(v86 + 104);
            [v86 frame];
            PDFRectFromCGRect();
            v89 = v88;
            v91 = v90;
            ++_updateTiles_requestTag;
            v92 = *(v86 + 56);
            v93 = *(v86 + 88);
            *&location.c = *(v86 + 72);
            *&location.tx = v93;
            *&location.a = v92;
            [v110 requestPDFTileSurfaceForTarget:v86 forPage:v111 withRenderingProperties:WeakRetained atZoomFactor:&location frame:v87 transform:v89 tag:{v94, v91, v95}];
          }

          v83 = [v81 countByEnumeratingWithState:&v113 objects:v128 count:16];
        }

        while (v83);
      }

      [MEMORY[0x1E6979518] commit];
      if (isForcingUpdate)
      {
        self->_isForcingUpdate = 0;
      }

      goto LABEL_69;
    }

    self->_isForcingUpdate = 0;
    [(PDFPageLayer *)self _releaseTiles];
  }

LABEL_70:
}

void __28__PDFPageLayer__updateTiles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[208] = 0;
    v2 = WeakRetained;
    [WeakRetained _updateTiles];
    WeakRetained = v2;
  }
}

uint64_t __28__PDFPageLayer__updateTiles__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 120) < *(a3 + 120))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __28__PDFPageLayer__updateTiles__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 rootViewFrame];
  CenterPoint = PDFRectGetCenterPoint(v6, v7, v8);
  v11 = sqrt((v10 - *(a1 + 40)) * (v10 - *(a1 + 40)) + (CenterPoint - *(a1 + 32)) * (CenterPoint - *(a1 + 32)));
  [v5 rootViewFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = PDFRectGetCenterPoint(v13, v15, v17);
  if (v11 >= sqrt((v19 - *(a1 + 40)) * (v19 - *(a1 + 40)) + (v18 - *(a1 + 32)) * (v18 - *(a1 + 32))))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end