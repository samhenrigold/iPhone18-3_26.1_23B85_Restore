@interface CRBoxLayer
+ (id)layer;
- (CRBoxLayer)init;
- (CRBoxLayer)initWithCodeFrameRatio:(double)ratio;
- (void)addCompletionBlock:(id)block;
- (void)animateConceal;
- (void)animatePulseColor:(id)color;
- (void)animateReveal;
- (void)animateToPosition:(CGPoint)position transform:(CATransform3D *)transform opacity:(double)opacity type:(int64_t)type;
- (void)dealloc;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)positionForCodeBoxPoints:(id)points;
- (void)setFrameRatio:(double)ratio;
- (void)setString:(id)string mirrored:(BOOL)mirrored inverted:(BOOL)inverted;
@end

@implementation CRBoxLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRBoxLayer)init
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults BOOLForKey:?];
  [(CRBoxLayer *)self setDemoSpeed:?];

  return [(CRBoxLayer *)self initWithCodeFrameRatio:?];
}

- (CRBoxLayer)initWithCodeFrameRatio:(double)ratio
{
  v6.receiver = self;
  v6.super_class = CRBoxLayer;
  v3 = [(CAReplicatorLayer *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(CRBoxLayer *)v3 setFrameRatio:?];
    v4->_customInit = 1;
    [CRBoxLayer addObserver:v4 forKeyPath:"addObserver:forKeyPath:options:context:" options:? context:?];
  }

  return v4;
}

