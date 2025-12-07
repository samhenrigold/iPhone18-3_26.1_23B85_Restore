@interface TSDCalligraphyStroke
- (CGAffineTransform)transformInContext:(SEL)context;
- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform;
- (CGRect)boundsForPath:(id)path;
- (CGRect)p_superBoundsForPath:(id)path;
- (TSDCalligraphyStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (double)horizontalMarginForSwatch;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
@end

@implementation TSDCalligraphyStroke

- (TSDCalligraphyStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v9.receiver = self;
  v9.super_class = TSDCalligraphyStroke;
  return [(TSDSmartStroke *)&v9 initWithName:@"Calligraphy" color:color width:*&cap cap:*&join join:pattern pattern:width miterLimit:limit];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableCalligraphyStroke alloc];
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_width(self, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_cap(self, v12, v13);
  v17 = objc_msgSend_join(self, v15, v16);
  v20 = objc_msgSend_pattern(self, v18, v19);
  objc_msgSend_miterLimit(self, v21, v22);
  v25 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(v4, v23, v7, v14, v17, v20, v11, v24);

  return v25;
}

- (CGRect)p_superBoundsForPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v7 boundsForPath:path];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)boundsForPath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_mutableCopy(self, v5, v6);
  objc_msgSend_setCap_(v7, v8, 2);
  objc_msgSend_setJoin_(v7, v9, 1);
  objc_msgSend_p_superBoundsForPath_(v7, v10, pathCopy);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGAffineTransform)transformInContext:(SEL)context
{
  v7 = MEMORY[0x277CBF2C0];
  v27 = *(MEMORY[0x277CBF2C0] + 16);
  v28 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v27;
  v26 = *(v7 + 32);
  *&retstr->tx = v26;
  CGContextGetCTM(&v30, a4);
  TSUTransformAngleInDegrees();
  v9 = v8;
  if (sub_2766488D0(a4))
  {
    v10 = -v9;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_276649154(a4);
  v12 = v10 - (v11 + sub_27664864C(a4));
  objc_msgSend_angle(self, v13, v14);
  v16 = v15 - v12;
  if (objc_msgSend_chisel(self, v17, v18))
  {
    v21 = *&retstr->c;
    *&v30.a = *&retstr->a;
    *&v30.c = v21;
    *&v30.tx = *&retstr->tx;
    return CGAffineTransformRotate(retstr, &v30, v16 * -3.14159265 / 180.0);
  }

  else
  {
    objc_msgSend_scale(self, v19, v20);
    *&v30.a = v28;
    *&v30.c = v27;
    *&v30.tx = v26;
    CGAffineTransformScale(retstr, &v30, 1.0, 1.0 / v23);
    v24 = *&retstr->c;
    *&v29.a = *&retstr->a;
    *&v29.c = v24;
    *&v29.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v30, &v29, v16 * 3.14159265 / 180.0);
    v25 = *&v30.c;
    *&retstr->a = *&v30.a;
    *&retstr->c = v25;
    *&retstr->tx = *&v30.tx;
  }

  return result;
}

- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  v5.receiver = self;
  v5.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v5 applyToContext:context insideStroke:stroke];
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  strokeCopy = stroke;
  if (objc_msgSend_shouldRender(self, a2, path, stroke, context, drawing, parameterized, order))
  {
    memset(&v37, 0, sizeof(v37));
    objc_msgSend_transformInContext_(self, v12, context);
    transform = v37;
    v13 = sub_2767B2030(path, &transform);
    CGContextSaveGState(context);
    objc_msgSend_applyToContext_insideStroke_(self, v14, context, strokeCopy);
    v35 = v37;
    CGAffineTransformInvert(&transform, &v35);
    CGContextConcatCTM(context, &transform);
    if (objc_msgSend_chisel(self, v15, v16))
    {
      v18 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v17, v13);
      objc_msgSend_width(self, v19, v20);
      objc_msgSend_setLineWidth_(v18, v21, v22);
      v25 = objc_msgSend_chisel(v18, v23, v24);
      v26 = v25;
      objc_msgSend_CGPath(v26, v27, v28);

      CGContextAddPathSafe();
      v31 = objc_msgSend_color(self, v29, v30);
      v34 = objc_msgSend_CGColor(v31, v32, v33);
      CGContextSetFillColorWithColor(context, v34);

      CGContextFillPath(context);
    }

    else
    {
      CGContextAddPathSafe();
      CGContextStrokePath(context);
    }

    CGPathRelease(v13);
    CGContextRestoreGState(context);
  }
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  y = point.y;
  x = point.x;
  endCopy = end;
  CGContextSaveGState(context);
  objc_msgSend_applyToContext_insideStroke_(self, v15, context, 0);
  memset(&v44, 0, sizeof(v44));
  objc_msgSend_transformInContext_(self, v16, context);
  v42 = v44;
  CGAffineTransformInvert(&transform, &v42);
  CGContextConcatCTM(context, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, x, y);
  t1 = transform;
  CGAffineTransformScale(&v42, &t1, scale, scale);
  transform = v42;
  t1 = v42;
  CGAffineTransformRotate(&v42, &t1, angle);
  transform = v42;
  objc_msgSend_endPoint(endCopy, v17, v18);
  v20 = -v19;
  objc_msgSend_endPoint(endCopy, v21, v22);
  t1 = transform;
  CGAffineTransformTranslate(&v42, &t1, v20, -v23);
  transform = v42;
  v26 = objc_msgSend_path(endCopy, v24, v25);
  v27 = v26;
  v30 = objc_msgSend_CGPath(v27, v28, v29);
  t1 = transform;
  v40 = v44;
  CGAffineTransformConcat(&v42, &t1, &v40);
  v31 = sub_2767B2030(v30, &v42);

  CGContextAddPathSafe();
  CGPathRelease(v31);
  if (objc_msgSend_isFilled(endCopy, v32, v33))
  {
    CGContextFillPath(context);
  }

  else
  {
    objc_msgSend_width(self, v34, v35);
    CGContextSetLineWidth(context, v36);
    v39 = objc_msgSend_lineJoin(endCopy, v37, v38);
    CGContextSetLineJoin(context, v39);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform
{
  y = point.y;
  x = point.x;
  v40.receiver = self;
  v40.super_class = TSDCalligraphyStroke;
  v12 = *&transform->c;
  v37 = *&transform->a;
  v38 = v12;
  v39 = *&transform->tx;
  endCopy = end;
  [(TSDStroke *)&v40 boundsForLineEnd:endCopy atPoint:&v37 atAngle:x withScale:y transform:angle, scale];
  v15 = v14;
  v17 = v16;
  width = v18;
  height = v20;
  isFilled = objc_msgSend_isFilled(endCopy, v22, v23, v37, v38, v39, v40.receiver, v40.super_class);

  if ((isFilled & 1) == 0)
  {
    objc_msgSend_width(self, v25, v26);
    v28 = v27 * -0.5;
    objc_msgSend_width(self, v29, v30);
    v32 = v31 * -0.5;
    v41.origin.x = v15;
    v41.origin.y = v17;
    v41.size.width = width;
    v41.size.height = height;
    v42 = CGRectInset(v41, v28, v32);
    v15 = v42.origin.x;
    v17 = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
  }

  v33 = v15;
  v34 = v17;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (double)horizontalMarginForSwatch
{
  v4.receiver = self;
  v4.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v4 horizontalMarginForSwatch];
  return v2 + 3.0;
}

@end