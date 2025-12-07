@interface KNLiveVideoMaskGeometry
- (BOOL)isEqual:(id)equal;
- (CGPoint)normalizedOffset;
- (CGRect)maskBounds;
- (CGRect)videoBoundsForNaturalSize:(CGSize)size;
- (CGRect)videoTextureRectForNaturalSize:(CGSize)size;
- (KNLiveVideoMaskGeometry)initWithMaskBounds:(CGRect)bounds scale:(double)scale normalizedOffset:(CGPoint)offset;
- (unint64_t)hash;
@end

@implementation KNLiveVideoMaskGeometry

- (KNLiveVideoMaskGeometry)initWithMaskBounds:(CGRect)bounds scale:(double)scale normalizedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = KNLiveVideoMaskGeometry;
  result = [(KNLiveVideoMaskGeometry *)&v13 init];
  if (result)
  {
    result->_maskBounds.origin.y = v10;
    result->_maskBounds.size.width = width;
    result->_maskBounds.size.height = height;
    result->_scale = scale;
    result->_normalizedOffset.x = x;
    result->_normalizedOffset.y = y;
    result->_maskBounds.origin.x = v11;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (-[KNLiveVideoMaskGeometry maskBounds](self, "maskBounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, [v5 maskBounds], v30.origin.x = v14, v30.origin.y = v15, v30.size.width = v16, v30.size.height = v17, v29.origin.x = v7, v29.origin.y = v9, v29.size.width = v11, v29.size.height = v13, CGRectEqualToRect(v29, v30)) && (-[KNLiveVideoMaskGeometry scale](self, "scale"), v19 = v18, objc_msgSend(v5, "scale"), v19 == v20))
  {
    [(KNLiveVideoMaskGeometry *)self normalizedOffset];
    v22 = v21;
    v24 = v23;
    [v5 normalizedOffset];
    v27 = v24 == v26 && v22 == v25;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v4 = MEMORY[0x277CCAE60];
  [(KNLiveVideoMaskGeometry *)self maskBounds];
  v19[0] = v5;
  v19[1] = v6;
  v19[2] = v7;
  v19[3] = v8;
  v9 = [v4 valueWithBytes:v19 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCABB0];
  [(KNLiveVideoMaskGeometry *)self scale];
  v11 = [v10 numberWithDouble:?];
  [v3 addObject:v11];

  v12 = MEMORY[0x277CCAE60];
  [(KNLiveVideoMaskGeometry *)self normalizedOffset];
  v18[0] = v13;
  v18[1] = v14;
  v15 = [v12 valueWithBytes:v18 objCType:"{CGPoint=dd}"];
  [v3 addObject:v15];

  hashValue = [v3 hashValue];
  return hashValue;
}

- (CGRect)videoBoundsForNaturalSize:(CGSize)size
{
  [(KNLiveVideoMaskGeometry *)self maskBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(KNLiveVideoMaskGeometry *)self normalizedOffset];
  v20 = v13;
  v21 = v12;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  CGRectGetWidth(v23);
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  CGRectGetHeight(v24);
  TSUFitOrFillSizeInSize();
  [(KNLiveVideoMaskGeometry *)self scale:v20];
  if (v14 > 1.0)
  {
    TSUMultiplySizeScalar();
  }

  TSUCenterOfRect();
  TSUAddPoints();
  TSURectWithCenterAndSize();

  MEMORY[0x2821EC598](v15);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)videoTextureRectForNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(KNLiveVideoMaskGeometry *)self maskBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(KNLiveVideoMaskGeometry *)self videoBoundsForNaturalSize:width, height];
  v15 = v14;
  v17 = v16;
  v29 = v19;
  v30 = v18;
  v20 = -v14;
  v21 = -v16;
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  CGRectOffset(v31, v20, v21);
  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.height = v29;
  v32.size.width = v30;
  CGRectOffset(v32, v20, v21);
  TSUNormalizedSubrectInRect();
  x = v33.origin.x;
  v23 = v33.size.width;
  v24 = v33.size.height;
  v25 = 1.0 - CGRectGetMaxY(v33);
  v26 = x;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v25;
  result.origin.x = v26;
  return result;
}

- (CGRect)maskBounds
{
  x = self->_maskBounds.origin.x;
  y = self->_maskBounds.origin.y;
  width = self->_maskBounds.size.width;
  height = self->_maskBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)normalizedOffset
{
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end