- (void)setFrameRatio:(double)ratio
{
  if (self->_frameRatio != ratio)
  {
    self->_frameRatio = ratio;
    [(CRBoxLayer *)self frameRatio];
    v5 = [CRColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
    [v5 CGColor];

    [(CRBoxLayer *)self setBounds:?];
    [(CRBoxLayer *)self setShadowColor:?];
    [(CRBoxLayer *)self setHidden:?];
    [(CAReplicatorLayer *)self setInstanceCount:?];
    reticleLayer = [(CRBoxLayer *)self reticleLayer];

    if (!reticleLayer)
    {
      layer = [MEMORY[0x277CD9F90] layer];
      [(CRBoxLayer *)self setReticleLayer:?];

      reticleLayer2 = [(CRBoxLayer *)self reticleLayer];
      [(CRBoxLayer *)self addSublayer:?];
    }

    [(CRBoxLayer *)self bounds];
    reticleLayer3 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer3 setBounds:?];

    reticleLayer4 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer4 setShouldRasterize:?];

    reticleLayer5 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer5 setShadowColor:?];

    reticleLayer6 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer6 setShadowOpacity:?];

    reticleLayer7 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer7 setShadowOffset:?];

    reticleLayer8 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer8 setShadowRadius:?];

    v15 = +[CRColor whiteColor];
    [v15 CGColor];
    reticleLayer9 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer9 setFillColor:?];

    Mutable = CGPathCreateMutable();
    reticleLayer10 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer10 bounds];
    MinX = CGRectGetMinX(v64);
    reticleLayer11 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer11 bounds];
    MinY = CGRectGetMinY(v65);
    reticleLayer12 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer12 bounds];
    v67.size.width = CGRectGetWidth(v66);
    v67.origin.x = MinX;
    v67.origin.y = MinY;
    v67.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v67);

    reticleLayer13 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer13 bounds];
    v24 = CGRectGetMidX(v68) + -2.62564103;
    reticleLayer14 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer14 bounds];
    v70.origin.y = CGRectGetMinY(v69) + 5.25128205;
    v70.origin.x = v24;
    v70.size.width = 5.25128205;
    v70.size.height = 21.0051282;
    CGPathAddRect(Mutable, 0, v70);

    reticleLayer15 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer15 bounds];
    v27 = CGRectGetMinX(v71);
    reticleLayer16 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer16 bounds];
    v29 = CGRectGetMaxY(v72) + -5.25128205;
    reticleLayer17 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer17 bounds];
    v74.size.width = CGRectGetWidth(v73);
    v74.origin.x = v27;
    v74.origin.y = v29;
    v74.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v74);

    reticleLayer18 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer18 bounds];
    v32 = CGRectGetMidX(v75) + -2.62564103;
    reticleLayer19 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer19 bounds];
    v77.origin.y = CGRectGetMaxY(v76) + -26.2564103;
    v77.origin.x = v32;
    v77.size.width = 5.25128205;
    v77.size.height = 21.0051282;
    CGPathAddRect(Mutable, 0, v77);

    reticleLayer20 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer20 bounds];
    v35 = CGRectGetMinX(v78);
    reticleLayer21 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer21 bounds];
    v37 = CGRectGetMinY(v79);
    reticleLayer22 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer22 bounds];
    v81.size.height = CGRectGetHeight(v80);
    v81.origin.x = v35;
    v81.origin.y = v37;
    v81.size.width = 5.25128205;
    CGPathAddRect(Mutable, 0, v81);

    reticleLayer23 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer23 bounds];
    v40 = CGRectGetMinX(v82) + 5.25128205;
    reticleLayer24 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer24 bounds];
    v84.origin.y = CGRectGetMidY(v83) + -2.62564103;
    v84.origin.x = v40;
    v84.size.width = 21.0051282;
    v84.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v84);

    reticleLayer25 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer25 bounds];
    v43 = CGRectGetMaxX(v85) + -5.25128205;
    reticleLayer26 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer26 bounds];
    v45 = CGRectGetMinY(v86);
    reticleLayer27 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer27 bounds];
    v88.size.height = CGRectGetHeight(v87);
    v88.origin.x = v43;
    v88.origin.y = v45;
    v88.size.width = 5.25128205;
    CGPathAddRect(Mutable, 0, v88);

    reticleLayer28 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer28 bounds];
    v48 = CGRectGetMaxX(v89) + -26.2564103;
    reticleLayer29 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer29 bounds];
    v91.origin.y = CGRectGetMidY(v90) + -2.62564103;
    v91.origin.x = v48;
    v91.size.width = 21.0051282;
    v91.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v91);

    reticleLayer30 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer30 setPath:?];

    CGPathRelease(Mutable);
    codeLayer = [(CRBoxLayer *)self codeLayer];

    if (!codeLayer)
    {
      layer2 = [MEMORY[0x277CD9FC8] layer];
      [(CRBoxLayer *)self setCodeLayer:?];

      codeLayer2 = [(CRBoxLayer *)self codeLayer];
      [(CRBoxLayer *)self addSublayer:?];
    }

    [(CRBoxLayer *)self bounds];
    CGRectGetWidth(v92);
    codeLayer3 = [(CRBoxLayer *)self codeLayer];
    [codeLayer3 setBounds:?];

    codeLayer4 = [(CRBoxLayer *)self codeLayer];
    [codeLayer4 setAnchorPoint:?];

    codeLayer5 = [(CRBoxLayer *)self codeLayer];
    [codeLayer5 setShouldRasterize:?];

    codeLayer6 = [(CRBoxLayer *)self codeLayer];
    [codeLayer6 setShadowColor:?];

    codeLayer7 = [(CRBoxLayer *)self codeLayer];
    [codeLayer7 setShadowOpacity:?];

    codeLayer8 = [(CRBoxLayer *)self codeLayer];
    [codeLayer8 setShadowOffset:?];

    codeLayer9 = [(CRBoxLayer *)self codeLayer];
    [codeLayer9 setShadowRadius:?];

    codeLayer10 = [(CRBoxLayer *)self codeLayer];
    [codeLayer10 setFont:?];

    codeLayer11 = [(CRBoxLayer *)self codeLayer];
    [codeLayer11 setFontSize:?];

    codeLayer12 = [(CRBoxLayer *)self codeLayer];
    [codeLayer12 setAlignmentMode:?];
  }
}

