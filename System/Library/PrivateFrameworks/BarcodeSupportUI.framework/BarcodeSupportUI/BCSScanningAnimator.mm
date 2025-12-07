@interface BCSScanningAnimator
- (CGPoint)_appclipCodeScaleFactor;
- (CGPoint)_qrImagePopScaleFactor;
- (CGPoint)_restPosition;
- (CGRect)_platterInitialFrameWithDefaultSize:(double)size;
- (CGRect)_restRect;
- (id)_meshTransform:(BOOL)transform;
- (void)_animateCircularReveal;
- (void)_animateFocusIndicator:(BOOL)indicator duration:(double)duration position:(CGPoint)position;
- (void)_performCircularMeshTransform:(BOOL)transform completion:(id)completion;
- (void)_performSquareMeshTransform:(BOOL)transform completion:(id)completion;
- (void)_performSquareMeshTransformWithoutAnimating;
- (void)_revealCircularView;
- (void)_setUpBlurViewIfNeeded;
- (void)animateAppClipCodeBounceWithCompletion:(id)completion shouldAnimate:(BOOL)animate;
- (void)animatePopWithAppImageBlock:(id)block completion:(id)completion;
- (void)animatePushWithCompletion:(id)completion shouldAnimate:(BOOL)animate;
- (void)reset;
- (void)showCoverView;
@end

@implementation BCSScanningAnimator

