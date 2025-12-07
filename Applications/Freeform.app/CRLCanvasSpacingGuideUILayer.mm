@interface CRLCanvasSpacingGuideUILayer
- (CRLCanvasSpacingGuideUILayer)initWithSpacingRect:(CGRect)rect ofOrientation:(int)orientation icc:(id)icc useVisibleRect:(BOOL)visibleRect;
- (void)p_generateArrowLayerForSpacingRect:(CGRect)rect andViewScale:(double)scale;
- (void)setFrameFromSpacingRect:(CGRect)rect icc:(id)icc;
@end

@implementation CRLCanvasSpacingGuideUILayer

- (CRLCanvasSpacingGuideUILayer)initWithSpacingRect:(CGRect)rect ofOrientation:(int)orientation icc:(id)icc useVisibleRect:(BOOL)visibleRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  iccCopy = icc;
  v17.receiver = self;
  v17.super_class = CRLCanvasSpacingGuideUILayer;
  v13 = [(CRLCanvasSpacingGuideUILayer *)&v17 init];
  if (v13)
  {
    if (orientation)
    {
      +[CRLSwappableAxesGeometry swappedAxesGeometry];
    }

    else
    {
      +[CRLSwappableAxesGeometry standardAxesGeometry];
    }
    v14 = ;
    mHorizontalGeom = v13->mHorizontalGeom;
    v13->mHorizontalGeom = v14;

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CRLCanvasSpacingGuideUILayer *)v13 setFrameFromSpacingRect:iccCopy icc:x, y, width, height];
    +[CATransaction commit];
  }

  return v13;
}

- (void)setFrameFromSpacingRect:(CGRect)rect icc:(id)icc
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  iccCopy = icc;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (self->mUseVisibleRect)
  {
    [iccCopy visibleScaledRectForCanvasUI];
    v82 = v11;
    v83 = v10;
    v81 = v12;
    rect = v13;
  }

  else
  {
    v82 = CGRectNull.origin.y;
    v83 = CGRectNull.origin.x;
    v81 = CGRectNull.size.width;
    rect = CGRectNull.size.height;
  }

  [iccCopy viewScale];
  v80 = v14;
  CGAffineTransformMakeScale(&v85, v14, v14);
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  v87 = CGRectApplyAffineTransform(v86, &v85);
  v15 = v87.origin.x;
  v16 = v87.origin.y;
  v17 = v87.size.width;
  v18 = v87.size.height;
  mHorizontalGeom = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)mHorizontalGeom rectMinX:?];
  v21 = v20;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinY:v15, v16, v17, v18];
  [(CRLSwappableAxesGeometry *)mHorizontalGeom makePointWithX:v21 Y:v22];
  v24 = v23;
  v26 = v25;
  v27 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v27 rectMaxX:v15, v16, v17, v18];
  v29 = v28;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxY:v15, v16, v17, v18];
  [(CRLSwappableAxesGeometry *)v27 makePointWithX:v29 Y:v30];
  v32 = v31;
  v88.origin.y = v82;
  v88.origin.x = v83;
  v88.size.width = v81;
  v88.size.height = rect;
  if (!CGRectIsNull(v88))
  {
    v33 = self->mHorizontalGeom;
    [(CRLSwappableAxesGeometry *)v33 rectMinX:v15, v16, v17, v18];
    v78 = v34;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinY:v15, v16, v17, v18];
    v36 = v35;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinY:v83, v82, v81, rect];
    [(CRLSwappableAxesGeometry *)v33 makePointWithX:v78 Y:fmax(v36, v37)];
    v77 = v38;
    v79 = v39;
    v40 = self->mHorizontalGeom;
    [(CRLSwappableAxesGeometry *)v40 rectMaxX:v15, v16, v17, v18];
    v42 = v41;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxY:v15, v16, v17, v18];
    v44 = v43;
    v24 = v77;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxY:v83, v82, v81, rect];
    v46 = fmin(v44, v45);
    v47 = v42;
    v26 = v79;
    [(CRLSwappableAxesGeometry *)v40 makePointWithX:v47 Y:v46];
    v32 = v48;
  }

  v49 = sub_10011EC88(v24, v26, v32);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v56 rectMinX:?];
  v58 = v57;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMidY:v49, v51, v53, v55];
  v60 = v59 + 1.0 + -7.0 / v80;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:v49, v51, v53, v55];
  [(CRLSwappableAxesGeometry *)v56 makeRectWithX:v58 Y:v60 width:v61 height:15.0];
  v67 = sub_1001221E0(v62, v63, v64, v65, v66);
  v69 = v68;
  v71 = v70;
  v73 = v72;
  [(CRLCanvasSpacingGuideUILayer *)self setFrame:?];
  mWidth = self->mWidth;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:v67, v69, v71, v73];
  if (mWidth != v75)
  {
    [(CAShapeLayer *)self->mArrowLayer removeFromSuperlayer];
    [(CRLCanvasSpacingGuideUILayer *)self p_generateArrowLayerForSpacingRect:v67 andViewScale:v69, v71, v73, v80];
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:v67, v69, v71, v73];
    self->mWidth = v76;
  }

  +[CATransaction commit];
}