- (void)dealloc
{
  if ([(CRBoxLayer *)self customInit])
  {
    [CRBoxLayer removeObserver:"removeObserver:forKeyPath:" forKeyPath:?];
  }

  v3.receiver = self;
  v3.super_class = CRBoxLayer;
  [(CRBoxLayer *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  v9 = [changeCopy objectForKey:?];
  v10 = [changeCopy objectForKey:?];

  LOBYTE(changeCopy) = [v9 isEqual:?];
  if ((changeCopy & 1) == 0 && [pathCopy isEqualToString:?])
  {
    if (([(CRBoxLayer *)self isHidden]& 1) != 0)
    {
      [(CRBoxLayer *)self animateConceal];
    }

    else
    {
      [(CRBoxLayer *)self animateReveal];
    }
  }
}

- (void)layoutSublayers
{
  [(CRBoxLayer *)self bounds];
  CGRectGetMidX(v6);
  [(CRBoxLayer *)self bounds];
  CGRectGetMidY(v7);
  reticleLayer = [(CRBoxLayer *)self reticleLayer];
  [reticleLayer setPosition:?];

  [(CRBoxLayer *)self bounds];
  CGRectGetMidX(v8);
  [(CRBoxLayer *)self bounds];
  CGRectGetMidY(v9);
  codeLayer = [(CRBoxLayer *)self codeLayer];
  [codeLayer setPosition:?];
}

- (void)positionForCodeBoxPoints:(id)points
{
  v5 = 0;
  v37 = *MEMORY[0x277D85DE8];
  v6 = &v30;
  do
  {
    v7 = [points objectAtIndex:?];
    [v7 CGPointValue];
    *(v6 - 1) = v8;
    *v6 = v9;

    ++v5;
    v6 += 2;
  }

  while (v5 != 4);
  v11 = v29;
  v10 = v30;
  v12 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  v17 = v35;
  v16 = v36;
  v18 = (v29 + v35) * 0.5;
  v19 = (v30 + v36) * 0.5;
  v20 = (v31 + v33) * 0.5;
  v21 = (v32 + v34) * 0.5;
  if (v20 == v18)
  {
    v22 = dbl_24783F570[v21 > v19];
  }

  else
  {
    v22 = atan((v21 - v19) / (v20 - v18));
  }

  angle = v22;
  [(CRBoxLayer *)self bounds];
  Width = CGRectGetWidth(v38);
  memset(&v28, 0, sizeof(v28));
  CATransform3DMakeScale(&v28, v24 / Width * 195.0 / 185.0, v24 / Width * 195.0 / 185.0, 1.0);
  v26 = v28;
  CATransform3DRotate(&v27, &v26, angle, 0.0, 0.0, 1.0);
  v28 = v27;
  [(CRBoxLayer *)self opacity];
  v27 = v28;
  [CRBoxLayer animateToPosition:"animateToPosition:transform:opacity:type:" transform:? opacity:? type:?];
}

- (void)animateReveal
{
  [(CRBoxLayer *)self position];
  [&v3 transform];
  [CRBoxLayer animateToPosition:"animateToPosition:transform:opacity:type:" transform:? opacity:? type:?];
}

- (void)animateConceal
{
  [(CRBoxLayer *)self position];
  [&v3 transform];
  [CRBoxLayer animateToPosition:"animateToPosition:transform:opacity:type:" transform:? opacity:? type:?];
}

- (void)animateToPosition:(CGPoint)position transform:(CATransform3D *)transform opacity:(double)opacity type:(int64_t)type
{
  [MEMORY[0x277CD9FF0] begin];
  [(CRBoxLayer *)self position];
  memset(&v60, 0, sizeof(v60));
  [&v60 transform];
  [(CRBoxLayer *)self opacity];
  animationKeys = [(CRBoxLayer *)self animationKeys];
  v11 = [animationKeys count];

  if (v11)
  {
    presentationLayer = [(CRBoxLayer *)self presentationLayer];
    v13 = [presentationLayer valueForKeyPath:?];
    [v13 CGPointValue];

    presentationLayer2 = [(CRBoxLayer *)self presentationLayer];
    v15 = [presentationLayer2 valueForKeyPath:?];
    if (v15)
    {
      [&v59 CATransform3DValue];
    }

    else
    {
      memset(&v59, 0, sizeof(v59));
    }

    v60 = v59;

    presentationLayer3 = [(CRBoxLayer *)self presentationLayer];
    v17 = [presentationLayer3 valueForKeyPath:?];
    [v17 doubleValue];
  }

  v18 = [(CRBoxLayer *)self animationForKey:?];

  v19 = [(CRBoxLayer *)self animationForKey:?];
  v20 = v19 != 0;

  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = v20;
  }

  if (v18)
  {
    v22 = type == 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = typeCopy;
  }

  v59 = v60;
  v24 = NSStringFromSelector(a2);
  switch(v23)
  {
    case 2:
      [(CRBoxLayer *)self demoSpeed];
      v32 = @"CRBoxLayerAnimationConceal";
LABEL_25:

      v24 = v32;
      break;
    case 1:
      isHidden = [(CRBoxLayer *)self isHidden];
      [(CRBoxLayer *)self demoSpeed];

      [MEMORY[0x277CD9FF0] setDisableActions:?];
      v24 = @"CRBoxLayerAnimationMove";
      if (isHidden)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 0:
      if (!v18)
      {
        date = [MEMORY[0x277CBEAA8] date];
        v26 = animateToPosition_transform_opacity_type__sRevealStart;
        animateToPosition_transform_opacity_type__sRevealStart = date;

        v27 = *&transform->m33;
        *&v58.m31 = *&transform->m31;
        *&v58.m33 = v27;
        v28 = *&transform->m43;
        *&v58.m41 = *&transform->m41;
        *&v58.m43 = v28;
        v29 = *&transform->m13;
        *&v58.m11 = *&transform->m11;
        *&v58.m13 = v29;
        v30 = *&transform->m23;
        *&v58.m21 = *&transform->m21;
        *&v58.m23 = v30;
        CATransform3DScale(&v59, &v58, 2.0, 2.0, 1.0);
      }

      [(CRBoxLayer *)self demoSpeed];
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:?];

      v32 = @"CRBoxLayerAnimationReveal";
      goto LABEL_25;
  }

  [MEMORY[0x277CD9FF0] setDisableActions:?];
LABEL_27:
  [(CRBoxLayer *)self removeAllAnimations];
  v34 = MEMORY[0x277CD9FF0];
  v57 = MEMORY[0x277D85DD0];
  v24 = v24;
  [v34 setCompletionBlock:{v57, 3221225472, __55__CRBoxLayer_animateToPosition_transform_opacity_type___block_invoke, &unk_278EAABE8, self}];
  v35 = MEMORY[0x277CD9FF0];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v35 setValue:? forKey:?];

  array = [MEMORY[0x277CBEB18] array];
  v38 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
  v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
  [v38 setFromValue:?];

  v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
  [v38 setToValue:?];

  [array addObject:?];
  v41 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
  v58 = v59;
  v42 = [MEMORY[0x277CCAE60] valueWithCATransform3D:?];
  [v41 setFromValue:?];

  v43 = *&transform->m33;
  *&v58.m31 = *&transform->m31;
  *&v58.m33 = v43;
  v44 = *&transform->m43;
  *&v58.m41 = *&transform->m41;
  *&v58.m43 = v44;
  v45 = *&transform->m13;
  *&v58.m11 = *&transform->m11;
  *&v58.m13 = v45;
  v46 = *&transform->m23;
  *&v58.m21 = *&transform->m21;
  *&v58.m23 = v46;
  v47 = [MEMORY[0x277CCAE60] valueWithCATransform3D:?];
  [v41 setToValue:?];

  [array addObject:?];
  v48 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v48 setFromValue:?];

  v50 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v48 setToValue:?];

  [array addObject:?];
  if (v23 == 2)
  {
    v51 = [MEMORY[0x277CD9EC8] animationWithKeyPath:?];
    [v51 setValues:?];
    [v51 setKeyTimes:?];
    [v51 setCalculationMode:?];
    [array addObject:?];
  }

  animation = [MEMORY[0x277CD9E00] animation];
  [animation setAnimations:?];
  [animation setDuration:?];
  [animation setTimingFunction:?];
  [CRBoxLayer addAnimation:"addAnimation:forKey:" forKey:?];

