@interface PUUserTransformTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)info;
- (CGRect)untransformedContentFrame;
- (CGSize)contentPixelSize;
- (PUUserTransformTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system;
- (UIEdgeInsets)chromeInsets;
- (double)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha transform:(double)transform zPosition:(uint64_t)position coordinateSystem:(uint64_t)system untransformedContentFrame:(_OWORD *)self0 chromeInsets:(uint64_t)self1 contentPixelSize:(double)self2 cropInsets:(double)self3;
- (double)initWithTileIdentifier:(uint64_t)identifier center:(_OWORD *)center size:(uint64_t)size alpha:(uint64_t)alpha transform:(uint64_t)transform zPosition:(uint64_t)position coordinateSystem:(double)system untransformedContentFrame:(double)self0 chromeInsets:(double)self1 contentPixelSize:(double)self2;
- (id)clone;
@end

@implementation PUUserTransformTileLayoutInfo

- (CGSize)contentPixelSize
{
  width = self->_contentPixelSize.width;
  height = self->_contentPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)chromeInsets
{
  top = self->_chromeInsets.top;
  left = self->_chromeInsets.left;
  bottom = self->_chromeInsets.bottom;
  right = self->_chromeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)untransformedContentFrame
{
  x = self->_untransformedContentFrame.origin.x;
  y = self->_untransformedContentFrame.origin.y;
  width = self->_untransformedContentFrame.size.width;
  height = self->_untransformedContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v36 = v6;
  v37 = v5;
  [(PUTileLayoutInfo *)self size];
  v34 = v8;
  v35 = v7;
  [(PUTileLayoutInfo *)self alpha];
  v33 = v9;
  objc_msgSend_transform(self);
  [(PUTileLayoutInfo *)self zPosition];
  v32 = v10;
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUUserTransformTileLayoutInfo *)self untransformedContentFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(PUUserTransformTileLayoutInfo *)self chromeInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(PUUserTransformTileLayoutInfo *)self contentPixelSize];
  v30 = [v3 initWithTileIdentifier:tileIdentifier center:v38 size:coordinateSystem alpha:v37 transform:v36 zPosition:v35 coordinateSystem:v34 untransformedContentFrame:v33 chromeInsets:v32 contentPixelSize:{v13, v15, v17, v19, v21, v23, v25, v27, v28, v29}];

  return v30;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = PUUserTransformTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v14, sel_isGeometryEqualToLayoutInfo_, infoCopy) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([infoCopy untransformedContentFrame], v15.origin.x = v5, v15.origin.y = v6, v15.size.width = v7, v15.size.height = v8, CGRectEqualToRect(self->_untransformedContentFrame, v15)) && (objc_msgSend(infoCopy, "chromeInsets"), PXEdgeInsetsEqualToEdgeInsets()))
  {
    p_contentPixelSize = &self->_contentPixelSize;
    [infoCopy contentPixelSize];
    v12 = p_contentPixelSize->height == v11 && p_contentPixelSize->width == v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha transform:(double)transform zPosition:(uint64_t)position coordinateSystem:(uint64_t)system untransformedContentFrame:(_OWORD *)self0 chromeInsets:(uint64_t)self1 contentPixelSize:(double)self2 cropInsets:(double)self3
{
  v33.receiver = self;
  v33.super_class = PUUserTransformTileLayoutInfo;
  v29 = frame[1];
  v32[0] = *frame;
  v32[1] = v29;
  v32[2] = frame[2];
  v30 = objc_msgSendSuper2(&v33, sel_initWithTileIdentifier_center_size_alpha_cornerRadius_cornerCurve_cornerMask_borderWidth_borderColor_transform_zPosition_contentsRect_hitTestOutset_coordinateSystem_cropInsets_normalizedLegibilityInsets_, system, 0, 0, 0, v32, insets, a2, identifier, center, size, alpha, 0.0, 0.0, transform, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), a27, a28, a29, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  if (v30)
  {
    result = a26;
    *(v30 + 42) = a17;
    *(v30 + 43) = a18;
    *(v30 + 44) = a19;
    *(v30 + 45) = a20;
    *(v30 + 46) = a21;
    *(v30 + 47) = a22;
    *(v30 + 48) = a23;
    *(v30 + 49) = a24;
    *(v30 + 40) = a25;
    v30[41] = a26;
  }

  return result;
}

- (double)initWithTileIdentifier:(uint64_t)identifier center:(_OWORD *)center size:(uint64_t)size alpha:(uint64_t)alpha transform:(uint64_t)transform zPosition:(uint64_t)position coordinateSystem:(double)system untransformedContentFrame:(double)self0 chromeInsets:(double)self1 contentPixelSize:(double)self2
{
  v30.receiver = self;
  v30.super_class = PUUserTransformTileLayoutInfo;
  v26 = center[1];
  v29[0] = *center;
  v29[1] = v26;
  v29[2] = center[2];
  v27 = objc_msgSendSuper2(&v30, sel_initWithTileIdentifier_center_size_alpha_transform_zPosition_coordinateSystem_, identifier, v29, size, alpha, transform, position, system, frame, insets, pixelSize, a13, a14);
  if (v27)
  {
    result = a26;
    *(v27 + 42) = a17;
    *(v27 + 43) = a18;
    *(v27 + 44) = a19;
    *(v27 + 45) = a20;
    *(v27 + 46) = a21;
    *(v27 + 47) = a22;
    *(v27 + 48) = a23;
    *(v27 + 49) = a24;
    *(v27 + 40) = a25;
    v27[41] = a26;
  }

  return result;
}

- (PUUserTransformTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system
{
  v9 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v9;
  v11[2] = *&transform->tx;
  return [(PUUserTransformTileLayoutInfo *)self initWithTileIdentifier:identifier center:v11 size:system alpha:center.x transform:center.y zPosition:size.width coordinateSystem:size.height untransformedContentFrame:alpha chromeInsets:position contentPixelSize:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

@end