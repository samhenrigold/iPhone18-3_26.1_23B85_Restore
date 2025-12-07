@interface TSDDropShadow
- (BOOL)isEqual:(id)equal;
- (CGImage)newShadowImageForRep:(id)rep withSize:(CGSize)size drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (TSDDropShadow)initWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)object;
@end

@implementation TSDDropShadow

- (TSDDropShadow)initWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(CGColor *)color enabled:(BOOL)enabled
{
  v16.receiver = self;
  v16.super_class = TSDDropShadow;
  v11 = [(TSDShadow *)&v16 i_initWithOpacity:color color:enabled enabled:opacity];
  if (v11)
  {
    TSDNormalizeAngleInDegrees(angle);
    v11->super.mAngle = v12;
    [(TSDShadow *)v11 clampOffset:offset];
    v11->super.mOffset = v13;
    [(TSDShadow *)v11 clampRadius:radius];
    v11->super.mRadius = v14;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v9 = v3;
  v10 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = TSDDropShadow;
  return [(TSDShadow *)&v8 isEqual:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDDropShadow allocWithZone:zone];
  [(TSDShadow *)self angle];
  v6 = v5;
  [(TSDShadow *)self offset];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v4 initWithAngle:color offset:isEnabled radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableDropShadow allocWithZone:zone];
  [(TSDShadow *)self angle];
  v6 = v5;
  [(TSDShadow *)self offset];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v4 initWithAngle:color offset:isEnabled radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (id)newShadowClampedForSwatches
{
  [(TSDShadow *)self radius];
  v4 = v3;
  [(TSDShadow *)self offset];
  v6 = v4 + v5;
  [(TSDShadow *)self radius];
  v8 = v7;
  [(TSDShadow *)self offset];
  v10 = v9;
  if (v6 > 10.0)
  {
    v8 = v8 * (10.0 / v6);
    v10 = v9 * (10.0 / v6);
  }

  v11 = [TSDDropShadow alloc];
  [(TSDShadow *)self angle];
  v13 = v12;
  [(TSDShadow *)self opacity];
  v15 = v14;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v11 initWithAngle:color offset:isEnabled radius:v13 opacity:v10 color:v8 enabled:v15];
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  styledLayout = [rep styledLayout];

  [styledLayout shadowedNaturalBoundsWithoutOffset];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForRep:(id)rep
{
  styledLayout = [rep styledLayout];

  [styledLayout shadowedNaturalBoundsWithoutOffset];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGImage)newShadowImageForRep:(id)rep withSize:(CGSize)size drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  unflippedCopy = unflipped;
  v10 = TSDRoundedSize(self, size.width, size.height);
  v12 = v11;
  v13 = TSDRectWithSize();
  v18 = TSDRoundedRect(v14, v13, v15, v16, v17);
  Image = 0;
  if (v20 != 0.0 && v21 != 0.0)
  {
    v23 = v18;
    v24 = v20;
    v25 = vcvtpd_u64_f64(fmax(v10, v20));
    v26 = vcvtpd_u64_f64(fmax(v12, v21));
    if (v25)
    {
      v27 = v26 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }

    v28 = v19;
    color = [(TSDShadow *)self color];
    v30 = TSDBitmapContextCreate(11, v24);
    if (!v30)
    {
      return 0;
    }

    else
    {
      v31 = v30;
      layout = [rep layout];
      if (layout)
      {
        objc_msgSend_transformInRoot(layout);
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
      }

      v33 = TSDTransformAngle(&v59);
      TSDSetCGContextInfoForShadowContext(v31, v33);
      [(TSDShadow *)self radius];
      v35 = v34;
      CGContextTranslateCTM(v31, -v23, -v28);
      CGContextTranslateCTM(v31, -(v25 + 10.0), -0.0);
      if (unflippedCopy)
      {
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        v36 = [objc_msgSend(rep "layout")];
        if (v36)
        {
          objc_msgSend_transform(v36);
          v38 = *(&v59 + 1);
          v37 = *&v59;
          v40 = *(&v60 + 1);
          v39 = *&v60;
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
          v40 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v37 = 0.0;
          v59 = 0u;
        }

        if (TSDCrossPoints(v37, v39, v38, v40) > 0.0)
        {
          v58.a = -1.0;
          v58.b = 0.0;
          v58.c = 0.0;
          v58.d = 1.0;
          v58.tx = v10;
          v58.ty = 0.0;
          CGContextConcatCTM(v31, &v58);
        }

        v58.b = 0.0;
        v58.c = 0.0;
        v58.a = 1.0;
        *&v58.d = xmmword_26CA65110;
        v58.ty = v12;
        CGContextConcatCTM(v31, &v58);
      }

      v62.height = 0.0;
      v62.width = (v25 + 10.0);
      CGContextSetShadowWithColor(v31, v62, v35, color);
      CGContextTranslateCTM(v31, v35, v35);
      if ([rep canDrawShadowInOneStepWithChildren:1])
      {
        [rep performSelector:selector withObject:v31];
      }

      else
      {
        [rep naturalBounds];
        v42 = v41;
        v44 = v43;
        TSDRectWithSize();
        v46 = v45;
        v48 = v47;
        v49 = TSDShrinkSizeToFitInSize(v42, v44, 2048.0, 2048.0);
        if (v49 > 0.0 && v50 > 0.0)
        {
          v51 = v49 / v46;
          v52 = v50 / v48;
          v53 = CGLayerCreateWithContext(v31, *&v49, 0);
          Context = CGLayerGetContext(v53);
          layout2 = [rep layout];
          if (layout2)
          {
            objc_msgSend_transformInRoot(layout2);
          }

          else
          {
            v60 = 0u;
            v61 = 0u;
            v59 = 0u;
          }

          v56 = TSDTransformAngle(&v59);
          TSDSetCGContextInfoForShadowContext(Context, v56);
          CGContextScaleCTM(Context, v51, v52);
          [rep performSelector:selector withObject:Context];
          TSDClearCGContextInfo(Context);
          v63.origin.x = TSDRectWithSize();
          CGContextDrawLayerInRect(v31, v63, v53);
          CGLayerRelease(v53);
        }
      }

      Image = CGBitmapContextCreateImage(v31);
      TSDClearCGContextInfo(v31);
      CGContextRelease(v31);
    }
  }

  return Image;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDDropShadow_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __38__TSDDropShadow_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (v2 && ((v3 = v2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [*(a1 + 40) radius];
    v5 = v4;
    [v3 radius];
    if (vabdd_f64(v5, v6) >= 0.00999999978)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (!v8)
    {
      return 1;
    }

    v9 = v8;
    if ([*(a1 + 40) isEnabled] && (objc_msgSend(v9, "isEnabled") & 1) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSDDropShadow_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDDropShadow *__50__TSDDropShadow_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [*(a1 + 40) angle];
  v4 = v3;
  if (v2)
  {
    [v2 angle];
    TSDMixAnglesInDegrees(v4, v5, *(a1 + 48));
    v4 = v6;
    [*(a1 + 40) offset];
    [v2 offset];
    TSUMix();
    v8 = v7;
    [*(a1 + 40) radius];
    [v2 radius];
    TSUMix();
    v10 = round(v9);
    [*(a1 + 40) opacity];
    [v2 opacity];
  }

  else
  {
    [*(a1 + 40) offset];
    v8 = v11;
    [*(a1 + 40) radius];
    v10 = v12;
    [*(a1 + 40) opacity];
  }

  TSUMix();
  v14 = v13;
  v15 = [MEMORY[0x277D6C2A8] colorWithCGColor:{objc_msgSend(*(a1 + 40), "color")}];
  if (v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = [v15 blendedColorWithFraction:objc_msgSend(MEMORY[0x277D6C2A8] ofColor:{"colorWithCGColor:", objc_msgSend(v16, "color")), *(a1 + 48)}];
  if ([*(a1 + 40) isEnabled])
  {
    v18 = 1;
  }

  else
  {
    v18 = [v2 isEnabled];
  }

  v19 = -[TSDDropShadow initWithAngle:offset:radius:opacity:color:enabled:]([TSDDropShadow alloc], "initWithAngle:offset:radius:opacity:color:enabled:", [v17 CGColor], v18, v4, v8, v10, v14);

  return v19;
}

@end