LABEL_30:
  [(CRBoxLayer *)self setPosition:?];
  v53 = *&transform->m33;
  *&v58.m31 = *&transform->m31;
  *&v58.m33 = v53;
  v54 = *&transform->m43;
  *&v58.m41 = *&transform->m41;
  *&v58.m43 = v54;
  v55 = *&transform->m13;
  *&v58.m11 = *&transform->m11;
  *&v58.m13 = v55;
  v56 = *&transform->m23;
  *&v58.m21 = *&transform->m21;
  *&v58.m23 = v56;
  [(CRBoxLayer *)self setTransform:?];
  [(CRBoxLayer *)self setOpacity:?];
  [MEMORY[0x277CD9FF0] commit];
}

void __55__CRBoxLayer_animateToPosition_transform_opacity_type___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) animationKeys];
  v3 = [v2 containsObject:?];

  if ((v3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 32) completionBlocks];
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = MEMORY[0x277D85CD0];
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __55__CRBoxLayer_animateToPosition_transform_opacity_type___block_invoke_2;
          v11[3] = &unk_278EAABC0;
          v13 = v10;
          v12 = *(a1 + 40);
          dispatch_async(v8, v11);

          v9 = (v9 + 1);
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    [*(a1 + 32) setCompletionBlocks:?];
  }
}