- (id)_meshTransform:(BOOL)transform
{
  meshTransform = [MEMORY[0x277CD9F18] meshTransform];
  v6 = [(BCSImageQuad *)self->_imageQuad copy];
  [v6 adjustOrientationInImageSpace:0];
  if (transform)
  {
    v7 = 0.0;
    v8 = 1.0;
    v9 = 1.0;
    v10 = 1.0;
    v11 = 0.0;
    v12 = 1.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    [v6 topLeft];
    v14 = v15;
    [v6 topLeft];
    v13 = v16;
    [v6 topRight];
    v12 = v17;
    [v6 topRight];
    v11 = v18;
    [v6 bottomRight];
    v10 = v19;
    [v6 bottomRight];
    v9 = v20;
    [v6 bottomLeft];
    v7 = v21;
    [v6 bottomLeft];
    v8 = v22;
  }

  v29 = 0uLL;
  v30 = v14;
  v31 = v13;
  v32 = 0;
  [meshTransform addVertex:&v29];
  v29 = xmmword_241A06580;
  v30 = v12;
  v31 = v11;
  v32 = 0;
  [meshTransform addVertex:&v29];
  __asm { FMOV            V0.2D, #1.0 }

  v29 = _Q0;
  v30 = v10;
  v31 = v9;
  v32 = 0;
  [meshTransform addVertex:&v29];
  v29 = xmmword_241A06590;
  v30 = v7;
  v31 = v8;
  v32 = 0;
  [meshTransform addVertex:&v29];
  v29 = xmmword_241A065A0;
  v30 = 0.0;
  v31 = 0.0;
  [meshTransform addFace:&v29];
  [meshTransform setSubdivisionSteps:0];

  return meshTransform;
}

- (CGPoint)_restPosition
{
  [(UIView *)self->_focusIndicator frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMidY(v11);

  _bcs_roundPointToPixels();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)_restRect
{
  [(BCSImageQuad *)self->_imageQuad perspectiveCorrectedSize];
  v4 = v3;
  v6 = v5;
  [(BCSImageQuad *)self->_imageQuad bounds];
  v7 = v4 * CGRectGetWidth(v16);
  [(BCSImageQuad *)self->_imageQuad bounds];
  v8 = v6 * CGRectGetHeight(v17);
  if (v7 < 160.0)
  {
    v7 = 160.0;
  }

  if (v8 >= 160.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 160.0;
  }

  [(BCSScanningAnimator *)self _restPosition];
  v11 = v10 - v7 * 0.5;
  v13 = v12 - v9 * 0.5;
  v14 = v7;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v11;
  return result;
}

- (CGRect)_platterInitialFrameWithDefaultSize:(double)size
{
  _bcs_deviceIsPad();
  [(UIImageView *)self->_targetQRImage frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BCSImageQuad *)self->_imageQuad copy];
  [(BCSImageQuad *)self->_imageQuad bounds];
  [v12 setBounds:?];
  [v12 denormalize];
  [v12 perspectiveCorrectedSize];
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  CGRectGetMidX(v25);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  CGRectGetMidY(v26);
  _bcs_roundRectToPixels();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGPoint)_qrImagePopScaleFactor
{
  [(BCSDissolveEffectView *)self->_platterView frame];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_targetQRImage frame];
  v8 = (v4 + -20.0) / v7;
  v10 = (v6 + -20.0) / v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGPoint)_appclipCodeScaleFactor
{
  [(UIView *)self->_circularContainerView frame];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_targetQRImage bounds];
  v8 = v4 / v7;
  v10 = v6 / v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (void)_animateFocusIndicator:(BOOL)indicator duration:(double)duration position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  indicatorCopy = indicator;
  v52[3] = *MEMORY[0x277D85DE8];
  v10 = self->_focusIndicator;
  _bcs_mainScreenScale();
  v12 = v11;
  layer = [(UIView *)v10 layer];
  [layer setRasterizationScale:v12];

  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"meshTransform"];
  v15 = [(BCSScanningAnimator *)self _meshTransform:indicatorCopy ^ 1];
  [v14 setFromValue:v15];

  v16 = [(BCSScanningAnimator *)self _meshTransform:indicatorCopy];
  [v14 setToValue:v16];

  [v14 setDuration:duration];
  v17 = *MEMORY[0x277CDA230];
  [v14 setFillMode:*MEMORY[0x277CDA230]];
  [v14 setRemovedOnCompletion:0];
  v18 = *MEMORY[0x277CDA7C0];
  v19 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v14 setTimingFunction:v19];

  layer2 = [(UIView *)v10 layer];
  [layer2 addAnimation:v14 forKey:@"meshTransform"];

  [(BCSImageQuad *)self->_imageQuad bounds];
  Width = CGRectGetWidth(v53);
  [(UIView *)v10 bounds];
  v22 = CGRectGetWidth(v54);
  [(BCSImageQuad *)self->_imageQuad bounds];
  Height = CGRectGetHeight(v55);
  [(UIView *)v10 bounds];
  v24 = CGRectGetHeight(v56);
  if (!indicatorCopy)
  {
    v25 = v24;
    v26 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.x"];
    v27 = Width / v22;
    v52[0] = &unk_2853A10F0;
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27 * 1.05];
    v52[1] = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27 * 1.25];
    v52[2] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    [v26 setValues:v30];

    [v26 setKeyTimes:&unk_2853A11E8];
    [v26 setDuration:duration];
    [v26 setFillMode:v17];
    [v26 setRemovedOnCompletion:0];
    v31 = [MEMORY[0x277CD9EF8] functionWithName:v18];
    [v26 setTimingFunction:v31];

    layer3 = [(UIView *)v10 layer];
    [layer3 addAnimation:v26 forKey:@"transform.scale.x"];

    v33 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.y"];

    v34 = Height / v25;
    v51[0] = &unk_2853A10F0;
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:v34 * 1.05];
    v51[1] = v35;
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34 * 1.25];
    v51[2] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
    [v33 setValues:v37];

    [v33 setKeyTimes:&unk_2853A1200];
    [v33 setDuration:duration];
    [v33 setFillMode:v17];
    [v33 setRemovedOnCompletion:0];
    v38 = [MEMORY[0x277CD9EF8] functionWithName:v18];
    [v33 setTimingFunction:v38];

    layer4 = [(UIView *)v10 layer];
    [layer4 addAnimation:v33 forKey:@"transform.scale.y"];
  }

  v40 = [MEMORY[0x277CD9E10] animationWithKeyPath:{@"position", v24}];
  v41 = MEMORY[0x277CCAE60];
  v42 = y;
  v43 = x;
  if (!indicatorCopy)
  {
    [(UIView *)v10 position:x];
  }

  v44 = [v41 valueWithCGPoint:{v43, v42}];
  [v40 setFromValue:v44];

  v45 = MEMORY[0x277CCAE60];
  if (indicatorCopy)
  {
    [(UIView *)v10 position];
    x = v46;
    y = v47;
  }

  v48 = [v45 valueWithCGPoint:{x, y}];
  [v40 setToValue:v48];

  [v40 setDuration:duration];
  [v40 setFillMode:v17];
  [v40 setRemovedOnCompletion:0];
  v49 = [MEMORY[0x277CD9EF8] functionWithName:v18];
  [v40 setTimingFunction:v49];

  layer5 = [(UIView *)v10 layer];
  [layer5 addAnimation:v40 forKey:@"position"];
}

- (void)_performSquareMeshTransformWithoutAnimating
{
  v3 = self->_focusIndicator;
  _bcs_mainScreenScale();
  v5 = v4;
  layer = [(UIImageView *)self->_targetQRImage layer];
  [layer setRasterizationScale:v5];

  [(BCSImageQuad *)self->_imageQuad bounds];
  Width = CGRectGetWidth(v44);
  [(UIView *)v3 bounds];
  v8 = CGRectGetWidth(v45);
  [(BCSImageQuad *)self->_imageQuad bounds];
  Height = CGRectGetHeight(v46);
  [(UIView *)v3 bounds];
  v10 = CGRectGetHeight(v47);
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeScale(&v43, Width / v8 * 1.25, Height / v10 * 1.25);
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidX = CGRectGetMidX(v48);
  [(UIView *)v3 center];
  v13 = v12;
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidY = CGRectGetMidY(v49);
  [(UIView *)v3 center];
  memset(&v42, 0, sizeof(v42));
  CGAffineTransformMakeTranslation(&v42, MidX - v13, MidY - v15);
  v28 = v43;
  t2 = v42;
  CGAffineTransformConcat(&v41, &v28, &t2);
  v28 = v41;
  [(UIView *)v3 setTransform:&v28];
  v16 = [(BCSScanningAnimator *)self _meshTransform:0];
  layer2 = [(UIView *)v3 layer];
  [layer2 setMeshTransform:v16];

  [(BCSScanningAnimator *)self _restPosition];
  v19 = v18;
  v21 = v20;
  layer3 = [(BCSDissolveEffectView *)self->_platterView layer];
  [layer3 setPosition:{v19, v21}];

  v23 = *(MEMORY[0x277CD9DE8] + 80);
  v36 = *(MEMORY[0x277CD9DE8] + 64);
  v37 = v23;
  v24 = *(MEMORY[0x277CD9DE8] + 112);
  v38 = *(MEMORY[0x277CD9DE8] + 96);
  v39 = v24;
  v25 = *(MEMORY[0x277CD9DE8] + 16);
  *&v34.a = *MEMORY[0x277CD9DE8];
  *&v34.c = v25;
  v26 = *(MEMORY[0x277CD9DE8] + 48);
  *&v34.tx = *(MEMORY[0x277CD9DE8] + 32);
  v35 = v26;
  layer4 = [(BCSDissolveEffectView *)self->_platterView layer];
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  [layer4 setTransform:&v28];
}

