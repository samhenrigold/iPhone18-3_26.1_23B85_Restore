@interface IMTypingIndicatorLayer
+ (CGPoint)largeBubbleGrowOffset;
+ (CGPoint)mediumBubbleGrowOffset;
+ (CGPoint)smallBubbleGrowOffset;
+ (CGPoint)thinkingDotsOffset;
+ (CGRect)iconImageFrame;
+ (CGRect)largeBubbleFrame;
+ (CGRect)mediumBubbleFrame;
+ (CGRect)smallBubbleFrame;
+ (CGSize)defaultSize;
- (IMTypingIndicatorLayer)init;
- (double)convertedCurrentMediaTime;
- (id)_largeBubbleGrowAnimationsWithSpeed:(double)speed offset:(CGPoint)offset;
- (id)_largeBubblePulseAnimationWithSpeed:(double)speed delay:(double)delay;
- (id)_mediumBubbleGrowAnimationsWithSpeed:(double)speed offset:(CGPoint)offset;
- (id)_mediumBubblePulseAnimationWithSpeed:(double)speed delay:(double)delay;
- (id)_smallBubbleGrowAnimationsWithSpeed:(double)speed offset:(CGPoint)offset;
- (id)_smallBubblePulseAnimationWithSpeed:(double)speed delay:(double)delay;
- (id)initHighlighted:(BOOL)highlighted;
- (id)resolvedColor:(id)color forTraitCollection:(id)collection;
- (void)_buildIconImage;
- (void)_buildThinkingDots;
- (void)_setup;
- (void)_updateBubbleColors;
- (void)_updateBubbleOpacity;
- (void)_updateForImage;
- (void)setBubbleColor:(id)color;
- (void)setBubbleOpacity:(double)opacity;
- (void)setIconImage:(id)image;
- (void)setTraitCollection:(id)collection;
- (void)startGrowAnimationWithCompletionBlock:(id)block;
- (void)startPulseAnimation;
- (void)startShrinkAnimationWithCompletionBlock:(id)block;
- (void)stopAnimation;
- (void)stopPulseAnimation;
@end

@implementation IMTypingIndicatorLayer