- (void)setString:(id)string mirrored:(BOOL)mirrored inverted:(BOOL)inverted
{
  invertedCopy = inverted;
  mirroredCopy = mirrored;
  stringCopy = string;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  v9 = *(MEMORY[0x277CD9DE8] + 64);
  v10 = *(MEMORY[0x277CD9DE8] + 80);
  *&v23.m31 = v9;
  *&v23.m33 = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 96);
  v12 = *(MEMORY[0x277CD9DE8] + 112);
  *&v23.m41 = v11;
  *&v23.m43 = v12;
  v13 = *MEMORY[0x277CD9DE8];
  v14 = *(MEMORY[0x277CD9DE8] + 16);
  *&v23.m11 = *MEMORY[0x277CD9DE8];
  *&v23.m13 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 32);
  v16 = *(MEMORY[0x277CD9DE8] + 48);
  *&v23.m21 = v15;
  *&v23.m23 = v16;
  if (invertedCopy)
  {
    *&v22.m31 = v9;
    *&v22.m33 = v10;
    *&v22.m41 = v11;
    *&v22.m43 = v12;
    *&v22.m11 = v13;
    *&v22.m13 = v14;
    *&v22.m21 = v15;
    *&v22.m23 = v16;
    CATransform3DRotate(&v23, &v22, 3.14159265, 0.0, 0.0, 1.0);
  }

  if (mirroredCopy)
  {
    v21 = v23;
    CATransform3DRotate(&v22, &v21, 3.14159265, 0.0, 1.0, 0.0);
    v23 = v22;
  }

  if ([stringCopy length] != 12)
  {
    [stringCopy length];
  }

  codeLayer = [(CRBoxLayer *)self codeLayer];
  [codeLayer setFontSize:?];

  v20 = v23;
  codeLayer2 = [(CRBoxLayer *)self codeLayer];
  v22 = v20;
  [codeLayer2 setTransform:?];

  [MEMORY[0x277CD9FF0] commit];
  codeLayer3 = [(CRBoxLayer *)self codeLayer];
  [codeLayer3 setString:?];
}

- (void)animatePulseColor:(id)color
{
  v4 = MEMORY[0x277CD9FF0];
  colorCopy = color;
  [v4 begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:?];
  shadowColor = [(CRBoxLayer *)self shadowColor];
  cGColor = [colorCopy CGColor];
  [(CRBoxLayer *)self demoSpeed];
  [v6 setDuration:?];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{shadowColor, cGColor, shadowColor, cGColor, cGColor, 0}];
  [v6 setValues:?];

  [v6 setKeyTimes:?];
  [v6 setCalculationMode:?];
  [MEMORY[0x277CD9FF0] setCompletionBlock:?];
  [CRBoxLayer addAnimation:"addAnimation:forKey:" forKey:?];
  reticleLayer = [(CRBoxLayer *)self reticleLayer];
  [reticleLayer addAnimation:? forKey:?];

  codeLayer = [(CRBoxLayer *)self codeLayer];
  [codeLayer addAnimation:? forKey:?];

  [colorCopy CGColor];
  [(CRBoxLayer *)self setShadowColor:?];
  [colorCopy CGColor];
  reticleLayer2 = [(CRBoxLayer *)self reticleLayer];
  [reticleLayer2 setShadowColor:?];

  [colorCopy CGColor];
  codeLayer2 = [(CRBoxLayer *)self codeLayer];
  [codeLayer2 setShadowColor:?];

  [MEMORY[0x277CD9FF0] commit];
}

void *__32__CRBoxLayer_animatePulseColor___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) completionBlocks];
  v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __32__CRBoxLayer_animatePulseColor___block_invoke_2;
        v10[3] = &unk_278EAABC0;
        v12 = v8;
        v11 = *(a1 + 40);
        dispatch_async(v6, v10);

        v7 = (v7 + 1);
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  return [*(a1 + 32) setCompletionBlocks:?];
}

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  animationKeys = [(CRBoxLayer *)self animationKeys];

  if (animationKeys)
  {
    completionBlocks = [(CRBoxLayer *)self completionBlocks];

    if (!completionBlocks)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(CRBoxLayer *)self setCompletionBlocks:?];
    }

    completionBlocks2 = [(CRBoxLayer *)self completionBlocks];
    v9 = MEMORY[0x24C1AAEF0](blockCopy);
    [completionBlocks2 addObject:?];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__CRBoxLayer_addCompletionBlock___block_invoke;
    block[3] = &unk_278EAAC10;
    v11 = blockCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end