- (void)_performSquareMeshTransform:(BOOL)transform completion:(id)completion
{
  transformCopy = transform;
  v91[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (transformCopy)
  {
    v6 = 0.6;
  }

  else
  {
    v6 = 0.4;
  }

  v7 = self->_focusIndicator;
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v71 = *MEMORY[0x277CBF2C0];
  v72 = v8;
  v73 = *(MEMORY[0x277CBF2C0] + 32);
  v70 = v7;
  [(UIView *)v7 setTransform:&v71];
  _bcs_mainScreenScale();
  v10 = v9;
  layer = [(UIImageView *)self->_targetQRImage layer];
  [layer setRasterizationScale:v10];

  [MEMORY[0x277CD9FF0] begin];
  v12 = MEMORY[0x277CD9FF0];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __62__BCSScanningAnimator__performSquareMeshTransform_completion___block_invoke;
  v87[3] = &unk_278D02000;
  v68 = completionCopy;
  v88 = v68;
  [v12 setCompletionBlock:v87];
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidX = CGRectGetMidX(v92);
  [(BCSImageQuad *)self->_imageQuad bounds];
  [(BCSScanningAnimator *)self _animateFocusIndicator:transformCopy duration:v6 position:MidX, CGRectGetMidY(v93)];
  v14 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
  if (transformCopy)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:1.05];
    v91[0] = v15;
    v91[1] = &unk_2853A10F0;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    v91[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
  }

  else
  {
    v90[0] = &unk_2853A10F0;
    v90[1] = &unk_2853A1178;
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:1.05];
    v90[2] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:3];
    v16 = v17;
  }

  v18 = v17;
  [v14 setValues:v17];
  if (transformCopy)
  {

    v19 = &unk_2853A1218;
  }

  else
  {
    v19 = &unk_2853A1230;
  }

  [v14 setKeyTimes:v19];
  [v14 setDuration:v6];
  v20 = *MEMORY[0x277CDA230];
  [v14 setFillMode:*MEMORY[0x277CDA230]];
  [v14 setRemovedOnCompletion:0];
  v21 = *MEMORY[0x277CDA7B8];
  v22 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v89 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  [v14 setTimingFunctions:v23];

  layer2 = [(UIImageView *)self->_targetQRImage layer];
  [layer2 addAnimation:v14 forKey:@"transform"];

  v25 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  if (transformCopy)
  {
    [v25 setValues:&unk_2853A12A8];
    [v25 setKeyTimes:&unk_2853A12C0];
    [v25 setDuration:0.6];
    [v25 setRemovedOnCompletion:0];
    [v25 setFillMode:v20];
    v26 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v25 setTimingFunction:v26];

    layer3 = [(UIView *)v70 layer];
    [layer3 addAnimation:v25 forKey:@"opacity"];

    v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"meshTransform"];
    v29 = [(BCSScanningAnimator *)self _meshTransform:0];
    [v28 setFromValue:v29];

    v30 = [(BCSScanningAnimator *)self _meshTransform:1];
    [v28 setToValue:v30];

    [v28 setDuration:0.6];
    [v28 setFillMode:v20];
    [v28 setRemovedOnCompletion:0];
    v31 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v28 setTimingFunction:v31];

    layer4 = [(UIImageView *)self->_targetQRImage layer];
    [layer4 addAnimation:v28 forKey:@"meshTransform"];

    v33 = [(BCSScanningAnimator *)self _meshTransform:1];
    layer5 = [(UIImageView *)self->_targetQRImage layer];
    [layer5 setMeshTransform:v33];

    layer13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
    v36 = MEMORY[0x277CCAE60];
    layer6 = [(BCSDissolveEffectView *)self->_platterView layer];
    [layer6 position];
    v38 = [v36 valueWithCGPoint:?];
    [layer13 setFromValue:v38];

    v39 = MEMORY[0x277CCAE60];
    [(BCSScanningAnimator *)self _restPosition];
    v40 = [v39 valueWithCGPoint:?];
    [layer13 setToValue:v40];

    [layer13 setDuration:0.6];
    [layer13 setFillMode:v20];
    [layer13 setRemovedOnCompletion:0];
    v41 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [layer13 setTimingFunction:v41];

    layer7 = [(BCSDissolveEffectView *)self->_platterView layer];
    [layer7 addAnimation:layer13 forKey:@"position"];

    [(BCSScanningAnimator *)self _qrImagePopScaleFactor];
    v44 = v43;
    v46 = v45;
    v47 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.x"];
    [v47 setFromValue:&unk_2853A10F0];
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
    [v47 setToValue:v48];

    [v47 setDuration:0.6];
    [v47 setFillMode:v20];
    [v47 setRemovedOnCompletion:0];
    v49 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v47 setTimingFunction:v49];

    layer8 = [(UIImageView *)self->_targetQRImage layer];
    [layer8 addAnimation:v47 forKey:@"transform.scale.x"];

    v51 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.y"];
    [v51 setFromValue:&unk_2853A10F0];
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    [v51 setToValue:v52];

    [v51 setDuration:0.6];
    [v51 setFillMode:v20];
    [v51 setRemovedOnCompletion:0];
    v53 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v51 setTimingFunction:v53];

    layer9 = [(UIImageView *)self->_targetQRImage layer];
    [layer9 addAnimation:v51 forKey:@"transform.scale.y"];

    [(BCSScanningAnimator *)self _restPosition];
    v56 = v55;
    v58 = v57;
    layer10 = [(BCSDissolveEffectView *)self->_platterView layer];
    [layer10 setPosition:{v56, v58}];

    v60 = *(MEMORY[0x277CD9DE8] + 80);
    v83 = *(MEMORY[0x277CD9DE8] + 64);
    v84 = v60;
    v61 = *(MEMORY[0x277CD9DE8] + 112);
    v85 = *(MEMORY[0x277CD9DE8] + 96);
    v86 = v61;
    v62 = *(MEMORY[0x277CD9DE8] + 16);
    v79 = *MEMORY[0x277CD9DE8];
    v80 = v62;
    v63 = *(MEMORY[0x277CD9DE8] + 48);
    v81 = *(MEMORY[0x277CD9DE8] + 32);
    v82 = v63;
    layer11 = [(BCSDissolveEffectView *)self->_platterView layer];
    v75 = v83;
    v76 = v84;
    v77 = v85;
    v78 = v86;
    v71 = v79;
    v72 = v80;
    v73 = v81;
    v74 = v82;
    [layer11 setTransform:&v71];
  }

  else
  {
    [v25 setValues:&unk_2853A1248];
    [v25 setKeyTimes:&unk_2853A1260];
    [v25 setDuration:0.4];
    [v25 setRemovedOnCompletion:0];
    [v25 setFillMode:v20];
    v65 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v25 setTimingFunction:v65];

    layer12 = [(BCSDissolveEffectView *)self->_platterView layer];
    [layer12 addAnimation:v25 forKey:@"opacity"];

    v28 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v28 setValues:&unk_2853A1278];
    [v28 setKeyTimes:&unk_2853A1290];
    [v28 setDuration:0.4];
    [v28 setRemovedOnCompletion:0];
    [v28 setFillMode:v20];
    v67 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v28 setTimingFunction:v67];

    layer13 = [(UIVisualEffectView *)self->_blurView layer];
    [layer13 addAnimation:v28 forKey:@"opacity"];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_performCircularMeshTransform:(BOOL)transform completion:(id)completion
{
  transformCopy = transform;
  completionCopy = completion;
  v7 = self->_focusIndicator;
  _bcs_mainScreenScale();
  v9 = v8;
  layer = [(UIView *)v7 layer];
  [layer setRasterizationScale:v9];

  _bcs_mainScreenScale();
  v12 = v11;
  layer2 = [(UIImageView *)self->_targetQRImage layer];
  [layer2 setRasterizationScale:v12];

  _bcs_mainScreenScale();
  v15 = v14;
  layer3 = [(UIView *)self->_backgroundView layer];
  [layer3 setRasterizationScale:v15];

  [MEMORY[0x277CD9FF0] begin];
  v17 = MEMORY[0x277CD9FF0];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__BCSScanningAnimator__performCircularMeshTransform_completion___block_invoke;
  v35[3] = &unk_278D02000;
  v18 = completionCopy;
  v36 = v18;
  [v17 setCompletionBlock:v35];
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidX = CGRectGetMidX(v37);
  [(BCSImageQuad *)self->_imageQuad bounds];
  MidY = CGRectGetMidY(v38);
  if (!transformCopy)
  {
    [(UIView *)v7 position];
    v22 = v21;
    [(UIView *)v7 position];
    MidX = (MidX + v22) * 0.5;
    MidY = (MidY + v23) * 0.5;
  }

  [(BCSScanningAnimator *)self _animateFocusIndicator:transformCopy duration:0.4 position:MidX, MidY];
  if (!transformCopy)
  {
    v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v24 setValues:&unk_2853A12D8];
    [v24 setKeyTimes:&unk_2853A12F0];
    [v24 setDuration:0.4];
    [v24 setRemovedOnCompletion:0];
    v25 = *MEMORY[0x277CDA230];
    [v24 setFillMode:*MEMORY[0x277CDA230]];
    v26 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [v24 setTimingFunction:v26];

    layer4 = [(UIView *)self->_circularContainerView layer];
    [layer4 addAnimation:v24 forKey:@"opacity"];

    v28 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v28 setValues:&unk_2853A1308];
    [v28 setKeyTimes:&unk_2853A1320];
    [v28 setDuration:0.4];
    [v28 setRemovedOnCompletion:0];
    [v28 setFillMode:v25];
    v29 = *MEMORY[0x277CDA7B8];
    v30 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v28 setTimingFunction:v30];

    layer5 = [(UIVisualEffectView *)self->_blurView layer];
    [layer5 addAnimation:v28 forKey:@"opacity"];

    v32 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
    [v32 setFromValue:&unk_2853A10F0];
    [v32 setToValue:&unk_2853A1108];
    [v32 setDuration:0.4];
    [v32 setRemovedOnCompletion:0];
    [v32 setFillMode:v25];
    v33 = [MEMORY[0x277CD9EF8] functionWithName:v29];
    [v32 setTimingFunction:v33];

    layer6 = [(UIView *)v7 layer];
    [layer6 addAnimation:v32 forKey:@"opacity"];

    [(BCSScanningAnimator *)self _animateCircularReveal];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_revealCircularView
{
  p_backgroundView = &self->_backgroundView;
  [(UIView *)self->_backgroundView removeFromSuperview];
  [(UIView *)*(p_backgroundView - 2) bounds];
  Width = CGRectGetWidth(v35);
  v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, Width}];
  [(UIView *)*(p_backgroundView - 2) bounds];
  MidX = CGRectGetMidX(v36);
  [(UIView *)self->_circularContainerView bounds];
  [v5 setPosition:{MidX, CGRectGetMidY(v37)}];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v5 setBackgroundColor:whiteColor];

  layer = [v5 layer];
  [layer setCornerRadius:Width * 0.5];

  objc_storeStrong(p_backgroundView, v5);
  [(UIView *)self->_circularContainerView insertSubview:v5 below:self->_circularEffectView];
  [(BCSScanningAnimator *)self _restPosition];
  v10 = v9;
  v12 = v11;
  layer2 = [(UIView *)self->_circularContainerView layer];
  [layer2 setPosition:{v10, v12}];

  v14 = *(MEMORY[0x277CD9DE8] + 80);
  v31 = *(MEMORY[0x277CD9DE8] + 64);
  v32 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 112);
  v33 = *(MEMORY[0x277CD9DE8] + 96);
  v34 = v15;
  v16 = *(MEMORY[0x277CD9DE8] + 16);
  *&v29.a = *MEMORY[0x277CD9DE8];
  *&v29.c = v16;
  v17 = *(MEMORY[0x277CD9DE8] + 48);
  *&v29.tx = *(MEMORY[0x277CD9DE8] + 32);
  v30 = v17;
  layer3 = [(UIView *)self->_circularContainerView layer];
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  [layer3 setTransform:&v23];

  [(BCSScanningAnimator *)self _appclipCodeScaleFactor];
  CGAffineTransformMakeScale(&v22, v19, v20);
  circularEffectView = self->_circularEffectView;
  v23 = v22;
  [(BCSCircularEffectView *)circularEffectView setTransform:&v23];
  [(BCSCircularEffectView *)self->_circularEffectView revealCenterGlyphAndRings];
}