- (IMTypingIndicatorLayer)init
{
  v9.receiver = self;
  v9.super_class = IMTypingIndicatorLayer;
  v2 = [(IMTypingIndicatorLayer *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend__setup(v2, v3, v4, v6, v5);
  }

  return v7;
}

- (id)initHighlighted:(BOOL)highlighted
{
  v11.receiver = self;
  v11.super_class = IMTypingIndicatorLayer;
  v4 = [(IMTypingIndicatorLayer *)&v11 init];
  v9 = v4;
  if (v4)
  {
    v4->_highlighted = highlighted;
    objc_msgSend__setup(v4, v5, v6, v8, v7);
  }

  return v9;
}

- (double)convertedCurrentMediaTime
{
  v3.n128_f64[0] = CACurrentMediaTime();

  MEMORY[0x2821F9670](self, sel_convertTime_fromLayer_, 0, v3);
  return result;
}

- (void)setBubbleColor:(id)color
{
  colorCopy = color;
  if (self->_bubbleColor != colorCopy)
  {
    v10 = colorCopy;
    objc_storeStrong(&self->_bubbleColor, color);
    objc_msgSend__updateBubbleColors(self, v6, v7, v9, v8);
    colorCopy = v10;
  }
}

- (void)setBubbleOpacity:(double)opacity
{
  if (self->_bubbleOpacity != opacity)
  {
    self->_bubbleOpacity = opacity;
    objc_msgSend__updateBubbleOpacity(self, a2, v3, *&opacity, v4);
  }
}

- (id)resolvedColor:(id)color forTraitCollection:(id)collection
{
  colorCopy = color;
  v9 = colorCopy;
  if (collection)
  {
    v10 = objc_msgSend_resolvedColorWithTraitCollection_(colorCopy, v6, collection, v8, v7);
  }

  else
  {
    v10 = colorCopy;
  }

  v11 = v10;

  return v11;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_traitCollection != collectionCopy)
  {
    v43 = collectionCopy;
    objc_storeStrong(&self->_traitCollection, collection);
    v10 = objc_msgSend_defaultThinkingDotColor(self, v6, v7, v9, v8);
    v13 = objc_msgSend_resolvedColor_forTraitCollection_(self, v11, v10, v12, self->_traitCollection);
    thinkingDotColor = self->_thinkingDotColor;
    self->_thinkingDotColor = v13;

    v19 = objc_msgSend_defaultBubbleColor(self, v15, v16, v18, v17);
    v22 = objc_msgSend_resolvedColor_forTraitCollection_(self, v20, v19, v21, self->_traitCollection);
    bubbleColor = self->_bubbleColor;
    self->_bubbleColor = v22;

    objc_msgSend__updateBubbleColors(self, v24, v25, v27, v26);
    thinkingDot = self->_thinkingDot;
    v33 = objc_msgSend_thinkingDotColor(self, v29, v30, v32, v31);
    v34 = v33;
    v39 = objc_msgSend_CGColor(v34, v35, v36, v38, v37);
    objc_msgSend_setBackgroundColor_(thinkingDot, v40, v39, v42, v41);

    collectionCopy = v43;
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  iconImage = self->_iconImage;
  if (iconImage != imageCopy)
  {
    iconImage = objc_msgSend_isEqual_(iconImage, imageCopy, imageCopy, v7, v6);
    if ((iconImage & 1) == 0)
    {
      objc_storeStrong(&self->_iconImage, image);
      iconImage = objc_msgSend__updateForImage(self, v9, v10, v12, v11);
    }
  }

  MEMORY[0x2821F96F8](iconImage);
}

- (void)_setup
{
  v205 = objc_msgSend_defaultThinkingDotColor(self, a2, v2, v4, v3);
  v8 = objc_msgSend_resolvedColor_forTraitCollection_(self, v6, v205, v7, self->_traitCollection);
  thinkingDotColor = self->_thinkingDotColor;
  self->_thinkingDotColor = v8;

  v14 = objc_msgSend_defaultBubbleColor(self, v10, v11, v13, v12);
  v17 = objc_msgSend_resolvedColor_forTraitCollection_(self, v15, v14, v16, self->_traitCollection);
  bubbleColor = self->_bubbleColor;
  self->_bubbleColor = v17;

  objc_msgSend_defaultThinkingDotOpacity(self, v19, v20, v22, v21);
  *&self->_thinkingDotOpacity = v23.n128_u64[0];
  objc_msgSend_defaultBubbleOpacity(self, v24, v25, v23, v26);
  *&self->_bubbleOpacity = v27.n128_u64[0];
  objc_msgSend_frame(self, v28, v29, v27, v30);
  v32 = v31;
  v34 = v33;
  v35 = objc_opt_class();
  objc_msgSend_defaultSize(v35, v36, v37, v39, v38);
  v41 = v40;
  v42.n128_u64[0] = v32;
  objc_msgSend_setFrame_(self, v43, v44, v42, v45, v34, v41, v46);
  v47 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  bubbleContainer = self->_bubbleContainer;
  self->_bubbleContainer = v47;

  v49 = self->_bubbleContainer;
  objc_msgSend_bounds(self, v50, v51, v53, v52);
  objc_msgSend_setFrame_(v49, v54, v55, v57, v56);
  objc_msgSend_setAllowsGroupOpacity_(self->_bubbleContainer, v58, 1, v60, v59);
  objc_msgSend_addSublayer_(self, v61, self->_bubbleContainer, v63, v62);
  v64 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  smallBubble = self->_smallBubble;
  self->_smallBubble = v64;

  v66 = objc_opt_class();
  objc_msgSend_smallBubbleFrame(v66, v67, v68, v70, v69);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79.n128_f64[0] = v75 * 0.5;
  objc_msgSend_setCornerRadius_(self->_smallBubble, v80, v81, v79, v82);
  v83.n128_u64[0] = 0x3FD45A1CAC083127;
  objc_msgSend_setAnchorPoint_(self->_smallBubble, v84, v85, v83, v86, 0.318);
  v87.n128_u64[0] = v72;
  objc_msgSend_setPosition_(self->_smallBubble, v88, v89, v87, v90, v74);
  v91.n128_u64[0] = 0;
  objc_msgSend_setBounds_(self->_smallBubble, v92, v93, v91, v94, 0.0, v76, v78);
  objc_msgSend_addSublayer_(self->_bubbleContainer, v95, self->_smallBubble, v97, v96);
  v98 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  mediumBubble = self->_mediumBubble;
  self->_mediumBubble = v98;

  v100 = objc_opt_class();
  objc_msgSend_mediumBubbleFrame(v100, v101, v102, v104, v103);
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v113.n128_f64[0] = v111 * 0.5;
  objc_msgSend_setCornerRadius_(self->_mediumBubble, v114, v115, v113, v116);
  v117.n128_u64[0] = 0x3FD4DD2F1A9FBE77;
  objc_msgSend_setAnchorPoint_(self->_mediumBubble, v118, v119, v117, v120, 0.37);
  v121.n128_u64[0] = v106;
  objc_msgSend_setPosition_(self->_mediumBubble, v122, v123, v121, v124, v108);
  v125.n128_u64[0] = 0;
  objc_msgSend_setBounds_(self->_mediumBubble, v126, v127, v125, v128, 0.0, v110, v112);
  objc_msgSend_addSublayer_(self->_bubbleContainer, v129, self->_mediumBubble, v131, v130);
  v132 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  largeBubble = self->_largeBubble;
  self->_largeBubble = v132;

  v134 = objc_opt_class();
  objc_msgSend_largeBubbleFrame(v134, v135, v136, v138, v137);
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147.n128_f64[0] = v145 * 0.5;
  objc_msgSend_setCornerRadius_(self->_largeBubble, v148, v149, v147, v150);
  v151.n128_u64[0] = 0x3FC7AE147AE147AELL;
  objc_msgSend_setAnchorPoint_(self->_largeBubble, v152, v153, v151, v154, 0.28);
  v155.n128_u64[0] = v140;
  objc_msgSend_setPosition_(self->_largeBubble, v156, v157, v155, v158, v142);
  v159.n128_u64[0] = 0;
  objc_msgSend_setBounds_(self->_largeBubble, v160, v161, v159, v162, 0.0, v144, v146);
  objc_msgSend_addSublayer_(self->_bubbleContainer, v163, self->_largeBubble, v165, v164);
  v166 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  thinkingDotContainer = self->_thinkingDotContainer;
  self->_thinkingDotContainer = v166;

  v168 = self->_thinkingDotContainer;
  v173 = objc_msgSend_largeBubble(self, v169, v170, v172, v171);
  objc_msgSend_anchorPoint(v173, v174, v175, v177, v176);
  objc_msgSend_setAnchorPoint_(v168, v178, v179, v181, v180);

  v182.n128_u64[0] = v140;
  objc_msgSend_setPosition_(self->_thinkingDotContainer, v183, v184, v182, v185, v142);
  v186.n128_u64[0] = 0;
  objc_msgSend_setBounds_(self->_thinkingDotContainer, v187, v188, v186, v189, 0.0, v144, v146);
  objc_msgSend_addSublayer_(self, v190, self->_thinkingDotContainer, v192, v191);
  objc_msgSend__updateBubbleColors(self, v193, v194, v196, v195);
  objc_msgSend__updateBubbleOpacity(self, v197, v198, v200, v199);
  objc_msgSend__updateForImage(self, v201, v202, v204, v203);
}

- (void)_updateForImage
{
  v46 = objc_msgSend_largeBubble(self, a2, v2, v4, v3);
  objc_msgSend_frame(v46, v6, v7, v9, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  objc_msgSend_largeBubbleFrame(v16, v17, v18, v20, v19);
  v26 = v25;
  if (self->_iconImage)
  {
    v27 = objc_opt_class();
    objc_msgSend_iconImageFrame(v27, v28, v29, v31, v30);
    v24.n128_f64[0] = CGRectGetMaxX(v48);
  }

  else
  {
    v24.n128_u64[0] = 0;
  }

  v32 = v26 + v24.n128_f64[0];
  v33 = objc_msgSend_largeBubble(self, v21, v22, v24, v23);
  v34.n128_u64[0] = v11;
  objc_msgSend_setFrame_(v33, v35, v36, v34, v37, v13, v32, v15);

  objc_msgSend__buildIconImage(self, v38, v39, v41, v40);
  objc_msgSend__buildThinkingDots(self, v42, v43, v45, v44);
}

- (void)_buildIconImage
{
  v6 = objc_msgSend_iconImageLayer(self, a2, v2, v4, v3);
  iconImage = self->_iconImage;
  if (iconImage)
  {
    if (v6)
    {
      v76 = v6;
      objc_msgSend_setContents_(v6, v7, iconImage, v9, v8);
    }

    else
    {
      v76 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v7, iconImage, v9, v8);
      v14 = objc_opt_class();
      objc_msgSend_iconImageFrame(v14, v15, v16, v18, v17);
      v20 = v19;
      objc_msgSend_setFrame_(v76, v21, v22, v24, v23);
      v25 = self->_iconImage;
      v30 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v26, v27, v29, v28);
      objc_msgSend_scale(v30, v31, v32, v34, v33);
      v36 = v35;

      v40.n128_u64[0] = 1.0;
      if (v36 == 1.0)
      {
        v41 = 73;
      }

      else
      {
        v42 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v37, v38, v40, v39);
        objc_msgSend_scale(v42, v43, v44, v46, v45);
        v48 = v47;

        if (v48 == 2.0)
        {
          v41 = 74;
        }

        else
        {
          v41 = 75;
        }
      }

      v49 = MEMORY[0x259C1A7F0]("LICreateIconForImage", @"MobileIcons");
      v50 = v49(v25, v41, 0);
      if (v50)
      {
        v54 = v50;
        objc_msgSend_setContents_(v76, v51, v50, v53, v52);
        CFAutorelease(v54);
      }

      else
      {
        objc_msgSend_setMasksToBounds_(v76, v51, 1, v53, v52);
        objc_msgSend_setCornerCurve_(v76, v58, *MEMORY[0x277CDA138], v60, v59);
        v61.n128_f64[0] = v20 * 0.5;
        objc_msgSend_setCornerRadius_(v76, v62, v63, v61, v64);
        objc_msgSend_setContents_(v76, v65, self->_iconImage, v67, v66);
      }

      objc_msgSend_setIconImageLayer_(self, v55, v76, v57, v56);
      v72 = objc_msgSend_largeBubble(self, v68, v69, v71, v70);
      objc_msgSend_addSublayer_(v72, v73, v76, v75, v74);
    }
  }

  else
  {
    v76 = v6;
    objc_msgSend_removeFromSuperlayer(v6, v7, 0, v9, v8);
    objc_msgSend_setIconImageLayer_(self, v11, 0, v13, v12);
  }
}

