@interface CRLDropShadow
- (BOOL)isEqual:(id)equal;
- (CGImage)newShadowImageForRep:(id)rep withUnscaledSize:(CGSize)size viewScale:(double)scale drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (CRLDropShadow)initWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(id)color enabled:(BOOL)enabled;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newShadowClampedForSwatches;
- (unint64_t)hash;
@end

@implementation CRLDropShadow

- (CRLDropShadow)initWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(id)color enabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = CRLDropShadow;
  return [(CRLShadow *)&v9 i_initWithOpacity:color color:enabled angle:opacity offset:angle radius:offset enabled:radius];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = CRLDropShadow;
    v7 = [(CRLShadow *)&v9 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CRLDropShadow;
  return [(CRLShadow *)&v3 hash];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableDropShadow alloc];
  [(CRLShadow *)self angle];
  v6 = v5;
  [(CRLShadow *)self offset];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLShadow *)self opacity];
  v12 = v11;
  color = [(CRLShadow *)self color];
  v14 = [(CRLDropShadow *)v4 initWithAngle:color offset:[(CRLShadow *)self isEnabled] radius:v6 opacity:v8 color:v10 enabled:v12];

  return v14;
}

- (id)newShadowClampedForSwatches
{
  [(CRLShadow *)self radius];
  v4 = v3;
  [(CRLShadow *)self offset];
  v6 = v4 + v5;
  [(CRLShadow *)self radius];
  v8 = v7;
  [(CRLShadow *)self offset];
  v10 = v9;
  if (v6 > 10.0)
  {
    v8 = v8 * (10.0 / v6);
    v10 = v9 * (10.0 / v6);
  }

  v11 = [CRLDropShadow alloc];
  [(CRLShadow *)self angle];
  v13 = v12;
  [(CRLShadow *)self opacity];
  v15 = v14;
  color = [(CRLShadow *)self color];
  v17 = [(CRLDropShadow *)v11 initWithAngle:color offset:[(CRLShadow *)self isEnabled] radius:v13 opacity:v10 color:v8 enabled:v15];

  return v17;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  layout = [rep layout];
  [layout shadowedNaturalBoundsWithoutOffset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)boundsForRep:(id)rep
{
  layout = [rep layout];
  [layout shadowedNaturalBoundsWithoutOffset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGImage)newShadowImageForRep:(id)rep withUnscaledSize:(CGSize)size viewScale:(double)scale drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  repCopy = rep;
  v14 = fmin(scale, 1.0);
  v15 = sub_10011F340(width, height, v14);
  v18 = sub_100122154(v16, v15, v17);
  v20 = v19;
  v21.n128_f64[0] = sub_10011ECB4();
  v26 = sub_1001221E0(v21, v22, v23, v24, v25);
  Image = 0;
  if (v28 != 0.0)
  {
    v31 = v29;
    if (v29 != 0.0)
    {
      v32 = v26;
      v33 = v28;
      Image = 0;
      v34 = ceil(fmax(v18, v28));
      if (v34 > 0.0 && ceil(fmax(v20, v29)) > 0.0)
      {
        v35 = v27;
        color = [(CRLShadow *)self color];
        cGColor = [color CGColor];

        v38 = sub_10050DF80(11, v33, v31);
        if (v38)
        {
          v39 = v38;
          selectorCopy = selector;
          layout = [repCopy layout];
          v41 = layout;
          v42 = cGColor;
          if (layout)
          {
            objc_msgSend_transformInRoot(layout);
          }

          else
          {
            v82 = 0u;
            v83 = 0u;
            v81 = 0u;
          }

          v43 = sub_100139980(&v81);
          sub_10050F218(v39, v43);

          canvas = [repCopy canvas];
          isPrinting = [canvas isPrinting];
          canvas2 = [repCopy canvas];
          isDrawingIntoPDF = [canvas2 isDrawingIntoPDF];
          canvas3 = [repCopy canvas];
          [canvas3 contentsScale];
          sub_10050DE7C(v39, isPrinting, isDrawingIntoPDF, 1, 0, v49);

          [(CRLShadow *)self radius];
          v51 = v14 * v50;
          CGContextTranslateCTM(v39, -v32, -v35);
          CGContextTranslateCTM(v39, -(v34 + v14 * 10.0), -0.0);
          if (unflippedCopy)
          {
            v82 = 0u;
            v83 = 0u;
            v81 = 0u;
            layout2 = [repCopy layout];
            geometry = [layout2 geometry];
            v54 = geometry;
            if (geometry)
            {
              objc_msgSend_transform(geometry);
            }

            else
            {
              v82 = 0u;
              v83 = 0u;
              v81 = 0u;
            }

            if (sub_10011FBE4(*&v81, *&v82, *(&v81 + 1), *(&v82 + 1)) > 0.0)
            {
              transform.a = -1.0;
              transform.b = 0.0;
              transform.c = 0.0;
              transform.d = 1.0;
              transform.tx = v18;
              transform.ty = 0.0;
              CGContextConcatCTM(v39, &transform);
            }

            transform.b = 0.0;
            transform.c = 0.0;
            transform.a = 1.0;
            *&transform.d = xmmword_101464D00;
            transform.ty = v20;
            CGContextConcatCTM(v39, &transform);
          }

          v84.height = 0.0;
          v84.width = v34 + v14 * 10.0;
          CGContextSetShadowWithColor(v39, v84, v51, v42);
          CGContextTranslateCTM(v39, v51, v51);
          CGContextScaleCTM(v39, v14, v14);
          if ([repCopy canDrawShadowInOneStepWithChildren:1])
          {
            [repCopy performSelector:selectorCopy withObject:v39];
          }

          else
          {
            [repCopy naturalBounds];
            v56 = v55;
            v58 = v57;
            sub_10011ECB4();
            v60 = v59;
            v62 = v61;
            v63 = sub_100121E8C(v56, v58, 2048.0, 2048.0);
            if (v63 > 0.0 && v64 > 0.0)
            {
              v65 = v63 / v60;
              v66 = v64 / v62;
              v67 = CGLayerCreateWithContext(v39, *&v63, 0);
              Context = CGLayerGetContext(v67);
              layout3 = [repCopy layout];
              v70 = layout3;
              if (layout3)
              {
                objc_msgSend_transformInRoot(layout3);
              }

              else
              {
                v82 = 0u;
                v83 = 0u;
                v81 = 0u;
              }

              v71 = sub_100139980(&v81);
              sub_10050F218(Context, v71);

              canvas4 = [repCopy canvas];
              isPrinting2 = [canvas4 isPrinting];
              canvas5 = [repCopy canvas];
              isDrawingIntoPDF2 = [canvas5 isDrawingIntoPDF];
              canvas6 = [repCopy canvas];
              [canvas6 contentsScale];
              sub_10050DE7C(Context, isPrinting2, isDrawingIntoPDF2, 0, 0, v77);

              CGContextScaleCTM(Context, v65, v66);
              [repCopy performSelector:selectorCopy withObject:Context];
              sub_10050D814(Context);
              v85.origin.x = sub_10011ECB4();
              CGContextDrawLayerInRect(v39, v85, v67);
              CGLayerRelease(v67);
            }
          }

          Image = CGBitmapContextCreateImage(v39);
          sub_10050D814(v39);
          CGContextRelease(v39);
        }

        else
        {
          Image = 0;
        }
      }
    }
  }

  return Image;
}

@end