- (void)_animateCircularReveal
{
  v3 = CACurrentMediaTime();
  [MEMORY[0x277CD9FF0] begin];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __45__BCSScanningAnimator__animateCircularReveal__block_invoke;
  v49[3] = &unk_278D01D58;
  v49[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v49];
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"meshTransform"];
  [v4 setDamping:27.0];
  [v4 setStiffness:225.0];
  v5 = [(BCSScanningAnimator *)self _meshTransform:0];
  [v4 setFromValue:v5];

  v6 = [(BCSScanningAnimator *)self _meshTransform:1];
  [v4 setToValue:v6];

  [v4 setDuration:0.6];
  v7 = *MEMORY[0x277CDA230];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  [v4 setRemovedOnCompletion:0];
  v8 = *MEMORY[0x277CDA7B8];
  v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v4 setTimingFunction:v9];

  layer = [(UIImageView *)self->_targetQRImage layer];
  [layer addAnimation:v4 forKey:@"meshTransform"];

  v11 = [(BCSScanningAnimator *)self _meshTransform:1];
  layer2 = [(UIImageView *)self->_targetQRImage layer];
  [layer2 setMeshTransform:v11];

  layer3 = [(UIView *)self->_backgroundView layer];
  [layer3 addAnimation:v4 forKey:@"meshTransform"];

  v14 = [(BCSScanningAnimator *)self _meshTransform:1];
  layer4 = [(UIView *)self->_backgroundView layer];
  [layer4 setMeshTransform:v14];

  [(BCSScanningAnimator *)self _appclipCodeScaleFactor];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__BCSScanningAnimator__animateCircularReveal__block_invoke_2;
  aBlock[3] = &__block_descriptor_48_e16_v16__0__UIView_8l;
  aBlock[4] = v16;
  aBlock[5] = v17;
  v18 = _Block_copy(aBlock);
  v18[2](v18, self->_circularEffectView);
  v18[2](v18, self->_backgroundView);
  v18[2](v18, self->_targetQRImage);
  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v19 setFromValue:&unk_2853A10F0];
  [v19 setToValue:&unk_2853A1108];
  [v19 setDuration:0.4];
  [v19 setBeginTime:v3 + 0.2];
  [v19 setFillMode:v7];
  [v19 setRemovedOnCompletion:0];
  v20 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v19 setTimingFunction:v20];

  [(CALayer *)self->_ringLayer addAnimation:v19 forKey:@"transform.scale"];
  v21 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
  [v21 setDamping:27.0];
  [v21 setStiffness:225.0];
  v22 = MEMORY[0x277CCAE60];
  layer5 = [(UIView *)self->_circularContainerView layer];
  [layer5 position];
  v24 = [v22 valueWithCGPoint:?];
  [v21 setFromValue:v24];

  v25 = MEMORY[0x277CCAE60];
  [(BCSScanningAnimator *)self _restPosition];
  v26 = [v25 valueWithCGPoint:?];
  [v21 setToValue:v26];

  [v21 setDuration:0.6];
  [v21 setFillMode:v7];
  [v21 setRemovedOnCompletion:0];
  v27 = [MEMORY[0x277CD9EF8] functionWithName:v8];
  [v21 setTimingFunction:v27];

  layer6 = [(UIView *)self->_circularContainerView layer];
  [layer6 addAnimation:v21 forKey:@"position"];

  [MEMORY[0x277CD9FF0] commit];
  [(BCSCircularEffectView *)self->_circularEffectView animateCenterGlyphAndRings];
  [(BCSScanningAnimator *)self _restPosition];
  v30 = v29;
  v32 = v31;
  layer7 = [(UIView *)self->_circularContainerView layer];
  [layer7 setPosition:{v30, v32}];

  v34 = *(MEMORY[0x277CD9DE8] + 80);
  v44 = *(MEMORY[0x277CD9DE8] + 64);
  v45 = v34;
  v35 = *(MEMORY[0x277CD9DE8] + 112);
  v46 = *(MEMORY[0x277CD9DE8] + 96);
  v47 = v35;
  v36 = *(MEMORY[0x277CD9DE8] + 16);
  v40 = *MEMORY[0x277CD9DE8];
  v41 = v36;
  v37 = *(MEMORY[0x277CD9DE8] + 48);
  v42 = *(MEMORY[0x277CD9DE8] + 32);
  v43 = v37;
  layer8 = [(UIView *)self->_circularContainerView layer];
  v39[4] = v44;
  v39[5] = v45;
  v39[6] = v46;
  v39[7] = v47;
  v39[0] = v40;
  v39[1] = v41;
  v39[2] = v42;
  v39[3] = v43;
  [layer8 setTransform:v39];
}