- (void)_buildThinkingDots
{
  v187[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2, v4, v3);
  v6.n128_u64[0] = 0;
  objc_msgSend_setAnimationDuration_(MEMORY[0x277CD9FF0], v7, v8, v6, v9);
  objc_msgSend_removeAllAnimations(self->_thinkingDot, v10, v11, v13, v12);
  objc_msgSend_removeFromSuperlayer(self->_thinkingDots, v14, v15, v17, v16);
  objc_msgSend_removeFromSuperlayer(self->_thinkingDot, v18, v19, v21, v20);
  thinkingDot = self->_thinkingDot;
  self->_thinkingDot = 0;

  thinkingDots = self->_thinkingDots;
  self->_thinkingDots = 0;

  v28 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v24, v25, v27, v26);
  v29 = self->_thinkingDot;
  self->_thinkingDot = v28;

  v30 = objc_opt_class();
  objc_msgSend_thinkingDotDiameter(v30, v31, v32, v34, v33);
  v36 = v35;
  v37.n128_u64[0] = 0;
  objc_msgSend_setFrame_(self->_thinkingDot, v38, v39, v37, v40, 0.0, v36, v36);
  v41.n128_f64[0] = v36 * 0.5;
  objc_msgSend_setCornerRadius_(self->_thinkingDot, v42, v43, v41, v44);
  v45 = self->_thinkingDot;
  v50 = objc_msgSend_thinkingDotColor(self, v46, v47, v49, v48);
  v51 = v50;
  v56 = objc_msgSend_CGColor(v51, v52, v53, v55, v54);
  objc_msgSend_setBackgroundColor_(v45, v57, v56, v59, v58);

  v60 = objc_opt_class();
  if (objc_msgSend_supportsTypingIndicatorAnimation(v60, v61, v62, v64, v63))
  {
    v69 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v65, @"opacity", v68, v67);
    v187[0] = &unk_28669A6C8;
    v70 = MEMORY[0x277CCABB0];
    objc_msgSend_thinkingDotOpacity(self, v71, v72, v74, v73);
    v79 = objc_msgSend_numberWithDouble_(v70, v75, v76, v78, v77);
    v187[1] = v79;
    v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, v187, v81, 2);
    objc_msgSend_setValues_(v69, v83, v82, v85, v84);

    objc_msgSend_setKeyTimes_(v69, v86, &unk_28669A760, v88, v87);
    objc_msgSend_setCalculationMode_(v69, v89, *MEMORY[0x277CDA070], v91, v90);
    v92.n128_u64[0] = 0.5;
    objc_msgSend_setDuration_(v69, v93, v94, v92, v95);
    v96.n128_u32[0] = 1061271823;
    LODWORD(v97) = 1014679044;
    LODWORD(v98) = 1058306785;
    LODWORD(v99) = 1.0;
    v103 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v100, v101, v96, v102, v97, v98, v99);
    objc_msgSend_setTimingFunction_(v69, v104, v103, v106, v105);

    v107.n128_u32[0] = 2139095040;
    objc_msgSend_setRepeatCount_(v69, v108, v109, v107, v110);
    objc_msgSend_setAutoreverses_(v69, v111, 1, v113, v112);
    objc_msgSend_setFillMode_(v69, v114, *MEMORY[0x277CDA230], v116, v115);
    objc_msgSend_addAnimation_forKey_(self->_thinkingDot, v117, v69, v118, @"Opacity");
  }

  else
  {
    v123 = self->_thinkingDot;
    objc_msgSend_thinkingDotOpacity(self, v65, v66, v68, v67);
    v124.n128_f32[0] = v124.n128_f64[0];
    objc_msgSend_setOpacity_(v123, v125, v126, v124, v127);
  }

  v128 = objc_msgSend_layer(MEMORY[0x277CD9F48], v119, v120, v122, v121);
  v129 = self->_thinkingDots;
  self->_thinkingDots = v128;

  v130 = objc_opt_class();
  objc_msgSend_thinkingDotsOffset(v130, v131, v132, v134, v133);
  v136 = v135.n128_f64[0];
  v138 = v137;
  v142 = objc_msgSend_iconImage(self, v139, v140, v135, v141);
  if (v142)
  {
    v143 = objc_opt_class();
    objc_msgSend_iconImageFrame(v143, v144, v145, v147, v146);
    MaxX = CGRectGetMaxX(v188);
    v149 = objc_opt_class();
    objc_msgSend_iconImageTrailingSpace(v149, v150, v151, v153, v152);
    v136 = MaxX + v154;
  }

  v155.n128_f64[0] = v136;
  objc_msgSend_setFrame_(self->_thinkingDots, v156, v157, v155, v158, v138, 0.0, 0.0);
  objc_msgSend_setInstanceCount_(self->_thinkingDots, v159, 3, v161, v160);
  v162 = self->_thinkingDots;
  v163 = objc_opt_class();
  objc_msgSend_thinkingDotSpace(v163, v164, v165, v167, v166);
  CATransform3DMakeTranslation(&v186, v168, 0.0, 0.0);
  objc_msgSend_setInstanceTransform_(v162, v169, &v186, v171, v170);
  v172.n128_u64[0] = 0.25;
  objc_msgSend_setInstanceDelay_(self->_thinkingDots, v173, v174, v172, v175);
  objc_msgSend_addSublayer_(self->_thinkingDots, v176, self->_thinkingDot, v178, v177);
  objc_msgSend_addSublayer_(self->_thinkingDotContainer, v179, self->_thinkingDots, v181, v180);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v182, v183, v185, v184);
}

- (void)_updateBubbleColors
{
  v6 = objc_msgSend_bubbleColor(self, a2, v2, v4, v3);
  v7 = v6;
  v12 = objc_msgSend_CGColor(v7, v8, v9, v11, v10);

  v17 = objc_msgSend_largeBubble(self, v13, v14, v16, v15);
  objc_msgSend_setBackgroundColor_(v17, v18, v12, v20, v19);

  v25 = objc_msgSend_mediumBubble(self, v21, v22, v24, v23);
  objc_msgSend_setBackgroundColor_(v25, v26, v12, v28, v27);

  v36 = objc_msgSend_smallBubble(self, v29, v30, v32, v31);
  objc_msgSend_setBackgroundColor_(v36, v33, v12, v35, v34);
}

