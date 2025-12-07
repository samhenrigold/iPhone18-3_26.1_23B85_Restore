@interface CSLOverviewHexLayout
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)hex;
- (CSLOverviewHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration;
- (Hex)hexAtPoint:(CGPoint)point;
- (void)updateConstants;
- (void)updateWithBounds:(CGRect)bounds;
- (void)updateWithNormalizedGraphQuadrantSize:(CGSize)size;
@end

@implementation CSLOverviewHexLayout

- (CSLOverviewHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration
{
  v4 = *&configuration[2].var2;
  v16 = *&configuration[1].var3;
  v17 = v4;
  v18 = *&configuration[3].var1;
  v5 = *&configuration->var4;
  v14 = *&configuration->var0;
  v15 = v5;
  v13.receiver = self;
  v13.super_class = CSLOverviewHexLayout;
  v6 = [(CSLHexLayout *)&v13 initWithConfiguration:&v14];
  if (v6)
  {
    v7 = [CSLUniformHexLayout alloc];
    v8 = *&configuration[2].var2;
    v16 = *&configuration[1].var3;
    v17 = v8;
    v18 = *&configuration[3].var1;
    v9 = *&configuration->var4;
    v14 = *&configuration->var0;
    v15 = v9;
    v10 = [(CSLUniformHexLayout *)v7 initWithConfiguration:&v14];
    uniformLayout = v6->_uniformLayout;
    v6->_uniformLayout = v10;

    v6->_constantsDirty = 1;
    v6->_normalizedGraphRadius = 7.0;
    v6->_fitsToQuadrantSize = 1;
    v6->_maxScale = 1.0;
    v6->_diameterScale = 1.0;
  }

  return v6;
}

- (void)updateWithBounds:(CGRect)bounds
{
  v3 = bounds.size.height * 0.5;
  if (bounds.size.width * 0.5 != self->_quadrantSize.width || v3 != self->_quadrantSize.height)
  {
    self->_quadrantSize.width = bounds.size.width * 0.5;
    self->_quadrantSize.height = v3;
    self->_constantsDirty = 1;
  }
}

- (void)updateWithNormalizedGraphQuadrantSize:(CGSize)size
{
  if (size.width != self->_normalizedGraphQuadrantSize.width || size.height != self->_normalizedGraphQuadrantSize.height)
  {
    self->_normalizedGraphQuadrantSize = size;
    self->_constantsDirty = 1;
  }
}

- (void)updateConstants
{
  if (!self->_constantsDirty)
  {
    return;
  }

  maxScale = self->_maxScale;
  self->_scale = maxScale;
  if (self->_fitsToQuadrantSize)
  {
    [(CSLUniformHexLayout *)self->_uniformLayout hexSideSize];
    *&v4 = v4;
    v5 = *&v4;
    v6 = (self->_normalizedGraphQuadrantSize.width + 1.0) * v5;
    v7 = (self->_normalizedGraphQuadrantSize.height + 1.0) * v5;
    width = self->_quadrantSize.width;
    if (width < v6)
    {
      height = self->_quadrantSize.height;
      v10 = v7;
LABEL_6:
      maxScale = width / v6;
      v11 = height / v10;
      if (maxScale >= v11)
      {
        maxScale = height / v10;
      }

      self->_scale = maxScale;
      goto LABEL_10;
    }

    v10 = v7;
    height = self->_quadrantSize.height;
    if (height < v10)
    {
      goto LABEL_6;
    }

    maxScale = self->_scale;
  }

LABEL_10:
  v12 = maxScale;
  v13 = self->_maxScale;
  if (v13 < v12)
  {
    v14 = v13;
    self->_scale = v14;
  }

  self->_constantsDirty = 0;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)hex
{
  v5 = v3;
  [(CSLOverviewHexLayout *)self updateConstants];
  v6 = 0uLL;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  uniformLayout = self->_uniformLayout;
  if (uniformLayout)
  {
    objc_msgSend_layoutAttributesForItemAtHex_(uniformLayout);
    v6 = *v5;
  }

  else
  {
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
  }

  v8 = vmulq_n_f32(v6, self->_scale);
  *v5 = v8;
  v9 = self->_diameterScale * v8.f32[2];
  *(v5 + 8) = v9;
  [(CSLHexLayout *)self scrolledPointFromContentPoint:vcvtq_f64_f32(*v8.f32)];
  v11 = v10;
  v13 = v12;
  *&v10 = v10;
  *(v5 + 8) = *(v5 + 8);
  LODWORD(v12) = LODWORD(v10);
  *&v10 = v13;
  HIDWORD(v12) = LODWORD(v10);
  *v5 = v12;
  v14.var0 = self->_falloffPercentage;
  if (v14.var0 > 0.0 && v14.var0 < 1.0)
  {
    v16 = 0.0;
    v17 = 0.0;
    if (CSLPRFGreater())
    {
      v17 = fabs(v11) / self->_quadrantSize.width;
    }

    if (CSLPRFGreater())
    {
      v16 = fabs(v13) / self->_quadrantSize.height;
    }

    v14.var0 = self->_falloffPercentage + (1.0 - self->_falloffPercentage) * (1.0 - sqrtf((v16 * v16) + (v17 * v17)));
    *&v14.var0 = v14.var0;
    *&v14.var0 = *(v5 + 8) * *&v14.var0;
    *(v5 + 8) = LODWORD(v14.var0);
  }

  return v14;
}

- (Hex)hexAtPoint:(CGPoint)point
{
  uniformLayout = self->_uniformLayout;
  [(CSLHexLayout *)self contentPointFromScrolledPoint:point.x / self->_scale, point.y / self->_scale];

  return [(CSLUniformHexLayout *)uniformLayout hexAtPoint:?];
}

@end