void __45__BCSScanningAnimator__animateCircularReveal__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) bounds];
  Width = CGRectGetWidth(v10);
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, Width}];
  [*(*(a1 + 32) + 32) bounds];
  MidX = CGRectGetMidX(v11);
  [*(*(a1 + 32) + 32) bounds];
  [v3 setPosition:{MidX, CGRectGetMidY(v12)}];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v5];

  v6 = [v3 layer];
  [v6 setCornerRadius:Width * 0.5];

  [*(*(a1 + 32) + 48) removeFromSuperview];
  [*(*(a1 + 32) + 32) insertSubview:v3 below:*(*(a1 + 32) + 56)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v3;
}

void __45__BCSScanningAnimator__animateCircularReveal__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.x"];
  [v4 setDamping:27.0];
  [v4 setStiffness:225.0];
  v5 = MEMORY[0x277CCABB0];
  if (v3)
  {
    objc_msgSend_transform(v3);
    v6 = *&v20;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v6 = 0.0;
  }

  v7 = [v5 numberWithDouble:{v6, v20, v22}];
  [v4 setFromValue:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [v4 setToValue:v8];

  [v4 setDuration:0.6];
  v9 = *MEMORY[0x277CDA230];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  [v4 setRemovedOnCompletion:0];
  v10 = *MEMORY[0x277CDA7B8];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v4 setTimingFunction:v11];

  v12 = [v3 layer];
  [v12 addAnimation:v4 forKey:@"transform.scale.x"];

  v13 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale.y"];
  [v13 setDamping:27.0];
  [v13 setStiffness:225.0];
  v14 = MEMORY[0x277CCABB0];
  if (v3)
  {
    objc_msgSend_transform(v3);
    v15 = *(&v22 + 1);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v15 = 0.0;
  }

  v16 = [v14 numberWithDouble:{v15, v21, v22, v23}];
  [v13 setFromValue:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v13 setToValue:v17];

  [v13 setDuration:0.6];
  [v13 setFillMode:v9];
  [v13 setRemovedOnCompletion:0];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:v10];
  [v13 setTimingFunction:v18];

  v19 = [v3 layer];
  [v19 addAnimation:v13 forKey:@"transform.scale.y"];
}