- (void)p_generateArrowLayerForSpacingRect:(CGRect)rect andViewScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_alloc_init(CAShapeLayer);
  mArrowLayer = self->mArrowLayer;
  self->mArrowLayer = v9;

  Mutable = CGPathCreateMutable();
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom makePointWithX:0.5 Y:0.5];
  v79 = v13;
  v80 = v12;
  mHorizontalGeom = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)mHorizontalGeom makePointWithX:1.5 Y:v15 * 0.5];
  v78 = v16;
  v71 = v17;
  v18 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v18 rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v18 makePointWithX:0.5 Y:v19 + -0.5];
  v76 = v21;
  v77 = v20;
  v22 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v22 rectWidth:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v22 makePointWithX:v23 + -0.5 Y:0.5];
  v74 = v25;
  v75 = v24;
  v26 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v26 rectWidth:x, y, width, height];
  v28 = v27 + -1.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v26 makePointWithX:v28 Y:v29 * 0.5];
  v72 = v31;
  v73 = v30;
  v32 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v32 rectWidth:x, y, width, height];
  v34 = v33 + -0.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v32 makePointWithX:v34 Y:v35 + -0.5];
  v69 = v37;
  v70 = v36;
  v38 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v38 rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v38 makePointWithX:5.5 Y:v39 * 0.5 + -3.0];
  v67 = v41;
  v68 = v40;
  v42 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v42 rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v42 makePointWithX:5.5 Y:v43 * 0.5 + 3.0];
  v65 = v45;
  v66 = v44;
  v46 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v46 rectWidth:x, y, width, height];
  v48 = v47 + -5.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v46 makePointWithX:v48 Y:v49 * 0.5 + -3.0];
  v63 = v51;
  v64 = v50;
  v52 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v52 rectWidth:x, y, width, height];
  v54 = v53 + -5.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v52 makePointWithX:v54 Y:v55 * 0.5 + 3.0];
  v61 = v57;
  v62 = v56;
  CGPathMoveToPoint(Mutable, 0, v80, v79);
  CGPathAddLineToPoint(Mutable, 0, v77, v76);
  CGPathMoveToPoint(Mutable, 0, v75, v74);
  CGPathAddLineToPoint(Mutable, 0, v70, v69);
  CGPathMoveToPoint(Mutable, 0, v78, v71);
  CGPathAddLineToPoint(Mutable, 0, v73, v72);
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:x, y, width, height];
  if (v58 * scale >= 14.0)
  {
    CGPathMoveToPoint(Mutable, 0, v68, v67);
    CGPathAddLineToPoint(Mutable, 0, v78, v71);
    CGPathAddLineToPoint(Mutable, 0, v66, v65);
    CGPathMoveToPoint(Mutable, 0, v64, v63);
    CGPathAddLineToPoint(Mutable, 0, v73, v72);
    CGPathAddLineToPoint(Mutable, 0, v62, v61);
  }

  [(CAShapeLayer *)self->mArrowLayer setFillColor:0];
  v59 = +[CRLCanvasGuideController guideColor];
  -[CAShapeLayer setStrokeColor:](self->mArrowLayer, "setStrokeColor:", [v59 CGColor]);

  [(CAShapeLayer *)self->mArrowLayer setLineCap:kCALineCapSquare];
  [(CAShapeLayer *)self->mArrowLayer setLineWidth:1.0];
  [(CAShapeLayer *)self->mArrowLayer setPath:Mutable];
  CGPathRelease(Mutable);
  v60 = self->mArrowLayer;

  [(CRLCanvasSpacingGuideUILayer *)self addSublayer:v60];
}

@end