- (void)_updateBubbleOpacity
{
  v6 = objc_msgSend_largeBubble(self, a2, v2, v4, v3);
  v7.n128_u32[0] = 1.0;
  objc_msgSend_setOpacity_(v6, v8, v9, v7, v10);

  v15 = objc_msgSend_mediumBubble(self, v11, v12, v14, v13);
  v16.n128_u32[0] = 1.0;
  objc_msgSend_setOpacity_(v15, v17, v18, v16, v19);

  v24 = objc_msgSend_smallBubble(self, v20, v21, v23, v22);
  v25.n128_u32[0] = 1.0;
  objc_msgSend_setOpacity_(v24, v26, v27, v25, v28);

  bubbleContainer = self->_bubbleContainer;
  objc_msgSend_bubbleOpacity(self, v30, v31, v33, v32);
  v37.n128_f32[0] = v37.n128_f64[0];

  objc_msgSend_setOpacity_(bubbleContainer, v34, v35, v37, v36);
}

- (id)_smallBubbleGrowAnimationsWithSpeed:(double)speed offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  speedCopy = speed;
  v202[3] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], a2, @"hidden", *&speed, v4);
  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, 1, v11, v10);
  objc_msgSend_setFromValue_(v8, v13, v12, v15, v14);

  v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v16, 0, v18, v17);
  objc_msgSend_setToValue_(v8, v20, v19, v22, v21);

  v23.n128_u64[0] = 0;
  objc_msgSend_setDuration_(v8, v24, v25, v23, v26);
  v27 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v8, v28, *MEMORY[0x277CDA238], v30, v29);
  objc_msgSend_setRemovedOnCompletion_(v8, v31, 1, v33, v32);
  v34 = objc_opt_class();
  objc_msgSend_smallBubbleGrowOffset(v34, v35, v36, v38, v37);
  v40 = v39.n128_f64[0];
  v42 = v41;
  v45 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v43, @"position.x", v39, v44);
  v46 = x;
  v47.n128_f32[0] = v46;
  v51 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v48, v49, v47, v50);
  v202[0] = v51;
  v52.n128_f64[0] = x + v40;
  v52.n128_f32[0] = x + v40;
  v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v53, v54, v52, v55);
  v202[1] = v56;
  v57.n128_f32[0] = x;
  v61 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v58, v59, v57, v60);
  v202[2] = v61;
  v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, v202, v63, 3);
  objc_msgSend_setValues_(v45, v65, v64, v67, v66);

  v68 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v45, v69, *MEMORY[0x277CDA060], v71, v70);
  v72.n128_u64[0] = 0x3FD999999999999ALL;
  objc_msgSend_setDuration_(v45, v73, v74, v72, v75);
  v76.n128_u32[0] = 0.25;
  LODWORD(v77) = 0.25;
  LODWORD(v78) = 1.0;
  LODWORD(v79) = 1036831949;
  v83 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v80, v81, v76, v82, v79, v77, v78);
  objc_msgSend_setTimingFunction_(v45, v84, v83, v86, v85);

  *&speedCopy = speedCopy;
  v87.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v45, v88, v89, v87, v90);
  objc_msgSend_setFillMode_(v45, v91, v27, v93, v92);
  objc_msgSend_setRemovedOnCompletion_(v45, v94, 1, v96, v95);
  v100 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v97, @"position.y", v99, v98);
  v101 = y;
  v102.n128_f32[0] = v101;
  v106 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v103, v104, v102, v105);
  v201[0] = v106;
  v107.n128_f64[0] = y + v42;
  v107.n128_f32[0] = y + v42;
  v111 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v108, v109, v107, v110);
  v201[1] = v111;
  v112.n128_f32[0] = y;
  v116 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v113, v114, v112, v115);
  v201[2] = v116;
  v119 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v117, v201, v118, 3);
  objc_msgSend_setValues_(v100, v120, v119, v122, v121);

  objc_msgSend_setCalculationMode_(v100, v123, v68, v125, v124);
  v126.n128_u64[0] = 0x3FD999999999999ALL;
  objc_msgSend_setDuration_(v100, v127, v128, v126, v129);
  v130.n128_u32[0] = 1051315048;
  LODWORD(v131) = 1057991709;
  LODWORD(v132) = 1064582806;
  LODWORD(v133) = 1036831949;
  v137 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v134, v135, v130, v136, v133, v131, v132);
  objc_msgSend_setTimingFunction_(v100, v138, v137, v140, v139);

  v141.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v100, v142, v143, v141, v144);
  objc_msgSend_setFillMode_(v100, v145, v27, v147, v146);
  objc_msgSend_setRemovedOnCompletion_(v100, v148, 1, v150, v149);
  v154 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v151, @"transform.scale.xy", v153, v152);
  v155.n128_u64[0] = 0;
  v159 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v156, v157, v155, v158);
  objc_msgSend_setFromValue_(v154, v160, v159, v162, v161);

  v163.n128_u32[0] = 1.0;
  v167 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v164, v165, v163, v166);
  objc_msgSend_setToValue_(v154, v168, v167, v170, v169);

  v171.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v154, v172, v173, v171, v174);
  v175.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v154, v176, v177, v175, v178);
  v179.n128_u32[0] = 0.25;
  LODWORD(v180) = 0.25;
  LODWORD(v181) = 1.0;
  LODWORD(v182) = 1036831949;
  v186 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v183, v184, v179, v185, v182, v180, v181);
  objc_msgSend_setTimingFunction_(v154, v187, v186, v189, v188);

  objc_msgSend_setFillMode_(v154, v190, v27, v192, v191);
  objc_msgSend_setRemovedOnCompletion_(v154, v193, 1, v195, v194);
  v200[0] = v8;
  v200[1] = v45;
  v200[2] = v100;
  v200[3] = v154;
  v198 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v196, v200, v197, 4);

  return v198;
}

- (id)_smallBubblePulseAnimationWithSpeed:(double)speed delay:(double)delay
{
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], a2, @"transform.scale.xy", *&speed, v4);
  objc_msgSend_setValues_(v8, v9, &unk_28669A778, v11, v10);
  objc_msgSend_setCalculationMode_(v8, v12, *MEMORY[0x277CDA060], v14, v13);
  objc_msgSend_setTensionValues_(v8, v15, &unk_28669A790, v17, v16);
  v18.n128_u64[0] = 0x3FE6666666666666;
  objc_msgSend_setDuration_(v8, v19, v20, v18, v21);
  objc_msgSend_convertedCurrentMediaTime(self, v22, v23, v25, v24);
  v27.n128_f64[0] = v26 + delay;
  objc_msgSend_setBeginTime_(v8, v28, v29, v27, v30);
  v31.n128_f32[0] = speed;
  objc_msgSend_setSpeed_(v8, v32, v33, v31, v34);
  v38 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v35, *MEMORY[0x277CDA7B8], v37, v36);
  objc_msgSend_setTimingFunction_(v8, v39, v38, v41, v40);

  v42.n128_u32[0] = 2139095040;
  objc_msgSend_setRepeatCount_(v8, v43, v44, v42, v45);
  objc_msgSend_setAutoreverses_(v8, v46, 1, v48, v47);
  objc_msgSend_setFillMode_(v8, v49, *MEMORY[0x277CDA238], v51, v50);
  objc_msgSend_setRemovedOnCompletion_(v8, v52, 0, v54, v53);

  return v8;
}