- (void)_setUpBlurViewIfNeeded
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (!self->_blurView)
  {
    superview = [(UIView *)self->_focusIndicator superview];
    platterView = self->_platterView;
    if (!platterView)
    {
      platterView = self->_circularContainerView;
    }

    v22 = platterView;
    v23 = [MEMORY[0x277D75210] _effectWithBlurRadius:10.0 scale:0.25];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v23];
    blurView = self->_blurView;
    self->_blurView = v5;

    [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
    [(UIVisualEffectView *)self->_blurView setBackgroundColor:v7];

    [superview insertSubview:self->_blurView below:v22];
    v8 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIVisualEffectView *)self->_blurView topAnchor];
    topAnchor2 = [superview topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:?];
    v24[0] = v18;
    bottomAnchor = [(UIVisualEffectView *)self->_blurView bottomAnchor];
    bottomAnchor2 = [superview bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:?];
    v24[1] = v16;
    leftAnchor = [(UIVisualEffectView *)self->_blurView leftAnchor];
    leftAnchor2 = [superview leftAnchor];
    v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[2] = v11;
    rightAnchor = [(UIVisualEffectView *)self->_blurView rightAnchor];
    rightAnchor2 = [superview rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    [v8 activateConstraints:v15];

    [(UIVisualEffectView *)self->_blurView setAlpha:0.0];
  }
}

