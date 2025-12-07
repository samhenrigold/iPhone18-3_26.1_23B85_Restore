@interface TSDCanvasZoomTracker
- (TSDCanvasZoomTracker)initWithCanvasLayer:(id)layer;
- (void)p_finishZoomWithFinalScaleFactor:(double)factor contentOffset:(CGPoint)offset;
- (void)zoomWithScale:(double)scale velocity:(double)velocity locationInView:(CGPoint)view phase:(int)phase;
@end

@implementation TSDCanvasZoomTracker

- (TSDCanvasZoomTracker)initWithCanvasLayer:(id)layer
{
  v5.receiver = self;
  v5.super_class = TSDCanvasZoomTracker;
  result = [(TSDCanvasZoomTracker *)&v5 init];
  if (result)
  {
    result->mCanvasLayer = layer;
    *&result->mSnapsViewScale = 257;
  }

  return result;
}

- (void)zoomWithScale:(double)scale velocity:(double)velocity locationInView:(CGPoint)view phase:(int)phase
{
  y = view.y;
  x = view.x;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:objc_loadWeak(&self->mDelegate) selector:sel_canvasZoomTrackerDidEndViewScaleFeedback_ object:self];
  controller = [(TSDCanvasLayer *)self->mCanvasLayer controller];
  enclosingScrollView = [(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] enclosingScrollView];
  v12 = MEMORY[0x277CBF348];
  switch(phase)
  {
    case 0:
LABEL_8:
      mCanvasLayer = self->mCanvasLayer;
      if (mCanvasLayer)
      {
        objc_msgSend_affineTransform(mCanvasLayer);
      }

      else
      {
        memset(&v232, 0, sizeof(v232));
      }

      v16 = *&v232.c;
      *&self->mSavedTransform.a = *&v232.a;
      *&self->mSavedTransform.c = v16;
      *&self->mSavedTransform.tx = *&v232.tx;
      [(TSKScrollView *)enclosingScrollView contentOffset];
      self->mSavedContentOffset.x = v17;
      self->mSavedContentOffset.y = v18;
      self->mHasGestureOrigin = 0;
      self->mGestureOffset = *v12;
      [(TSDInteractiveCanvasController *)controller i_viewWillBeginZooming];
      self->mIsZooming = 1;
      self->mZoomVelocitySampleCount = 0;
      self->mZoomVelocity = 0.0;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->mZoomStartTime = v19;
      break;
    case 1:
      if (self->mIsZooming)
      {
        break;
      }

      goto LABEL_8;
    case 3:
      if (self->mIsShowingZoomHUD)
      {
        [objc_loadWeak(&self->mDelegate) canvasZoomTrackerDidEndViewScaleFeedback:self];
      }

      v13 = self->mCanvasLayer;
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v232.a = *MEMORY[0x277CBF2C0];
      *&v232.c = v14;
      *&v232.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(TSDCanvasLayer *)v13 setAffineTransform:&v232];
      [(TSDInteractiveCanvasController *)controller viewDidEndZooming];
      [objc_loadWeak(&self->mDelegate) canvasZoomTrackerDidFinish:self];
      return;
  }

  mZoomVelocitySampleCount = self->mZoomVelocitySampleCount;
  v21 = velocity + mZoomVelocitySampleCount++ * self->mZoomVelocity;
  self->mZoomVelocity = v21 / mZoomVelocitySampleCount;
  self->mZoomVelocitySampleCount = mZoomVelocitySampleCount;
  [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
  v23 = v22;
  [(TSDCanvasLayer *)self->mCanvasLayer minimumPinchViewScale];
  v25 = v24;
  [(TSDCanvasLayer *)self->mCanvasLayer maximumPinchViewScale];
  v27 = v26;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v29 = v28 - self->mZoomStartTime;
  v30 = 0.2;
  if (phase == 2 && v29 < 0.2 && fabs(self->mZoomVelocity) > 0.5)
  {
    [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
    [(TSDInteractiveCanvasController *)controller i_nextCanvasViewScaleDetentForProposedViewScale:self->mZoomVelocity > 0.0 greater:?];
    v32 = v31;
    if (self->mIsShowingZoomHUD)
    {
      v33 = 1;
    }

    else
    {
      v33 = 1;
      if ([(TSDCanvasLayer *)self->mCanvasLayer showsScaleFeedback])
      {
        [objc_loadWeak(&self->mDelegate) canvasZoomTracker:self willBeginViewScaleFeedbackWithFastPinch:1];
        self->mIsShowingZoomHUD = 1;
      }
    }
  }

  else
  {
    if (v29 > 0.2 && !self->mIsShowingZoomHUD && [(TSDCanvasLayer *)self->mCanvasLayer showsScaleFeedback])
    {
      [objc_loadWeak(&self->mDelegate) canvasZoomTracker:self willBeginViewScaleFeedbackWithFastPinch:0];
      self->mIsShowingZoomHUD = 1;
    }

    v32 = v23 * scale;
    if (phase == 2)
    {
      [(TSDInteractiveCanvasController *)controller i_adjustViewScale:v23 * scale, v30];
      v32 = v34;
    }

    v33 = 0;
  }

  TSUClamp();
  v36 = v35;
  if ([(TSDCanvasZoomTracker *)self snapsViewScale])
  {
    [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
    [(TSDInteractiveCanvasController *)controller i_viewScaleForProposedViewScale:v36 originalViewScale:v37];
    v36 = v38;
  }

  if (phase == 2)
  {
    [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
    [(TSDInteractiveCanvasController *)controller i_canvasCenterOffsetForProposedViewScale:v36 originalViewScale:v39];
    v212 = v40;
    v42 = v41;
    v32 = v36;
  }

  else
  {
    v42 = *(MEMORY[0x277CBF3A8] + 8);
    v212 = *MEMORY[0x277CBF3A8];
  }

  if (v32 >= v25)
  {
    if (v32 > v27)
    {
      v32 = v27 + (1.0 - 3.0 / (v32 - v27 + 3.0)) * 0.8;
    }
  }

  else
  {
    v32 = v25 + (1.0 - 3.0 / (v25 - v32 + 3.0)) * -0.8;
  }

  [(TSDCanvasLayer *)self->mCanvasLayer unscaledSize];
  v44 = v43;
  v46 = v45;
  [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
  TSDMultiplySizeScalar(v44, v46, v47);
  v48 = TSDRectWithSize();
  v208 = v49;
  v52 = TSDCenterOfRect(v48, v50, v49, v51);
  v204 = v53;
  v206 = v52;
  [(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] convertPoint:[(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] superview] toView:x, y];
  v55 = v54;
  v57 = v56;
  if (self->mHasGestureOrigin)
  {
    mZoomOrigin = self->mZoomOrigin;
  }

  else
  {
    memset(&v232, 0, sizeof(v232));
    v58 = self->mCanvasLayer;
    if (v58)
    {
      objc_msgSend_affineTransform(v58);
    }

    else
    {
      memset(&v231, 0, sizeof(v231));
    }

    CGAffineTransformInvert(&v232, &v231);
    mZoomOrigin = vaddq_f64(*&v232.tx, vmlaq_n_f64(vmulq_n_f64(*&v232.c, y), *&v232.a, x));
    self->mZoomOrigin = mZoomOrigin;
    self->mGestureOrigin.x = v55;
    self->mGestureOrigin.y = v57;
    self->mHasGestureOrigin = 1;
  }

  if (phase != 2)
  {
    self->mGestureOffset.x = TSDSubtractPoints(v55, v57, self->mGestureOrigin.x);
    self->mGestureOffset.y = v59;
  }

  [(TSDCanvasLayer *)self->mCanvasLayer unscaledSize];
  v62 = TSDMultiplySizeScalar(v60, v61, v32);
  v64 = v63;
  [(TSKScrollView *)enclosingScrollView bounds];
  v66 = fmax((v62 - v65) * 0.5, 0.0);
  v68 = fmax((v64 - v67) * 0.5, 0.0);
  if (phase == 2)
  {
    TSUClamp();
    self->mGestureOffset.x = v69;
    TSUClamp();
    self->mGestureOffset.y = v70;
  }

  else if (![(TSDCanvasLayer *)self->mCanvasLayer isInfinite])
  {
    if ([(TSDCanvasZoomTracker *)self alwaysUsesTranslationSprings])
    {
      v71 = v32;
      v72 = 0.8;
    }

    else
    {
      [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
      v71 = v32;
      if (v32 >= 1.0 || v73 < 1.0)
      {
        v72 = 0.8;
      }

      else
      {
        v72 = 1.0;
      }
    }

    v75 = self->mGestureOffset.x;
    v76 = 0.0;
    v77 = 0.0;
    if (v75 != 0.0)
    {
      v78 = fabs(v75);
      v77 = v78 * fmax((v78 - v66) / v78, 0.0);
    }

    TSUClamp();
    v80 = v79;
    *v81.i64 = powf(v77, v72);
    v82.f64[0] = NAN;
    v82.f64[1] = NAN;
    v83 = vnegq_f64(v82);
    v85.i64[0] = *&self->mGestureOffset.x;
    v84 = self->mGestureOffset.y;
    v214 = v83;
    self->mGestureOffset.x = v80 + *vbslq_s8(v83, v81, v85).i64;
    if (v84 != 0.0)
    {
      v86 = fabs(v84);
      v76 = v86 * fmax((v86 - v68) / v86, 0.0);
    }

    TSUClamp();
    v88 = v87;
    *v89.i64 = powf(v76, v72);
    v90.i64[0] = *&self->mGestureOffset.y;
    self->mGestureOffset.y = v88 + *vbslq_s8(v214, v89, v90).i64;
    v32 = v71;
  }

  v215 = v42;
  if (self->mIsShowingZoomHUD)
  {
    [objc_loadWeak(&self->mDelegate) canvasZoomTracker:self willUpdateViewScaleFeedbackWithScale:v36];
  }

  v210 = v36;
  [(TSDCanvasLayer *)self->mCanvasLayer bounds];
  v92 = v91;
  v93 = TSDRectWithSize();
  v97 = TSDCenterOfRect(v93, v94, v95, v96);
  v202 = v92;
  v98 = TSDSubtractPoints(mZoomOrigin.f64[0], mZoomOrigin.f64[1], v92);
  v100 = TSDSubtractPoints(v98, v99, v97);
  v102 = v101;
  [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
  v103 = v32;
  v105 = v32 / v104;
  [(TSKScrollView *)enclosingScrollView contentOffset];
  v211 = v106;
  v107 = self->mGestureOffset.x;
  v108 = self->mGestureOffset.y;
  v109 = *&self->mSavedTransform.c;
  *&v231.a = *&self->mSavedTransform.a;
  *&v231.c = v109;
  *&v231.tx = *&self->mSavedTransform.tx;
  CGAffineTransformTranslate(&v232, &v231, v107, v108);
  v231 = v232;
  CGAffineTransformTranslate(&v232, &v231, v100, v102);
  v231 = v232;
  CGAffineTransformScale(&v232, &v231, v105, v105);
  v231 = v232;
  CGAffineTransformTranslate(&v232, &v231, -v100, -v102);
  v229 = *&v232.a;
  v230 = *&v232.c;
  tx = v232.tx;
  ty = v232.ty;
  v112 = v12->y;
  v200 = v12->x;
  memset(&v232, 0, sizeof(v232));
  CGAffineTransformMakeTranslation(&v232, v212 - v200, v42 - v112);
  *&t1.a = v229;
  *&t1.c = v230;
  t1.tx = tx;
  t1.ty = ty;
  t2 = v232;
  CGAffineTransformConcat(&v231, &t1, &t2);
  v229 = *&v231.a;
  v230 = *&v231.c;
  v113 = *&v231.tx;
  if (phase != 2)
  {
    *&v231.a = v229;
    *&v231.c = v230;
    [(TSDCanvasLayer *)self->mCanvasLayer setAffineTransform:&v231];
    [(TSDInteractiveCanvasController *)controller i_viewIsZoomingAtPoint:*&mZoomOrigin];
    [(TSDInteractiveCanvasController *)controller i_viewDidZoomToViewScale:v36];
    return;
  }

  v189 = v112;
  v218 = v103;
  v187 = TSDSubtractPoints(v206, v204, v202);
  v188 = v114;
  v115 = TSDSubtractPoints(v187, v114, v97);
  v233.origin.x = TSDRectWithCenterAndSize(v115, v116, v208);
  *&v231.a = v229;
  *&v231.c = v230;
  *&v231.tx = v113;
  v205 = v233.origin.y;
  v207 = v233.origin.x;
  height = v233.size.height;
  width = v233.size.width;
  v234 = CGRectApplyAffineTransform(v233, &v231);
  v117 = v234.size.width;
  v118 = v234.size.height;
  v209 = v97;
  v119 = TSDAddPoints(v234.origin.x, v234.origin.y, v97);
  v235.origin.x = TSDSubtractPoints(v119, v120, v211);
  v235.size.width = v117;
  v235.size.height = v118;
  v236 = CGRectOffset(v235, -v212, -v42);
  v121 = v236.origin.x;
  v122 = v236.origin.y;
  v123 = v236.size.width;
  v124 = v236.size.height;
  [(TSDCanvasLayer *)self->mCanvasLayer contentInset];
  v194 = v125;
  v197 = v123 - (v125 + v126);
  v198 = v127;
  v193 = v127 + v128;
  [(TSKScrollView *)enclosingScrollView bounds];
  v129 = TSDRectWithSize() + v212 * 2.0;
  v131 = v130 + v42 * 2.0;
  v133 = v132 - v212 * 2.0;
  v135 = v134 - v215 * 2.0;
  v237.origin.x = v121;
  v237.origin.y = v122;
  v237.size.width = v123;
  v237.size.height = v124;
  MaxX = CGRectGetMaxX(v237);
  v195 = v121;
  v238.origin.x = v121;
  v136 = v124;
  v199 = v122;
  v238.origin.y = v122;
  v238.size.width = v123;
  v238.size.height = v124;
  MaxY = CGRectGetMaxY(v238);
  v239.origin.x = v129;
  v239.origin.y = v131;
  v239.size.width = v133;
  v239.size.height = v135;
  v184 = CGRectGetMaxX(v239);
  v190 = v129;
  v191 = v131;
  v240.origin.x = v129;
  v240.origin.y = v131;
  v137 = v135;
  v240.size.width = v133;
  v240.size.height = v135;
  v192 = CGRectGetMaxY(v240);
  [(TSKScrollView *)enclosingScrollView contentOffset];
  [(TSDInteractiveCanvasController *)controller sizeOfScrollViewEnclosingCanvas];
  TSDRectWithOriginAndSize();
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  if ([(TSDCanvasLayer *)self->mCanvasLayer verticallyCenteredInScrollView]&& [(TSDCanvasLayer *)self->mCanvasLayer avoidKeyboardWhenVerticallyCenteredInScrollView])
  {
    [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
    v145 = v145 - v146;
    v192 = v192 - v146;
  }

  v147 = v195 + v194;
  v148 = v136 - v193;
  v149 = TSDCenterOfRect(v139, v141, v143, v145);
  v151 = TSDAddPoints(v149, v150, v212);
  v196 = v152;
  if (v197 >= v133)
  {
    if (v147 <= v190)
    {
      v155 = v209;
      if (MaxX >= v184)
      {
        v154 = *&v113;
      }

      else
      {
        v154 = *&v113 + v184 - MaxX;
      }
    }

    else
    {
      v154 = *&v113 + v190 - v147;
      v155 = v209;
    }

    v153 = v154 - v212;
  }

  else
  {
    if ([(TSDCanvasLayer *)self->mCanvasLayer horizontallyCenteredInScrollView])
    {
      v153 = v151 - v187;
    }

    else
    {
      v153 = *&v113 + v200 - v147;
    }

    v155 = v209;
  }

  v156 = v199 + v198;
  if (v148 < v137)
  {
    v157 = v211;
    if ([(TSDCanvasLayer *)self->mCanvasLayer verticallyCenteredInScrollView])
    {
      v158 = v196 - v188;
    }

    else
    {
      v158 = *(&v113 + 1) + v189 - v156;
    }

    goto LABEL_88;
  }

  v157 = v211;
  if (v156 <= v191)
  {
    if (MaxY >= v192)
    {
      v160 = *(&v113 + 1);
      goto LABEL_87;
    }

    v159 = v192 - MaxY;
  }

  else
  {
    v159 = v191 - v156;
  }

  v160 = *(&v113 + 1) + v159;
LABEL_87:
  v158 = v160 - v215;
LABEL_88:
  *&v231.a = v229;
  *&v231.c = v230;
  v231.tx = v153;
  v231.ty = v158;
  v241.origin.y = v205;
  v241.origin.x = v207;
  v241.size.height = height;
  v241.size.width = width;
  v242 = CGRectApplyAffineTransform(v241, &v231);
  v161 = v242.size.width;
  v162 = v242.size.height;
  v163 = TSDAddPoints(v242.origin.x, v242.origin.y, v155);
  v243.origin.x = TSDSubtractPoints(v163, v164, v157);
  v243.size.width = v161;
  v243.size.height = v162;
  v244 = CGRectOffset(v243, -v212, -v215);
  v165 = v244.origin.x;
  v166 = v244.origin.y;
  v167 = v244.size.width;
  v168 = v244.size.height;
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)controller canvas] contentsScale];
  v170 = -TSDRoundedRectForScale(v165, v166, v167, v168, v169);
  v172 = -v171;
  [(TSDInteractiveCanvasController *)controller clampedUnscaledContentOffset:TSDMultiplyPointScalar(v170 forViewScale:-v171, 1.0 / v218)];
  v175 = TSDMultiplyPointScalar(v173, v174, v218);
  v177 = v176;
  if ([(TSDCanvasZoomTracker *)self animateTransform])
  {
    v178 = v153 + v170 - v175;
    v179 = v158 + v172 - v177;
    v180 = self->mCanvasLayer;
    if (v180)
    {
      objc_msgSend_affineTransform(v180);
    }

    else
    {
      memset(&v231, 0, sizeof(v231));
    }

    v182 = v218;
    *&t1.a = v229;
    *&t1.c = v230;
    t1.tx = v178;
    t1.ty = v179;
    if (CGAffineTransformEqualToTransform(&t1, &v231))
    {
      v181 = 0;
    }

    else
    {
      [objc_loadWeak(&self->mDelegate) canvasZoomTrackerWillBeginFinalZoomAnimation:self];
      v221[0] = MEMORY[0x277D85DD0];
      v221[1] = 3221225472;
      v221[2] = __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke;
      v221[3] = &unk_279D49590;
      v222 = v229;
      v223 = v230;
      v224 = v178;
      v225 = v179;
      v221[4] = self;
      v221[5] = controller;
      v226 = v210;
      v220[0] = MEMORY[0x277D85DD0];
      v220[1] = 3221225472;
      v220[2] = __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke_2;
      v220[3] = &unk_279D476E0;
      v220[4] = self;
      *&v220[5] = v218;
      *&v220[6] = v175;
      *&v220[7] = v177;
      v219[0] = MEMORY[0x277D85DD0];
      v219[1] = 3221225472;
      v219[2] = __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke_3;
      v219[3] = &unk_279D49018;
      v219[4] = v220;
      [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v221 options:v219 animations:0.200000003 completion:0.0];
      v181 = 1;
    }
  }

  else
  {
    v181 = 0;
    v182 = v218;
  }

  if (self->mIsShowingZoomHUD)
  {
    Weak = objc_loadWeak(&self->mDelegate);
    if (v33)
    {
      [Weak performSelector:sel_canvasZoomTrackerDidEndViewScaleFeedback_ withObject:self afterDelay:0.5];
    }

    else
    {
      [Weak canvasZoomTrackerDidEndViewScaleFeedback:self];
    }

    self->mIsShowingZoomHUD = 0;
  }

  if ((v181 & 1) == 0)
  {
    [(TSDCanvasZoomTracker *)self p_finishZoomWithFinalScaleFactor:v182 contentOffset:v175, v177];
  }
}

uint64_t __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v5[2] = *(a1 + 80);
  [v2 setAffineTransform:v5];
  return [*(a1 + 40) i_viewDidZoomToViewScale:*(a1 + 96)];
}

uint64_t __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke_2(double *a1)
{
  [objc_loadWeak((*(a1 + 4) + 16)) canvasZoomTrackerDidEndFinalZoomAnimation:*(a1 + 4)];
  v2 = *(a1 + 4);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 p_finishZoomWithFinalScaleFactor:v3 contentOffset:{v4, v5}];
}

- (void)p_finishZoomWithFinalScaleFactor:(double)factor contentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  controller = [(TSDCanvasLayer *)self->mCanvasLayer controller];
  [(TSDCanvasLayer *)self->mCanvasLayer setViewScale:factor];
  mCanvasLayer = self->mCanvasLayer;
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v10;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDCanvasLayer *)mCanvasLayer setAffineTransform:v14];
  [(TSDCanvasLayer *)self->mCanvasLayer bounds];
  v12 = TSDSubtractPoints(x, y, v11);
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] enclosingScrollView] setContentOffset:v12, v13];
  [(TSDInteractiveCanvasController *)controller viewDidEndZooming];
  [(TSDInteractiveCanvasController *)controller i_recordUserViewScale];
  self->mIsZooming = 0;
  [objc_loadWeak(&self->mDelegate) canvasZoomTrackerDidFinish:self];
}

@end