- (id)_mediumBubbleGrowAnimationsWithSpeed:(double)speed offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  speedCopy = speed;
  v232[3] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], a2, @"hidden", *&speed, v4);
  v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v10, 1, v12, v11);
  objc_msgSend_setFromValue_(v9, v14, v13, v16, v15);

  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, 0, v19, v18);
  objc_msgSend_setToValue_(v9, v21, v20, v23, v22);

  v24.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v9, v25, v26, v24, v27);
  v28 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v9, v29, *MEMORY[0x277CDA238], v31, v30);
  objc_msgSend_setRemovedOnCompletion_(v9, v32, 1, v34, v33);
  selfCopy = self;
  v35 = objc_opt_class();
  objc_msgSend_mediumBubbleGrowOffset(v35, v36, v37, v39, v38);
  v41 = v40.n128_f64[0];
  v43 = v42;
  v46 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v44, @"position.x", v40, v45);
  v47 = x;
  v48.n128_f32[0] = v47;
  v52 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v49, v50, v48, v51);
  v232[0] = v52;
  v53.n128_f64[0] = x + v41;
  v53.n128_f32[0] = x + v41;
  v57 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v54, v55, v53, v56);
  v232[1] = v57;
  v58.n128_f32[0] = x;
  v62 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v59, v60, v58, v61);
  v232[2] = v62;
  v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v232, v64, 3);
  objc_msgSend_setValues_(v46, v66, v65, v68, v67);

  v69 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v46, v70, *MEMORY[0x277CDA060], v72, v71);
  objc_msgSend_convertedCurrentMediaTime(self, v73, v74, v76, v75);
  v78.n128_f64[0] = v77 + 0.065;
  objc_msgSend_setBeginTime_(v46, v79, v80, v78, v81);
  v82.n128_u64[0] = 0x3FD999999999999ALL;
  objc_msgSend_setDuration_(v46, v83, v84, v82, v85);
  v86.n128_u32[0] = 0.25;
  LODWORD(v87) = 0.25;
  LODWORD(v88) = 1.0;
  LODWORD(v89) = 1036831949;
  v93 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v90, v91, v86, v92, v89, v87, v88);
  objc_msgSend_setTimingFunction_(v46, v94, v93, v96, v95);

  *&speedCopy = speedCopy;
  v97.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v46, v98, v99, v97, v100);
  v101 = v28;
  objc_msgSend_setFillMode_(v46, v102, v28, v104, v103);
  objc_msgSend_setRemovedOnCompletion_(v46, v105, 1, v107, v106);
  v111 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v108, @"position.y", v110, v109);
  v112 = y;
  v113.n128_f32[0] = v112;
  v117 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v114, v115, v113, v116);
  v231[0] = v117;
  v118.n128_f64[0] = y + v43;
  v118.n128_f32[0] = y + v43;
  v122 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v119, v120, v118, v121);
  v231[1] = v122;
  v123.n128_f32[0] = y;
  v127 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v124, v125, v123, v126);
  v231[2] = v127;
  v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v128, v231, v129, 3);
  objc_msgSend_setValues_(v111, v131, v130, v133, v132);

  objc_msgSend_setCalculationMode_(v111, v134, v69, v136, v135);
  objc_msgSend_convertedCurrentMediaTime(selfCopy, v137, v138, v140, v139);
  v142.n128_f64[0] = v141 + 0.065;
  objc_msgSend_setBeginTime_(v111, v143, v144, v142, v145);
  v146.n128_u64[0] = 0x3FD999999999999ALL;
  objc_msgSend_setDuration_(v111, v147, v148, v146, v149);
  v150.n128_u32[0] = 1051315048;
  LODWORD(v151) = 1057991709;
  LODWORD(v152) = 1064582806;
  LODWORD(v153) = 1036831949;
  v157 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v154, v155, v150, v156, v153, v151, v152);
  objc_msgSend_setTimingFunction_(v111, v158, v157, v160, v159);

  v161.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v111, v162, v163, v161, v164);
  objc_msgSend_setFillMode_(v111, v165, v101, v167, v166);
  objc_msgSend_setRemovedOnCompletion_(v111, v168, 1, v170, v169);
  v174 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v171, @"transform.scale.xy", v173, v172);
  v175.n128_u64[0] = 0;
  v179 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v176, v177, v175, v178);
  objc_msgSend_setFromValue_(v174, v180, v179, v182, v181);

  v183.n128_u32[0] = 1.0;
  v187 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v184, v185, v183, v186);
  objc_msgSend_setToValue_(v174, v188, v187, v190, v189);

  objc_msgSend_convertedCurrentMediaTime(selfCopy, v191, v192, v194, v193);
  v196.n128_f64[0] = v195 + 0.065;
  objc_msgSend_setBeginTime_(v174, v197, v198, v196, v199);
  v200.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v174, v201, v202, v200, v203);
  v204.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v174, v205, v206, v204, v207);
  v208.n128_u32[0] = 0.25;
  LODWORD(v209) = 0.25;
  LODWORD(v210) = 1.0;
  LODWORD(v211) = 1036831949;
  v215 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v212, v213, v208, v214, v211, v209, v210);
  objc_msgSend_setTimingFunction_(v174, v216, v215, v218, v217);

  objc_msgSend_setFillMode_(v174, v219, v101, v221, v220);
  objc_msgSend_setRemovedOnCompletion_(v174, v222, 1, v224, v223);
  v230[0] = v9;
  v230[1] = v46;
  v230[2] = v111;
  v230[3] = v174;
  v227 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v225, v230, v226, 4);

  return v227;
}

- (id)_mediumBubblePulseAnimationWithSpeed:(double)speed delay:(double)delay
{
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], a2, @"transform.scale.xy", *&speed, v4);
  objc_msgSend_setValues_(v8, v9, &unk_28669A7A8, v11, v10);
  objc_msgSend_setCalculationMode_(v8, v12, *MEMORY[0x277CDA060], v14, v13);
  objc_msgSend_setTensionValues_(v8, v15, &unk_28669A7C0, v17, v16);
  objc_msgSend_convertedCurrentMediaTime(self, v18, v19, v21, v20);
  v23.n128_f64[0] = v22 + delay;
  objc_msgSend_setBeginTime_(v8, v24, v25, v23, v26);
  v27.n128_u64[0] = 0x3FECCCCCCCCCCCCDLL;
  objc_msgSend_setDuration_(v8, v28, v29, v27, v30);
  v31.n128_f32[0] = speed;
  objc_msgSend_setSpeed_(v8, v32, v33, v31, v34);
  v38 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v35, *MEMORY[0x277CDA7B8], v37, v36);
  objc_msgSend_setTimingFunction_(v8, v39, v38, v41, v40);

  v42.n128_u32[0] = 2139095040;
  objc_msgSend_setRepeatCount_(v8, v43, v44, v42, v45);
  objc_msgSend_setAutoreverses_(v8, v46, 1, v48, v47);
  objc_msgSend_setFillMode_(v8, v49, *MEMORY[0x277CDA238], v51, v50);
  objc_msgSend_setRemovedOnCompletion_(v8, v52, 0, v54, v53);

  return v8;
}