- (void)animatePushWithCompletion:(id)completion shouldAnimate:(BOOL)animate
{
  completionCopy = completion;
  superview = [(UIView *)self->_focusIndicator superview];
  if (!self->_platterView)
  {
    v8 = [BCSDissolveEffectView alloc];
    [(BCSScanningAnimator *)self _platterInitialFrameWithDefaultSize:144.0];
    v9 = [(BCSDissolveEffectView *)v8 initWithFrame:?];
    platterView = self->_platterView;
    self->_platterView = v9;

    [(BCSDissolveEffectView *)self->_platterView setContentView:self->_targetQRImage];
    [(BCSDissolveEffectView *)self->_platterView setAutoresizingMask:45];
    [(BCSDissolveEffectView *)self->_platterView bounds];
    MidX = CGRectGetMidX(v16);
    [(BCSDissolveEffectView *)self->_platterView bounds];
    [(UIImageView *)self->_targetQRImage setPosition:MidX, CGRectGetMidY(v17)];
    [(BCSDissolveEffectView *)self->_platterView addSubview:self->_targetQRImage];
    [superview insertSubview:self->_platterView below:self->_focusIndicator];
  }

  v12 = [(BCSScanningAnimator *)self _meshTransform:0];
  layer = [(UIImageView *)self->_targetQRImage layer];
  [layer setMeshTransform:v12];

  [(BCSScanningAnimator *)self _setUpBlurViewIfNeeded];
  if (animate)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__BCSScanningAnimator_animatePushWithCompletion_shouldAnimate___block_invoke;
    v14[3] = &unk_278D02048;
    v15 = completionCopy;
    [(BCSScanningAnimator *)self _performSquareMeshTransform:0 completion:v14];
  }

  else
  {
    [(BCSScanningAnimator *)self _performSquareMeshTransformWithoutAnimating];
    [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)animatePopWithAppImageBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__BCSScanningAnimator_animatePopWithAppImageBlock_completion___block_invoke;
  v10[3] = &unk_278D02098;
  v10[4] = self;
  v11 = blockCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = blockCopy;
  [(BCSScanningAnimator *)self _performSquareMeshTransform:1 completion:v10];
}

void __62__BCSScanningAnimator_animatePopWithAppImageBlock_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__BCSScanningAnimator_animatePopWithAppImageBlock_completion___block_invoke_2;
  v5[3] = &unk_278D02070;
  v6 = *(a1 + 48);
  v7 = a2;
  [v4 startAnimationWithDuration:v3 appImageBlock:v5 completion:0.4];
}

