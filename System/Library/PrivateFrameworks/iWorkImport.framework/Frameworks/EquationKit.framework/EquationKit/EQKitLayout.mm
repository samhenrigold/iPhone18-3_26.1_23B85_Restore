@interface EQKitLayout
- (CGRect)erasableBounds;
- (CGSize)naturalSize;
- (EQKitLayout)initWithRoot:(id)root environment:(id)environment;
- (EQKitLayout)layoutWithContext:(id)context;
- (NSString)description;
- (double)depth;
- (double)height;
- (double)vsize;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitLayout

- (EQKitLayout)initWithRoot:(id)root environment:(id)environment
{
  v8.receiver = self;
  v8.super_class = EQKitLayout;
  v6 = [(EQKitLayout *)&v8 init];
  if (v6)
  {
    v6->mRoot = root;
    v6->mEnvironment = environment;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitLayout;
  [(EQKitLayout *)&v3 dealloc];
}

- (EQKitLayout)layoutWithContext:(id)context
{
  self->mBox = 0;
  self->mScale = 1.0;
  if (context)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return (self->mBox != 0);
    }

    attributeCollection = [(EQKitRootNode *)self->mRoot attributeCollection];
    if (!attributeCollection)
    {
      return (self->mBox != 0);
    }

    [(EQKitEnvironmentInstance *)self->mEnvironment beginLayout];
    sub_275CA30B4(v30, context, self->mEnvironment, attributeCollection);
    mBox = sub_275CA388C(v30, self->mRoot, &self->mAscent, &self->mDescent, &self->mLeading, &self->mNaturalAlignmentOffset, &self->mSingleLineHeight);
    self->mBox = mBox;
    if (self->mSingleLineHeight)
    {
      v7 = self->mAscent + self->mDescent;
    }

    else
    {
      [(EQKitBox *)mBox height];
      mAscent = self->mAscent;
      if (v8 + self->mLeading * 0.5 > mAscent)
      {
        [(EQKitBox *)self->mBox height];
        mAscent = v10 + self->mLeading * 0.5;
      }

      [(EQKitBox *)self->mBox depth];
      mDescent = self->mDescent;
      if (v12 + self->mLeading * 0.5 > mDescent)
      {
        [(EQKitBox *)self->mBox depth];
        mDescent = v13 + self->mLeading * 0.5;
      }

      v7 = mAscent + mDescent;
      mBox = self->mBox;
    }

    [(EQKitBox *)mBox width];
    if (v14 > 0.0 && v7 > 0.0)
    {
      [context targetSize];
      v17 = v16;
      if (v16 <= 0.0 || (v18 = v15, v15 <= 0.0))
      {
        [context containerSize];
        v25 = v24;
        if (v24 <= 0.0)
        {
          goto LABEL_20;
        }

        v26 = v23;
        if (v23 <= 0.0)
        {
          goto LABEL_20;
        }

        [(EQKitBox *)self->mBox width];
        *&v27 = v25 / v27;
        v20 = fminf(*&v27, 1.0);
        v22 = v26 / v7;
      }

      else
      {
        [(EQKitBox *)self->mBox erasableBounds];
        v20 = v17 / v19;
        v22 = v18 / v21;
      }

      v28 = v22;
      self->mScale = fminf(v20, v28);
    }

LABEL_20:
    [(EQKitEnvironmentInstance *)self->mEnvironment endLayout];
    sub_275CA314C(v30);
    return (self->mBox != 0);
  }

  return 0;
}

- (double)height
{
  if (self->mSingleLineHeight)
  {
    mAscent = self->mAscent;
  }

  else
  {
    [(EQKitBox *)self->mBox height];
    v5 = v4 + self->mLeading * 0.5;
    mAscent = self->mAscent;
    if (v5 > mAscent)
    {
      [(EQKitBox *)self->mBox height];
      mAscent = v6 + self->mLeading * 0.5;
    }
  }

  return mAscent * self->mScale;
}

- (double)depth
{
  if (self->mSingleLineHeight)
  {
    mDescent = self->mDescent;
  }

  else
  {
    [(EQKitBox *)self->mBox depth];
    mDescent = self->mDescent;
    if (v4 + self->mLeading * 0.5 > mDescent)
    {
      [(EQKitBox *)self->mBox depth];
      mDescent = v5 + self->mLeading * 0.5;
    }
  }

  return mDescent * self->mScale;
}

- (double)vsize
{
  [(EQKitLayout *)self height];
  v4 = v3;
  [(EQKitLayout *)self depth];
  return v4 + v5;
}

- (CGRect)erasableBounds
{
  mBox = self->mBox;
  if (mBox)
  {
    [(EQKitBox *)mBox erasableBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    CGAffineTransformMakeScale(&v12, self->mScale, self->mScale);
    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    return CGRectApplyAffineTransform(v13, &v12);
  }

  else
  {
    return **&MEMORY[0x277CBF3A0];
  }
}

- (CGSize)naturalSize
{
  [(EQKitLayout *)self erasableBounds];
  v4 = v3;
  v6 = v5;
  [(EQKitLayout *)self width];
  if (v7 > v4)
  {
    [(EQKitLayout *)self width];
    v4 = v8;
  }

  [(EQKitLayout *)self height];
  v10 = v9;
  [(EQKitLayout *)self depth];
  if (v10 + v11 > v6)
  {
    [(EQKitLayout *)self height];
    v13 = v12;
    [(EQKitLayout *)self depth];
    v6 = v13 + v14;
  }

  v15 = v4 + 2.0;
  v16 = v6 + 2.0;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  CGContextSaveGState(context);
  CGContextScaleCTM(context, self->mScale, self->mScale);
  CGAffineTransformMakeScale(&v8, 1.0 / self->mScale, 1.0 / self->mScale);
  [(EQKitBox *)self->mBox renderIntoContext:context offset:vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, y), *&v8.a, x))];
  CGContextRestoreGState(context);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p box=%@>", NSStringFromClass(v4), self, self->mBox];
}

@end