- (id)_largeBubbleGrowAnimationsWithSpeed:(double)speed offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  speedCopy = speed;
  v232[3] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], a2, @"hidden", *&speed, v4);
  v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v10, 1, v12, v11);
  objc_msgSend_setFromValue_(v9, v14, v13, v16, v15);

  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, 0, v19, v18);
  objc_msgSend_setToValue_(v9, v21, v20, v23, v22);

  v24.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v9, v25, v26, v24, v27);
  v28 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v9, v29, *MEMORY[0x277CDA238], v31, v30);
  objc_msgSend_setRemovedOnCompletion_(v9, v32, 1, v34, v33);
  selfCopy = self;
  v35 = objc_opt_class();
  objc_msgSend_largeBubbleGrowOffset(v35, v36, v37, v39, v38);
  v41 = v40.n128_f64[0];
  v43 = v42;
  v46 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v44, @"position.x", v40, v45);
  v47 = x;
  v48.n128_f32[0] = v47;
  v52 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v49, v50, v48, v51);
  v232[0] = v52;
  v53.n128_f64[0] = x + v41;
  v53.n128_f32[0] = x + v41;
  v57 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v54, v55, v53, v56);
  v232[1] = v57;
  v58.n128_f32[0] = x;
  v62 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v59, v60, v58, v61);
  v232[2] = v62;
  v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v232, v64, 3);
  objc_msgSend_setValues_(v46, v66, v65, v68, v67);

  v69 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v46, v70, *MEMORY[0x277CDA060], v72, v71);
  objc_msgSend_convertedCurrentMediaTime(self, v73, v74, v76, v75);
  v78.n128_f64[0] = v77 + 0.12;
  objc_msgSend_setBeginTime_(v46, v79, v80, v78, v81);
  v82.n128_u64[0] = 0x3FD999999999999ALL;
  objc_msgSend_setDuration_(v46, v83, v84, v82, v85);
  v86.n128_u32[0] = 0.25;
  LODWORD(v87) = 0.25;
  LODWORD(v88) = 1.0;
  LODWORD(v89) = 1036831949;
  v93 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v90, v91, v86, v92, v89, v87, v88);
  objc_msgSend_setTimingFunction_(v46, v94, v93, v96, v95);

  *&speedCopy = speedCopy;
  v97.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v46, v98, v99, v97, v100);
  v101 = v28;
  objc_msgSend_setFillMode_(v46, v102, v28, v104, v103);
  objc_msgSend_setRemovedOnCompletion_(v46, v105, 1, v107, v106);
  v111 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v108, @"position.y", v110, v109);
  v112 = y;
  v113.n128_f32[0] = v112;
  v117 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v114, v115, v113, v116);
  v231[0] = v117;
  v118.n128_f64[0] = y + v43;
  v118.n128_f32[0] = y + v43;
  v122 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v119, v120, v118, v121);
  v231[1] = v122;
  v123.n128_f32[0] = y;
  v127 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v124, v125, v123, v126);
  v231[2] = v127;
  v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v128, v231, v129, 3);
  objc_msgSend_setValues_(v111, v131, v130, v133, v132);

  objc_msgSend_setCalculationMode_(v111, v134, v69, v136, v135);
  objc_msgSend_convertedCurrentMediaTime(selfCopy, v137, v138, v140, v139);
  v142.n128_f64[0] = v141 + 0.12;
  objc_msgSend_setBeginTime_(v111, v143, v144, v142, v145);
  v146.n128_u64[0] = 0x3FD999999999999ALL;
  objc_msgSend_setDuration_(v111, v147, v148, v146, v149);
  v150.n128_u32[0] = 1045836616;
  LODWORD(v151) = 1048849804;
  LODWORD(v152) = 1057991709;
  LODWORD(v153) = 1064582806;
  v157 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v154, v155, v150, v156, v151, v152, v153);
  objc_msgSend_setTimingFunction_(v111, v158, v157, v160, v159);

  v161.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v111, v162, v163, v161, v164);
  objc_msgSend_setFillMode_(v111, v165, v101, v167, v166);
  objc_msgSend_setRemovedOnCompletion_(v111, v168, 1, v170, v169);
  v174 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v171, @"transform.scale.xy", v173, v172);
  v175.n128_u64[0] = 0;
  v179 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v176, v177, v175, v178);
  objc_msgSend_setFromValue_(v174, v180, v179, v182, v181);

  v183.n128_u32[0] = 1.0;
  v187 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v184, v185, v183, v186);
  objc_msgSend_setToValue_(v174, v188, v187, v190, v189);

  objc_msgSend_convertedCurrentMediaTime(selfCopy, v191, v192, v194, v193);
  v196.n128_f64[0] = v195 + 0.12;
  objc_msgSend_setBeginTime_(v174, v197, v198, v196, v199);
  v200.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v174, v201, v202, v200, v203);
  v204.n128_u32[0] = LODWORD(speedCopy);
  objc_msgSend_setSpeed_(v174, v205, v206, v204, v207);
  v208.n128_u32[0] = 0.25;
  LODWORD(v209) = 0.25;
  LODWORD(v210) = 1.0;
  LODWORD(v211) = 1036831949;
  v215 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v212, v213, v208, v214, v211, v209, v210);
  objc_msgSend_setTimingFunction_(v174, v216, v215, v218, v217);

  objc_msgSend_setFillMode_(v174, v219, v101, v221, v220);
  objc_msgSend_setRemovedOnCompletion_(v174, v222, 1, v224, v223);
  v230[0] = v9;
  v230[1] = v46;
  v230[2] = v111;
  v230[3] = v174;
  v227 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v225, v230, v226, 4);

  return v227;
}

- (id)_largeBubblePulseAnimationWithSpeed:(double)speed delay:(double)delay
{
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], a2, @"transform.scale.xy", *&speed, v4);
  objc_msgSend_setValues_(v8, v9, &unk_28669A7D8, v11, v10);
  objc_msgSend_setCalculationMode_(v8, v12, *MEMORY[0x277CDA060], v14, v13);
  objc_msgSend_setTensionValues_(v8, v15, &unk_28669A7F0, v17, v16);
  objc_msgSend_convertedCurrentMediaTime(self, v18, v19, v21, v20);
  v23.n128_f64[0] = v22 + delay;
  objc_msgSend_setBeginTime_(v8, v24, v25, v23, v26);
  v27.n128_u64[0] = 0x3FFE666666666666;
  objc_msgSend_setDuration_(v8, v28, v29, v27, v30);
  v31.n128_f32[0] = speed;
  objc_msgSend_setSpeed_(v8, v32, v33, v31, v34);
  v38 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v35, *MEMORY[0x277CDA7B8], v37, v36);
  objc_msgSend_setTimingFunction_(v8, v39, v38, v41, v40);

  v42.n128_u32[0] = 2139095040;
  objc_msgSend_setRepeatCount_(v8, v43, v44, v42, v45);
  objc_msgSend_setAutoreverses_(v8, v46, 1, v48, v47);
  objc_msgSend_setFillMode_(v8, v49, *MEMORY[0x277CDA238], v51, v50);
  objc_msgSend_setRemovedOnCompletion_(v8, v52, 0, v54, v53);

  return v8;
}