- (void)animateAppClipCodeBounceWithCompletion:(id)completion shouldAnimate:(BOOL)animate
{
  completionCopy = completion;
  superview = [(UIView *)self->_focusIndicator superview];
  if (!self->_circularContainerView)
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(BCSScanningAnimator *)self _platterInitialFrameWithDefaultSize:200.0];
    v9 = [v8 initWithFrame:?];
    circularContainerView = self->_circularContainerView;
    self->_circularContainerView = v9;

    [(UIView *)self->_circularContainerView setAutoresizingMask:45];
    [(UIView *)self->_circularContainerView setAccessibilityIgnoresInvertColors:1];
    [(UIView *)self->_circularContainerView bounds];
    MidX = CGRectGetMidX(v38);
    [(UIView *)self->_circularContainerView bounds];
    [(UIImageView *)self->_targetQRImage setPosition:MidX, CGRectGetMidY(v39)];
    [(UIView *)self->_circularContainerView addSubview:self->_targetQRImage];
    [superview insertSubview:self->_circularContainerView below:self->_focusIndicator];
  }

  v12 = [(BCSScanningAnimator *)self _meshTransform:0];
  layer = [(UIImageView *)self->_targetQRImage layer];
  [layer setMeshTransform:v12];

  [(UIImageView *)self->_targetQRImage bounds];
  Width = CGRectGetWidth(v40);
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, Width}];
  [(UIImageView *)self->_targetQRImage position];
  [v15 setPosition:?];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v15 setBackgroundColor:whiteColor];

  layer2 = [v15 layer];
  v18 = Width * 0.5;
  [layer2 setCornerRadius:v18];

  targetQRImage = self->_targetQRImage;
  if (targetQRImage)
  {
    objc_msgSend_transform(targetQRImage);
  }

  else
  {
    memset(&v37[1], 0, sizeof(CGAffineTransform));
  }

  v37[0] = v37[1];
  [v15 setTransform:v37];
  [(UIView *)self->_circularContainerView addSubview:v15];
  objc_storeStrong(&self->_backgroundView, v15);
  v20 = objc_alloc(MEMORY[0x277D75D18]);
  [v15 bounds];
  v21 = [v20 initWithFrame:?];
  layer3 = [v21 layer];
  [layer3 setCornerRadius:v18];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v21 setBackgroundColor:whiteColor2];

  [v15 addSubview:v21];
  v24 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  layer4 = [v21 layer];
  [layer4 setCompositingFilter:v24];

  layer5 = [v21 layer];
  ringLayer = self->_ringLayer;
  self->_ringLayer = layer5;

  v28 = [(BCSScanningAnimator *)self _meshTransform:0];
  layer6 = [v15 layer];
  [layer6 setMeshTransform:v28];

  v30 = [BCSCircularEffectView alloc];
  [(UIImageView *)self->_targetQRImage bounds];
  v31 = [(BCSCircularEffectView *)v30 initWithFrame:?];
  circularEffectView = self->_circularEffectView;
  self->_circularEffectView = v31;

  [(UIView *)self->_circularContainerView addSubview:self->_circularEffectView];
  [(UIImageView *)self->_targetQRImage position];
  [(BCSCircularEffectView *)self->_circularEffectView setPosition:?];
  [(BCSScanningAnimator *)self _setUpBlurViewIfNeeded];
  if (animate)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __76__BCSScanningAnimator_animateAppClipCodeBounceWithCompletion_shouldAnimate___block_invoke;
    v34[3] = &unk_278D020C0;
    v34[4] = self;
    v35 = completionCopy;
    [(BCSScanningAnimator *)self _performCircularMeshTransform:0 completion:v34];
  }

  else
  {
    CGAffineTransformMakeScale(&v36, 0.0, 0.0);
    focusIndicator = self->_focusIndicator;
    v37[0] = v36;
    [(UIView *)focusIndicator setTransform:v37];
    [(BCSScanningAnimator *)self _revealCircularView];
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __76__BCSScanningAnimator_animateAppClipCodeBounceWithCompletion_shouldAnimate___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 56);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __76__BCSScanningAnimator_animateAppClipCodeBounceWithCompletion_shouldAnimate___block_invoke_2;
    v3[3] = &unk_278D02048;
    v4 = *(a1 + 40);
    [v2 animateRingsRotationWithCompletion:v3];
  }
}

- (void)showCoverView
{
  if (!self->_coverView && !self->_suppressCoverView)
  {
    superview = [(UIView *)self->_focusIndicator superview];
    v4 = [MEMORY[0x277D75210] _effectWithBlurRadius:10.0 scale:0.35];
    v5 = objc_alloc(MEMORY[0x277D75D68]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    coverView = self->_coverView;
    self->_coverView = v6;

    [(UIVisualEffectView *)self->_coverView setAutoresizingMask:18];
    [(UIVisualEffectView *)self->_blurView frame];
    [(UIVisualEffectView *)self->_coverView setFrame:?];
    [superview addSubview:self->_coverView];
    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__BCSScanningAnimator_showCoverView__block_invoke;
    v10[3] = &unk_278D020E8;
    v10[4] = self;
    v9 = v4;
    v11 = v9;
    [v8 animateWithDuration:v10 animations:0.35];
  }
}

- (void)reset
{
  [(UIVisualEffectView *)self->_blurView removeFromSuperview];
  blurView = self->_blurView;
  self->_blurView = 0;

  [(BCSDissolveEffectView *)self->_platterView removeFromSuperview];
  platterView = self->_platterView;
  self->_platterView = 0;

  [(UIVisualEffectView *)self->_coverView removeFromSuperview];
  coverView = self->_coverView;
  self->_coverView = 0;

  [(UIView *)self->_circularContainerView removeFromSuperview];
  circularContainerView = self->_circularContainerView;
  self->_circularContainerView = 0;
}

@end