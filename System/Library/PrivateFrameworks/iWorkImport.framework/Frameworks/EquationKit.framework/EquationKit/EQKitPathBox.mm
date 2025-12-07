@interface EQKitPathBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitPathBox)initWithCGPath:(CGPath *)path height:(double)height paddingLeft:(double)left paddingRight:(double)right cgColor:(CGColor *)color drawingMode:(int)mode lineWidth:(double)width;
- (double)depth;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitPathBox

- (EQKitPathBox)initWithCGPath:(CGPath *)path height:(double)height paddingLeft:(double)left paddingRight:(double)right cgColor:(CGColor *)color drawingMode:(int)mode lineWidth:(double)width
{
  v20.receiver = self;
  v20.super_class = EQKitPathBox;
  v16 = [(EQKitPathBox *)&v20 init];
  if (v16)
  {
    if (path)
    {
      v17 = MEMORY[0x277C8C900](path);
    }

    else
    {
      v17 = 0;
    }

    v16->mCGPath = v17;
    v16->mHeight = height;
    v16->mPaddingLeft = left;
    v16->mPaddingRight = right;
    if (color)
    {
      v18 = CFRetain(color);
    }

    else
    {
      v18 = 0;
    }

    v16->mCGColor = v18;
    v16->mDrawingMode = mode;
    v16->mLineWidth = width;
  }

  return v16;
}

- (void)dealloc
{
  CGPathRelease(self->mCGPath);
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = EQKitPathBox;
  [(EQKitPathBox *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(EQKitPathBox *)self cgPath];
  [(EQKitPathBox *)self height];
  [(EQKitPathBox *)self paddingLeft];
  [(EQKitPathBox *)self paddingRight];
  [(EQKitPathBox *)self color];
  [(EQKitPathBox *)self drawingMode];
  [(EQKitPathBox *)self lineWidth];

  return MEMORY[0x2821F9670](v4, sel_initWithCGPath_height_paddingLeft_paddingRight_cgColor_drawingMode_lineWidth_);
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      LODWORD(self) = [equal isMemberOfClass:objc_opt_class()];
      if (self)
      {
        [(EQKitPathBox *)selfCopy height];
        v7 = v6;
        [equal height];
        if (v7 != v8)
        {
          goto LABEL_16;
        }

        [(EQKitPathBox *)selfCopy paddingLeft];
        v10 = v9;
        [equal paddingLeft];
        if (v10 != v11)
        {
          goto LABEL_16;
        }

        [(EQKitPathBox *)selfCopy paddingRight];
        v13 = v12;
        [equal paddingRight];
        if (v13 != v14)
        {
          goto LABEL_16;
        }

        LODWORD(self) = CGColorEqualToColor(-[EQKitPathBox color](selfCopy, "color"), [equal color]);
        if (!self)
        {
          return self;
        }

        drawingMode = [(EQKitPathBox *)selfCopy drawingMode];
        if (drawingMode != [equal drawingMode] || (-[EQKitPathBox lineWidth](selfCopy, "lineWidth"), v17 = v16, objc_msgSend(equal, "lineWidth"), v17 != v18))
        {
LABEL_16:
          LOBYTE(self) = 0;
          return self;
        }

        cgPath = [(EQKitPathBox *)selfCopy cgPath];
        self = [equal cgPath];
        if (cgPath == self)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          selfCopy2 = self;
          LOBYTE(self) = 0;
          if (cgPath && selfCopy2)
          {

            LOBYTE(self) = CGPathEqualToPath(cgPath, selfCopy2);
          }
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitPathBox;
  return [(EQKitBox *)&v3 hash];
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    [(EQKitPathBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    [(EQKitPathBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mWidth;
}

- (CGRect)erasableBounds
{
  if (self->mErasableBoundsValid)
  {
    x = self->mErasableBounds.origin.x;
    y = self->mErasableBounds.origin.y;
    width = self->mErasableBounds.size.width;
    height = self->mErasableBounds.size.height;
  }

  else
  {
    [(EQKitPathBox *)self p_cacheErasableBounds];
    self->mErasableBounds.origin.x = x;
    self->mErasableBounds.origin.y = y;
    self->mErasableBounds.size.width = width;
    self->mErasableBounds.size.height = height;
    self->mErasableBoundsValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  if (context && self->mCGPath)
  {
    y = offset.y;
    x = offset.x;
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, x + self->mPaddingLeft, y - self->mHeight);
    CGContextAddPath(context, self->mCGPath);
    mCGColor = self->mCGColor;
    if (mCGColor)
    {
      CGContextSetFillColorWithColor(context, mCGColor);
      CGContextSetStrokeColorWithColor(context, self->mCGColor);
    }

    CGContextSetLineWidth(context, self->mLineWidth);
    CGContextDrawPath(context, self->mDrawingMode);

    CGContextRestoreGState(context);
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    sub_275CD836C(spec, mCGPath, offset.x + self->mPaddingLeft, offset.y - self->mHeight);
  }

  return mCGPath != 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitPathBox *)self height];
  v6 = v5;
  [(EQKitPathBox *)self depth];
  v8 = v7;
  [(EQKitPathBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

- (void)p_cacheDimensions
{
  self->mDepth = 0.0;
  self->mWidth = 0.0;
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(mCGPath);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (!CGRectIsEmpty(PathBoundingBox))
    {
      v11.origin.x = x;
      v11.origin.y = y;
      v11.size.width = width;
      v11.size.height = height;
      v8 = CGRectGetHeight(v11);
      [(EQKitPathBox *)self height];
      self->mDepth = v8 - v9;
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      self->mWidth = CGRectGetWidth(v12) + self->mPaddingLeft + self->mPaddingRight;
    }
  }
}

- (CGRect)p_cacheErasableBounds
{
  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(mCGPath);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (!CGRectIsEmpty(PathBoundingBox))
    {
      [(EQKitPathBox *)self height];
      v3 = y - v12;
      v4 = x + self->mPaddingLeft;
      v5 = width;
      v6 = height;
    }
  }

  v13 = v4;
  v14 = v3;
  v15 = v5;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end