- (void)startGrowAnimationWithCompletionBlock:(id)block
{
  v124 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v5, v6, v8, v7);
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v9 = objc_opt_class();
  objc_msgSend_smallBubbleFrame(v9, v10, v11, v13, v12);
  v15 = v14;
  v16.n128_u64[0] = 1.0;
  v21 = objc_msgSend__smallBubbleGrowAnimationsWithSpeed_offset_(self, v17, v18, v16, v19, v15, v20);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v116, v23, v123, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v117;
    do
    {
      v29 = 0;
      do
      {
        if (*v117 != v28)
        {
          objc_enumerationMutation(v21);
        }

        objc_msgSend_addAnimation_forKey_(self->_smallBubble, v25, *(*(&v116 + 1) + 8 * v29++), v26, 0);
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v25, &v116, v26, v123, 16);
    }

    while (v27);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v30 = objc_opt_class();
  objc_msgSend_mediumBubbleFrame(v30, v31, v32, v34, v33);
  v36 = v35;
  v37.n128_u64[0] = 1.0;
  v42 = objc_msgSend__mediumBubbleGrowAnimationsWithSpeed_offset_(self, v38, v39, v37, v40, v36, v41);
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v112, v44, v122, 16);
  if (v45)
  {
    v48 = v45;
    v49 = *v113;
    do
    {
      v50 = 0;
      do
      {
        if (*v113 != v49)
        {
          objc_enumerationMutation(v42);
        }

        objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v46, *(*(&v112 + 1) + 8 * v50++), v47, 0);
      }

      while (v48 != v50);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v46, &v112, v47, v122, 16);
    }

    while (v48);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  objc_msgSend_position(self->_largeBubble, v51, v52, 0, v53);
  v55 = v54;
  v56.n128_u64[0] = 1.0;
  v61 = objc_msgSend__largeBubbleGrowAnimationsWithSpeed_offset_(self, v57, v58, v56, v59, v55, v60);
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v108, v63, v121, 16);
  if (v64)
  {
    v67 = v64;
    v68 = *v109;
    do
    {
      v69 = 0;
      do
      {
        if (*v109 != v68)
        {
          objc_enumerationMutation(v61);
        }

        objc_msgSend_addAnimation_forKey_(self->_largeBubble, v65, *(*(&v108 + 1) + 8 * v69++), v66, 0);
      }

      while (v67 != v69);
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v65, &v108, v66, v121, 16);
    }

    while (v67);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  objc_msgSend_position(self->_largeBubble, v70, v71, 0, v72);
  v74 = v73;
  v75.n128_u64[0] = 1.0;
  v80 = objc_msgSend__largeBubbleGrowAnimationsWithSpeed_offset_(self, v76, v77, v75, v78, v74, v79);
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v104, v82, v120, 16);
  if (v83)
  {
    v86 = v83;
    v87 = *v105;
    do
    {
      v88 = 0;
      do
      {
        if (*v105 != v87)
        {
          objc_enumerationMutation(v80);
        }

        objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v84, *(*(&v104 + 1) + 8 * v88++), v85, 0);
      }

      while (v86 != v88);
      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v84, &v104, v85, v120, 16);
    }

    while (v86);
  }

  v89 = MEMORY[0x277CD9FF0];
  v98 = MEMORY[0x277D85DD0];
  v99 = 3221225472;
  v100 = sub_2547FB9D8;
  v101 = &unk_279788F30;
  selfCopy = self;
  v103 = blockCopy;
  v90 = blockCopy;
  objc_msgSend_setCompletionBlock_(v89, v91, &v98, v93, v92);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v94, v95, v97, v96, v98, v99, v100, v101, selfCopy);
}

- (void)startPulseAnimation
{
  v3 = objc_opt_class();
  if (objc_msgSend_supportsTypingIndicatorAnimation(v3, v4, v5, v7, v6))
  {
    objc_msgSend_stopPulseAnimation(self, v8, v9, v11, v10);
    objc_msgSend_begin(MEMORY[0x277CD9FF0], v12, v13, v15, v14);
    smallBubble = self->_smallBubble;
    v17.n128_u64[0] = 1.0;
    v21 = objc_msgSend__smallBubblePulseAnimationWithSpeed_delay_(self, v18, v19, v17, v20, 0.25);
    objc_msgSend_addAnimation_forKey_(smallBubble, v22, v21, v23, @"kCKAnimationKeyPulse");

    mediumBubble = self->_mediumBubble;
    v25.n128_u64[0] = 1.0;
    v29 = objc_msgSend__mediumBubblePulseAnimationWithSpeed_delay_(self, v26, v27, v25, v28, 0.314999998);
    objc_msgSend_addAnimation_forKey_(mediumBubble, v30, v29, v31, @"kCKAnimationKeyPulse");

    largeBubble = self->_largeBubble;
    v33.n128_u64[0] = 1.0;
    v37 = objc_msgSend__largeBubblePulseAnimationWithSpeed_delay_(self, v34, v35, v33, v36, 0.370000005);
    objc_msgSend_addAnimation_forKey_(largeBubble, v38, v37, v39, @"kCKAnimationKeyPulse");

    thinkingDotContainer = self->_thinkingDotContainer;
    v41.n128_u64[0] = 1.0;
    v45 = objc_msgSend__largeBubblePulseAnimationWithSpeed_delay_(self, v42, v43, v41, v44, 0.370000005);
    objc_msgSend_addAnimation_forKey_(thinkingDotContainer, v46, v45, v47, @"kCKAnimationKeyPulse");

    objc_msgSend__buildThinkingDots(self, v48, v49, v51, v50);
    v56 = MEMORY[0x277CD9FF0];

    objc_msgSend_commit(v56, v52, v53, v55, v54);
  }
}

- (void)stopPulseAnimation
{
  objc_msgSend_thinkingDotOpacity(self, a2, v2, v4, v3);
  v6.n128_f32[0] = v6.n128_f64[0];
  objc_msgSend_setOpacity_(self->_thinkingDot, v7, v8, v6, v9);
  objc_msgSend_removeAllAnimations(self->_thinkingDot, v10, v11, v13, v12);
  objc_msgSend_removeAnimationForKey_(self->_smallBubble, v14, @"kCKAnimationKeyPulse", v16, v15);
  objc_msgSend_removeAnimationForKey_(self->_mediumBubble, v17, @"kCKAnimationKeyPulse", v19, v18);
  objc_msgSend_removeAnimationForKey_(self->_largeBubble, v20, @"kCKAnimationKeyPulse", v22, v21);
  thinkingDotContainer = self->_thinkingDotContainer;

  objc_msgSend_removeAnimationForKey_(thinkingDotContainer, v23, @"kCKAnimationKeyPulse", v25, v24);
}

- (void)startShrinkAnimationWithCompletionBlock:(id)block
{
  v235[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  objc_msgSend_stopPulseAnimation(self, v4, v5, v7, v6);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v8, v9, v11, v10);
  v15 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v12, @"transform.scale.xy", v14, v13);
  v16.n128_u32[0] = 1.0;
  v20 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v17, v18, v16, v19);
  objc_msgSend_setFromValue_(v15, v21, v20, v23, v22);

  v24.n128_u64[0] = 0;
  v28 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v25, v26, v24, v27);
  objc_msgSend_setToValue_(v15, v29, v28, v31, v30);

  objc_msgSend_convertedCurrentMediaTime(self, v32, v33, v35, v34);
  objc_msgSend_setBeginTime_(v15, v36, v37, v39, v38);
  v40.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v15, v41, v42, v40, v43);
  v44.n128_u32[0] = 1.0;
  objc_msgSend_setSpeed_(v15, v45, v46, v44, v47);
  v48.n128_u32[0] = 0.25;
  LODWORD(v49) = 0.25;
  LODWORD(v50) = 1.0;
  LODWORD(v51) = 1036831949;
  v55 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v52, v53, v48, v54, v51, v49, v50);
  objc_msgSend_setTimingFunction_(v15, v56, v55, v58, v57);

  v231 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v15, v59, *MEMORY[0x277CDA238], v61, v60);
  objc_msgSend_setRemovedOnCompletion_(v15, v62, 1, v64, v63);
  objc_msgSend_addAnimation_forKey_(self->_smallBubble, v65, v15, v66, 0);
  objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v67, v15, v68, 0);
  objc_msgSend_addAnimation_forKey_(self->_largeBubble, v69, v15, v70, 0);
  objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v71, v15, v72, 0);
  v76 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v73, @"position.x", v75, v74);
  v77 = objc_opt_class();
  objc_msgSend_largeBubbleFrame(v77, v78, v79, v81, v80);
  v83 = v82.n128_f64[0];
  v85 = v84;
  v86 = v82.n128_f64[0];
  v82.n128_f32[0] = v86;
  v90 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v87, v88, v82, v89);
  v235[0] = v90;
  v91.n128_f64[0] = v83 + 5.0;
  v91.n128_f32[0] = v83 + 5.0;
  v95 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v92, v93, v91, v94);
  v235[1] = v95;
  v96.n128_f32[0] = v86;
  v100 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v97, v98, v96, v99);
  v235[2] = v100;
  v103 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v101, v235, v102, 3);
  objc_msgSend_setValues_(v76, v104, v103, v106, v105);

  v107 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v76, v108, *MEMORY[0x277CDA060], v110, v109);
  objc_msgSend_convertedCurrentMediaTime(self, v111, v112, v114, v113);
  objc_msgSend_setBeginTime_(v76, v115, v116, v118, v117);
  v119.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v76, v120, v121, v119, v122);
  v123.n128_u32[0] = 0.25;
  LODWORD(v124) = 0.25;
  LODWORD(v125) = 1.0;
  LODWORD(v126) = 1036831949;
  v130 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v127, v128, v123, v129, v126, v124, v125);
  objc_msgSend_setTimingFunction_(v76, v131, v130, v133, v132);

  v134.n128_u32[0] = 1.0;
  objc_msgSend_setSpeed_(v76, v135, v136, v134, v137);
  objc_msgSend_setFillMode_(v76, v138, v231, v140, v139);
  objc_msgSend_setRemovedOnCompletion_(v76, v141, 1, v143, v142);
  objc_msgSend_addAnimation_forKey_(self->_smallBubble, v144, v76, v145, 0);
  objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v146, v76, v147, 0);
  objc_msgSend_addAnimation_forKey_(self->_largeBubble, v148, v76, v149, 0);
  objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v150, v76, v151, 0);
  v155 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v152, @"position.y", v154, v153);
  v156 = v85;
  v157.n128_f32[0] = v156;
  v161 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v158, v159, v157, v160);
  v234[0] = v161;
  v162.n128_f64[0] = v85 + -6.0;
  v162.n128_f32[0] = v85 + -6.0;
  v166 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v163, v164, v162, v165);
  v234[1] = v166;
  v167.n128_f32[0] = v85;
  v171 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v168, v169, v167, v170);
  v234[2] = v171;
  v174 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v172, v234, v173, 3);
  objc_msgSend_setValues_(v155, v175, v174, v177, v176);

  objc_msgSend_setCalculationMode_(v155, v178, v107, v180, v179);
  objc_msgSend_convertedCurrentMediaTime(self, v181, v182, v184, v183);
  objc_msgSend_setBeginTime_(v155, v185, v186, v188, v187);
  v189.n128_u64[0] = 0.25;
  objc_msgSend_setDuration_(v155, v190, v191, v189, v192);
  v193.n128_u32[0] = 1045836616;
  LODWORD(v194) = 1048849804;
  LODWORD(v195) = 1057991709;
  LODWORD(v196) = 1064582806;
  v200 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v197, v198, v193, v199, v194, v195, v196);
  objc_msgSend_setTimingFunction_(v155, v201, v200, v203, v202);

  v204.n128_u32[0] = 1.0;
  objc_msgSend_setSpeed_(v155, v205, v206, v204, v207);
  objc_msgSend_setFillMode_(v155, v208, v231, v210, v209);
  objc_msgSend_setRemovedOnCompletion_(v155, v211, 1, v213, v212);
  objc_msgSend_addAnimation_forKey_(self->_smallBubble, v214, v155, v215, 0);
  objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v216, v155, v217, 0);
  objc_msgSend_addAnimation_forKey_(self->_largeBubble, v218, v155, v219, 0);
  objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v220, v155, v221, 0);
  if (blockCopy)
  {
    v226 = MEMORY[0x277CD9FF0];
    v232[0] = MEMORY[0x277D85DD0];
    v232[1] = 3221225472;
    v232[2] = sub_2547FC200;
    v232[3] = &unk_279788F58;
    v233 = blockCopy;
    objc_msgSend_setCompletionBlock_(v226, v227, v232, v229, v228);
  }

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v222, v223, v225, v224);
}

- (void)stopAnimation
{
  objc_msgSend_stopPulseAnimation(self, a2, v2, v4, v3);
  objc_msgSend_removeAllAnimations(self->_smallBubble, v6, v7, v9, v8);
  objc_msgSend_removeAllAnimations(self->_mediumBubble, v10, v11, v13, v12);
  objc_msgSend_removeAllAnimations(self->_largeBubble, v14, v15, v17, v16);
  thinkingDotContainer = self->_thinkingDotContainer;

  objc_msgSend_removeAllAnimations(thinkingDotContainer, v18, v19, v21, v20);
}

+ (CGSize)defaultSize
{
  v2 = 78.5;
  v3 = 35.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGRect)smallBubbleFrame
{
  v2 = 35.0;
  v3 = 2.0;
  v4 = 5.5;
  v5 = 5.5;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v2;
  result.origin.x = v3;
  return result;
}

+ (CGPoint)smallBubbleGrowOffset
{
  v2 = 5.5;
  v3 = -2.5;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGRect)mediumBubbleFrame
{
  objc_msgSend_smallBubbleFrame(self, a2, v2, v4, v3);
  v6 = v5 + 7.0;
  v8 = v7 + -7.5;
  v9 = 11.5;
  v10 = 11.5;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

+ (CGPoint)mediumBubbleGrowOffset
{
  v2 = 5.0;
  v3 = 3.5;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGRect)largeBubbleFrame
{
  objc_msgSend_smallBubbleFrame(self, a2, v2, v4, v3);
  v6 = v5 + 16.0;
  v8 = v7 + -25.5;
  v9 = 57.5;
  v10 = 35.0;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

+ (CGPoint)largeBubbleGrowOffset
{
  v2 = 5.0;
  v3 = -6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGRect)iconImageFrame
{
  v2 = 11.0;
  v3 = 7.5;
  v4 = 27.0;
  v5 = 20.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (CGPoint)thinkingDotsOffset
{
  v2 = 12.0;
  v3 = 13.5;
  result.y = v3;
  result.x = v2;
  return result;
}

@end