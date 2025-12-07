@interface CRAlignmentLayer
+ (id)layer;
- (CGPoint)cardNumberHorizontalDefaultPos;
- (CGPoint)pointOnInfoLayerForPointOnCard:(CGPoint)card;
- (CGRect)alignmentRect;
- (CGRect)cardNumberHorizontalDefaultBounds;
- (CRAlignmentLayer)init;
- (void)animateFoundCardRect:(id)rect;
- (void)animateFoundCodeParts:(id)parts codePartPositions:(id)positions codeFrameIndex:(unint64_t)index cardHolder:(id)holder cardholderPosition:(CGPoint)position cardholderFrameIndex:(unint64_t)frameIndex expDate:(id)date expdatePosition:(CGPoint)self0 expDateFrameIndex:(unint64_t)self1 completionBlock:(id)self2;
- (void)layoutSublayers;
- (void)makeTextLayer:(id)layer matchWidthOfText:(id)text;
- (void)propogateMaskColor:(id)color outlineColor:(id)outlineColor placementTextColor:(id)textColor capturedTextColor:(id)capturedTextColor;
- (void)resetLayer;
@end

@implementation CRAlignmentLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRAlignmentLayer)init
{
  v96 = *MEMORY[0x277D85DE8];
  v91.receiver = self;
  v91.super_class = CRAlignmentLayer;
  v2 = [(CRAlignmentLayer *)&v91 init];
  v3 = v2;
  if (v2)
  {
    [(CRAlignmentLayer *)v2 setBounds:?];
    [(CRAlignmentLayer *)v3 setFrame:?];
    [(CRAlignmentLayer *)v3 setHidden:?];
    layer = [MEMORY[0x277CD9F90] layer];
    [(CRAlignmentLayer *)v3 setMaskLayer:?];

    maskLayer = [(CRAlignmentLayer *)v3 maskLayer];
    [maskLayer setOpacity:?];

    v6 = +[CRColor blackColor];
    v7 = v6;
    [v6 CGColor];
    maskLayer2 = [(CRAlignmentLayer *)v3 maskLayer];
    [maskLayer2 setFillColor:?];

    maskLayer3 = [(CRAlignmentLayer *)v3 maskLayer];
    [maskLayer3 setFillRule:?];

    maskLayer4 = [(CRAlignmentLayer *)v3 maskLayer];
    [(CRAlignmentLayer *)v3 addSublayer:?];

    layer2 = [MEMORY[0x277CD9F90] layer];
    [(CRAlignmentLayer *)v3 setOutlineLayer:?];

    v12 = +[CRColor clearColor];
    v13 = v12;
    [v12 CGColor];
    outlineLayer = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer setFillColor:?];

    v15 = +[CRColor whiteColor];
    v16 = v15;
    [v15 CGColor];
    outlineLayer2 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer2 setStrokeColor:?];

    outlineLayer3 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer3 setLineWidth:?];

    v19 = +[CRColor blackColor];
    v20 = v19;
    [v19 CGColor];
    outlineLayer4 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer4 setShadowColor:?];

    outlineLayer5 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer5 setShadowOffset:?];

    outlineLayer6 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer6 setShadowRadius:?];

    outlineLayer7 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer7 setShadowOpacity:?];

    outlineLayer8 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer8 setMasksToBounds:?];

    layer3 = [MEMORY[0x277CD9F90] layer];
    [layer3 setFillRule:?];
    v27 = +[CRColor whiteColor];
    v28 = v27;
    [v27 CGColor];
    [layer3 setFillColor:?];

    outlineLayer9 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer9 setMask:?];

    outlineLayer10 = [(CRAlignmentLayer *)v3 outlineLayer];
    [(CRAlignmentLayer *)v3 addSublayer:?];

    v31 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] labelFontSize];
    v86 = [v31 systemFontOfSize:?];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v34 = v33;

    v35 = *MEMORY[0x277D740A8];
    v94 = v86;
    v36 = *MEMORY[0x277D740C0];
    v92 = v35;
    v93 = v36;
    v37 = +[CRColor whiteColor];
    v95 = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v39 = objc_alloc(MEMORY[0x277CCAB48]);
    v40 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
    v41 = [v40 localizedStringForKey:? value:? table:?];
    v42 = [v39 initWithString:? attributes:?];

    layer4 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setInstructionLayer:?];

    instructionLayer = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer setWrapped:?];

    instructionLayer2 = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer2 setAlignmentMode:?];

    instructionLayer3 = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer3 setString:?];

    instructionLayer4 = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer4 setContentsScale:?];

    instructionLayer5 = [(CRAlignmentLayer *)v3 instructionLayer];
    [(CRAlignmentLayer *)v3 addSublayer:?];

    layer5 = [MEMORY[0x277CD9ED0] layer];
    [(CRAlignmentLayer *)v3 setInfoLayer:?];

    infoLayer = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer setBounds:?];

    infoLayer2 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer2 setOpacity:?];

    infoLayer3 = [(CRAlignmentLayer *)v3 infoLayer];
    [(CRAlignmentLayer *)v3 addSublayer:?];

    infoLayer4 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer4 bounds];
    CGRectGetMidX(v97);
    infoLayer5 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer5 bounds];
    CGRectGetMidY(v98);
    [(CRAlignmentLayer *)v3 setCardNumberHorizontalDefaultPos:?];

    [(CRAlignmentLayer *)v3 setCardNumberHorizontalDefaultBounds:?];
    v55 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    [(CRAlignmentLayer *)v3 setCardNumberLayers:?];

    v56 = 4;
    v57 = 1.0 / (v34 * 4.0);
    do
    {
      layer6 = [MEMORY[0x277CD9FC8] layer];
      [(CRAlignmentLayer *)v3 cardNumberHorizontalDefaultBounds];
      [layer6 setBounds:?];
      [(CRAlignmentLayer *)v3 cardNumberHorizontalDefaultPos];
      [layer6 setPosition:?];
      CATransform3DMakeScale(&v90, 1.0 / (v34 * 4.0), 1.0 / (v34 * 4.0), 1.0);
      v89 = v90;
      [layer6 setTransform:?];
      [layer6 setFont:?];
      [layer6 setFontSize:?];
      infoLayer6 = [(CRAlignmentLayer *)v3 infoLayer];
      [infoLayer6 addSublayer:?];

      cardNumberLayers = [(CRAlignmentLayer *)v3 cardNumberLayers];
      [cardNumberLayers addObject:?];

      --v56;
    }

    while (v56);
    layer7 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setCardholderNameLayer:?];

    cardholderNameLayer = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer setBounds:?];

    CATransform3DMakeScale(&v88, v57, v57, 1.0);
    cardholderNameLayer2 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    v89 = v88;
    [cardholderNameLayer2 setTransform:?];

    cardholderNameLayer3 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer3 setFont:?];

    cardholderNameLayer4 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer4 setFontSize:?];

    infoLayer7 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer7 bounds];
    CGRectGetMinX(v99);
    infoLayer8 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer8 bounds];
    CGRectGetMaxY(v100);
    cardholderNameLayer5 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer5 setPosition:?];

    cardholderNameLayer6 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer6 setAlignmentMode:?];

    cardholderNameLayer7 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer7 setAnchorPoint:?];

    infoLayer9 = [(CRAlignmentLayer *)v3 infoLayer];
    cardholderNameLayer8 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [infoLayer9 addSublayer:?];

    layer8 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setExpirationDateLayer:?];

    expirationDateLayer = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer setBounds:?];

    infoLayer10 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer10 bounds];
    CGRectGetMidX(v101);
    infoLayer11 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer11 bounds];
    CGRectGetMaxY(v102);
    expirationDateLayer2 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer2 setPosition:?];

    CATransform3DMakeScale(&v87, v57, v57, 1.0);
    expirationDateLayer3 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    v89 = v87;
    [expirationDateLayer3 setTransform:?];

    expirationDateLayer4 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer4 setFont:?];

    expirationDateLayer5 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer5 setFontSize:?];

    expirationDateLayer6 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer6 setAlignmentMode:?];

    expirationDateLayer7 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer7 setAnchorPoint:?];

    infoLayer12 = [(CRAlignmentLayer *)v3 infoLayer];
    expirationDateLayer8 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [infoLayer12 addSublayer:?];
  }

  return v3;
}

- (void)layoutSublayers
{
  [(CRAlignmentLayer *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  delegate = [(CRAlignmentLayer *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate2 = [(CRAlignmentLayer *)self delegate];
    v14 = delegate2;
    if (delegate2)
    {
      parentViewController = [delegate2 parentViewController];
      presentingViewController = [parentViewController presentingViewController];
      if (presentingViewController)
      {
        parentViewController2 = [v14 parentViewController];
        modalPresentationStyle = [parentViewController2 modalPresentationStyle];

        if (modalPresentationStyle)
        {
          v19 = 0.0;
          v20 = 0.0;
          do
          {
            topLayoutGuide = [v14 topLayoutGuide];
            [topLayoutGuide length];
            v23 = v22;

            bottomLayoutGuide = [v14 bottomLayoutGuide];
            [bottomLayoutGuide length];
            v26 = v25;

            parentViewController3 = [v14 parentViewController];
            v19 = fmax(v19, v23);
            v20 = fmax(v20, v26);

            v14 = parentViewController3;
          }

          while (parentViewController3);
          goto LABEL_11;
        }
      }

      else
      {
      }

      view = [v14 view];
      [view safeAreaInsets];
      v19 = v29;
      [view safeAreaInsets];
      v20 = v30;
    }

    else
    {
      v20 = 0.0;
      v19 = 0.0;
    }

LABEL_11:
    [(CRAlignmentLayer *)self bounds];
    MinY = CGRectGetMinY(v121);
    [(CRAlignmentLayer *)self bounds];
    MaxY = CGRectGetMaxY(v122);
    [(CRAlignmentLayer *)self bounds];
    MinX = CGRectGetMinX(v123);
    [(CRAlignmentLayer *)self bounds];
    v125.size.width = CGRectGetWidth(v124);
    v125.size.height = MaxY - v20 - (v19 + MinY);
    v125.origin.y = v19 + MinY + v125.size.height * 0.5 - v125.size.height * 0.5;
    v125.origin.x = MinX;
    v126 = CGRectInset(v125, 38.0, 0.0);
    x = v126.origin.x;
    y = v126.origin.y;
    width = v126.size.width;
    height = v126.size.height;
  }

  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  string = [instructionLayer string];
  [string boundingRectWithSize:? options:? context:?];
  v114 = v37;
  v116 = v36;
  v110 = v39;
  v112 = v38;

  instructionLayer2 = [(CRAlignmentLayer *)self instructionLayer];
  LOBYTE(string) = [instructionLayer2 isHidden];

  if ((string & 1) == 0)
  {
    v127.origin.y = v114;
    v127.origin.x = v116;
    v127.size.height = v110;
    v127.size.width = v112;
    height = height - (CGRectGetHeight(v127) + 8.0);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v43 = 1.0;
    if (userInterfaceIdiom == 1)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [(CRAlignmentLayer *)self bounds];
      v159.origin.x = v53;
      v159.origin.y = v54;
      v159.size.width = v55;
      v159.size.height = v56;
      v128.origin.x = v46;
      v128.origin.y = v48;
      v128.size.width = v50;
      v128.size.height = v52;
      v57 = CGRectEqualToRect(v128, v159);

      if (v57)
      {
        v129.origin.x = x;
        v129.origin.y = y;
        v129.size.width = width;
        v129.size.height = height;
        v58 = CGRectGetWidth(v129) * 0.600000024;
        v130.origin.x = x;
        v130.origin.y = y;
        v130.size.width = width;
        v130.size.height = height;
        v59 = fmax(v58, CGRectGetHeight(v130) * 0.600000024);
        v131.origin.x = x;
        v131.origin.y = y;
        v131.size.width = width;
        v131.size.height = height;
        v60 = CGRectGetMidX(v131) - v59 * 0.5;
        v132.origin.x = x;
        v132.origin.y = y;
        v132.size.width = width;
        v132.size.height = height;
        v61 = CGRectGetMidY(v132) - v59 * 0.5;
        v62 = v59;
        goto LABEL_23;
      }

      v43 = 0.800000012;
    }
  }

  else
  {
    v63 = deviceModel();
    v64 = [v63 isEqualToString:?];

    if (v64)
    {
      v43 = 0.800000012;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v133.origin.x = x;
  v133.origin.y = y;
  v133.size.width = width;
  v133.size.height = height;
  v59 = v43 * CGRectGetWidth(v133);
  v134.origin.x = x;
  v134.origin.y = y;
  v134.size.width = width;
  v134.size.height = height;
  v62 = v43 * CGRectGetHeight(v134);
  v135.origin.x = x;
  v135.origin.y = y;
  v135.size.width = width;
  v135.size.height = height;
  v60 = CGRectGetMidX(v135) - v59 * 0.5;
  v136.origin.x = x;
  v136.origin.y = y;
  v136.size.width = width;
  v136.size.height = height;
  v61 = CGRectGetMidY(v136) - v62 * 0.5;
LABEL_23:
  v137.origin.x = v60;
  v137.origin.y = v61;
  v137.size.width = v59;
  v137.size.height = v62;
  v65 = CGRectGetWidth(v137) / 85.6;
  v118 = v61;
  v119 = v60;
  v138.origin.x = v60;
  v138.origin.y = v61;
  v138.size.width = v59;
  v138.size.height = v62;
  v66 = fmin(v65, CGRectGetHeight(v138) / 54.0);
  v67 = v66 * 85.6;
  v68 = v66 * 54.0;
  v69 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:? cornerRadius:?];
  v70 = CGPathRetain([v69 CGPath]);

  v139.origin.x = 0.0;
  v139.origin.y = 0.0;
  v139.size.width = v67;
  v139.size.height = v68;
  MidX = CGRectGetMidX(v139);
  [(CRAlignmentLayer *)self bounds];
  v72 = MidX - CGRectGetWidth(v140);
  v141.origin.x = 0.0;
  v141.origin.y = 0.0;
  v141.size.width = v67;
  v141.size.height = v68;
  MidY = CGRectGetMidY(v141);
  [(CRAlignmentLayer *)self bounds];
  v74 = MidY - CGRectGetHeight(v142);
  [(CRAlignmentLayer *)self bounds];
  v75 = CGRectGetWidth(v143);
  v76 = v75 + v75;
  [(CRAlignmentLayer *)self bounds];
  v77 = CGRectGetHeight(v144);
  v78 = v77 + v77;
  Mutable = CGPathCreateMutable();
  v145.origin.x = v72;
  v145.origin.y = v74;
  v145.size.width = v76;
  v145.size.height = v78;
  v80 = CGPathCreateWithRect(v145, 0);
  CGPathAddPath(Mutable, 0, v80);
  CGPathAddPath(Mutable, 0, v70);
  outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer setBounds:?];

  v146.origin.x = v119;
  v146.origin.y = v118;
  v146.size.width = v59;
  v146.size.height = v62;
  CGRectGetMidX(v146);
  v147.origin.x = v119;
  v147.origin.y = v118;
  v147.size.width = v59;
  v147.size.height = v62;
  CGRectGetMidY(v147);
  outlineLayer2 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer2 setPosition:?];

  outlineLayer3 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer3 setPath:?];

  outlineLayer4 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer4 setShadowPath:?];

  outlineLayer5 = [(CRAlignmentLayer *)self outlineLayer];
  mask = [outlineLayer5 mask];

  if (mask)
  {
    v148.origin.x = 0.0;
    v148.origin.y = 0.0;
    v148.size.width = v67;
    v148.size.height = v68;
    v149 = CGRectInset(v148, -20.0, -20.0);
    v87 = v149.origin.x;
    v88 = v149.origin.y;
    v89 = v149.size.width;
    v90 = v149.size.height;
    v91 = CGPathCreateMutable();
    v150.origin.x = v87;
    v150.origin.y = v88;
    v150.size.width = v89;
    v150.size.height = v90;
    CGPathAddRect(v91, 0, v150);
    CGPathAddPath(v91, 0, v70);
    [mask setBounds:?];
    v151.origin.x = 0.0;
    v151.origin.y = 0.0;
    v151.size.width = v67;
    v151.size.height = v68;
    CGRectGetMidX(v151);
    v152.origin.x = 0.0;
    v152.origin.y = 0.0;
    v152.size.width = v67;
    v152.size.height = v68;
    CGRectGetMidY(v152);
    [mask setPosition:?];
    [mask setPath:?];
    CGPathRelease(v91);
  }

  CGPathRelease(v70);
  outlineLayer6 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer6 bounds];
  maskLayer = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer setBounds:?];

  outlineLayer7 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer7 position];
  maskLayer2 = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer2 setPosition:?];

  maskLayer3 = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer3 setPath:?];

  CGPathRelease(Mutable);
  CGPathRelease(v80);
  v153.origin.y = v118;
  v153.origin.x = v119;
  v153.size.width = v59;
  v153.size.height = v62;
  CGRectGetWidth(v153);
  v154.origin.y = v115;
  v154.origin.x = v117;
  v154.size.height = v111;
  v154.size.width = v113;
  CGRectGetHeight(v154);
  instructionLayer3 = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer3 setBounds:?];

  outlineLayer8 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer8 position];
  outlineLayer9 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer9 position];
  outlineLayer10 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer10 bounds];
  CGRectGetHeight(v155);
  instructionLayer4 = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer4 bounds];
  CGRectGetHeight(v156);
  instructionLayer5 = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer5 setPosition:?];

  outlineLayer11 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer11 bounds];
  v104 = CGRectGetWidth(v157);
  infoLayer = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer bounds];
  v106 = CGRectGetWidth(v158);

  outlineLayer12 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer12 position];
  infoLayer2 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer2 setPosition:?];

  CATransform3DMakeScale(&v120, v104 / v106, v104 / v106, 1.0);
  infoLayer3 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer3 setTransform:?];
}

- (void)resetLayer
{
  cardNumberLayers = [(CRAlignmentLayer *)self cardNumberLayers];
  v4 = [cardNumberLayers countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(cardNumberLayers);
        }

        [*(8 * i) setString:?];
      }

      v4 = [cardNumberLayers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  cardholderNameLayer = [(CRAlignmentLayer *)self cardholderNameLayer];
  [cardholderNameLayer setString:?];

  expirationDateLayer = [(CRAlignmentLayer *)self expirationDateLayer];
  [expirationDateLayer setString:?];

  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer setOpacity:?];

  infoLayer = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer setOpacity:?];
}

- (CGRect)alignmentRect
{
  outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer bounds];
  outlineLayer2 = [(CRAlignmentLayer *)self outlineLayer];
  [CRAlignmentLayer convertRect:"convertRect:fromLayer:" fromLayer:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)pointOnInfoLayerForPointOnCard:(CGPoint)card
{
  y = card.y;
  x = card.x;
  if (card.x != *MEMORY[0x277CBF348] || card.y != *(MEMORY[0x277CBF348] + 8))
  {
    infoLayer = [(CRAlignmentLayer *)self infoLayer];
    [infoLayer bounds];
    v9 = v8;

    infoLayer2 = [(CRAlignmentLayer *)self infoLayer];
    [infoLayer2 bounds];
    MinX = CGRectGetMinX(v19);
    infoLayer3 = [(CRAlignmentLayer *)self infoLayer];
    [infoLayer3 bounds];
    MaxY = CGRectGetMaxY(v20);
    v14 = v9 / 85.6;
    v15 = v14;
    x = MinX + x * v15;
    y = MaxY - y * v15;
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)makeTextLayer:(id)layer matchWidthOfText:(id)text
{
  layerCopy = layer;
  textCopy = text;
  v6 = MEMORY[0x277D74300];
  [layerCopy font];
  [layerCopy fontSize];
  v7 = [v6 fontWithName:? size:?];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:? forKey:?];
  [textCopy sizeWithAttributes:?];

  [layerCopy bounds];
  [layerCopy bounds];
  [layerCopy bounds];
  [layerCopy setBounds:?];
}

- (void)animateFoundCodeParts:(id)parts codePartPositions:(id)positions codeFrameIndex:(unint64_t)index cardHolder:(id)holder cardholderPosition:(CGPoint)position cardholderFrameIndex:(unint64_t)frameIndex expDate:(id)date expdatePosition:(CGPoint)self0 expDateFrameIndex:(unint64_t)self1 completionBlock:(id)self2
{
  y = expdatePosition.y;
  x = expdatePosition.x;
  v16 = position.y;
  v17 = position.x;
  partsCopy = parts;
  positionsCopy = positions;
  holderCopy = holder;
  dateCopy = date;
  blockCopy = block;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:? forKey:?];
  if ([positionsCopy count] == 1)
  {
    v22 = [positionsCopy objectAtIndex:?];
    NSPointFromString(v22);

    cardNumberLayers = [(CRAlignmentLayer *)self cardNumberLayers];
    v24 = [cardNumberLayers objectAtIndexedSubscript:?];
    [v24 setAlignmentMode:?];

    [(CRAlignmentLayer *)self cardNumberHorizontalDefaultBounds];
    cardNumberLayers2 = [(CRAlignmentLayer *)self cardNumberLayers];
    v26 = [cardNumberLayers2 objectAtIndexedSubscript:?];
    [v26 setBounds:?];

    cardNumberLayers3 = [(CRAlignmentLayer *)self cardNumberLayers];
    v28 = [cardNumberLayers3 objectAtIndexedSubscript:?];
    [v28 setAnchorPoint:?];

    [(CRAlignmentLayer *)self cardNumberHorizontalDefaultPos];
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:?];
    cardNumberLayers4 = [(CRAlignmentLayer *)self cardNumberLayers];
    v30 = [cardNumberLayers4 objectAtIndexedSubscript:?];
    [v30 setPosition:?];
  }

  else
  {
    v31 = MEMORY[0x277CBEB18];
    [positionsCopy count];
    v32 = [v31 arrayWithCapacity:?];
    v12 = positionsCopy;
    v33 = [v12 countByEnumeratingWithState:? objects:? count:?];
    if (v33)
    {
      v34 = MEMORY[0];
      do
      {
        for (i = 0; i != v33; i = (i + 1))
        {
          if (MEMORY[0] != v34)
          {
            objc_enumerationMutation(v12);
          }

          NSPointFromString(*(8 * i));
          v36 = [MEMORY[0x277CCABB0] numberWithFloat:?];
          [v32 addObject:?];
        }

        v33 = [v12 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v33);
    }

    [v32 sortUsingComparator:?];
    [v32 count];
    v37 = [v32 objectAtIndex:?];
    [v37 floatValue];

    for (j = 0; ; ++j)
    {
      v39 = [v12 count];
      if (j > 3 || j >= v39)
      {
        break;
      }

      v40 = [v12 objectAtIndex:?];
      NSPointFromString(v40);

      cardNumberLayers5 = [(CRAlignmentLayer *)self cardNumberLayers];
      v42 = [cardNumberLayers5 objectAtIndexedSubscript:?];
      [v42 setAlignmentMode:?];

      cardNumberLayers6 = [(CRAlignmentLayer *)self cardNumberLayers];
      v44 = [cardNumberLayers6 objectAtIndexedSubscript:?];
      [v44 setAnchorPoint:?];

      [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:?];
      cardNumberLayers7 = [(CRAlignmentLayer *)self cardNumberLayers];
      v46 = [cardNumberLayers7 objectAtIndexedSubscript:?];
      [v46 setPosition:?];
    }
  }

  v47 = MEMORY[0x277CBF348];
  v48 = *MEMORY[0x277CBF348];
  v49 = *(MEMORY[0x277CBF348] + 8);
  if (v17 != *MEMORY[0x277CBF348] || v16 != v49)
  {
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:?];
    cardholderNameLayer = [(CRAlignmentLayer *)self cardholderNameLayer];
    [cardholderNameLayer setPosition:?];

    v48 = *v47;
    v49 = v47[1];
  }

  if (x != v48 || y != v49)
  {
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:?];
    expirationDateLayer = [(CRAlignmentLayer *)self expirationDateLayer];
    [expirationDateLayer setPosition:?];
  }

  infoLayer = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer bounds];
  v56 = v55;
  infoLayer2 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer2 bounds];
  v59 = v58;

  if ([positionsCopy count] >= 2)
  {
    cardNumberLayers8 = [(CRAlignmentLayer *)self cardNumberLayers];
    [positionsCopy count];
    v61 = [cardNumberLayers8 subarrayWithRange:?];
    v62 = [v61 mutableCopy];

    [v62 sortUsingComparator:?];
    for (k = 1; k < [v62 count]; k = v65 + 2)
    {
      v64 = [v62 objectAtIndex:?];
      v65 = k - 1;
      v66 = [v62 objectAtIndex:?];
      [v66 frame];
      v68 = v67;
      [v66 frame];
      v70 = v69;
      [v64 frame];
      if (v68 + v70 - v71 > 0.0)
      {
        [v64 frame];
        [v64 frame];
        [v64 frame];
        [v64 frame];
        [v64 setFrame:?];
      }
    }
  }

  v72 = objc_alloc(MEMORY[0x277CD9FC8]);
  cardNumberLayers9 = [(CRAlignmentLayer *)self cardNumberLayers];
  v74 = [cardNumberLayers9 objectAtIndex:?];
  v138 = [v72 initWithLayer:?];

  infoLayer3 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer3 addSublayer:?];

  cardNumberLayers10 = [(CRAlignmentLayer *)self cardNumberLayers];
  v77 = [cardNumberLayers10 objectAtIndex:?];
  [v77 frame];
  v79 = v78;
  v81 = v80;
  width = v82;
  height = v84;

  dateFrameIndexCopy = dateFrameIndex;
  v87 = v59 + -1.0;
  for (m = 1; m < [partsCopy count]; ++m)
  {
    cardNumberLayers11 = [(CRAlignmentLayer *)self cardNumberLayers];
    v90 = m < [cardNumberLayers11 count];

    if (!v90)
    {
      break;
    }

    cardNumberLayers12 = [(CRAlignmentLayer *)self cardNumberLayers];
    v92 = [cardNumberLayers12 objectAtIndex:?];
    [v92 frame];
    v142.origin.x = v93;
    v142.origin.y = v94;
    v142.size.width = v95;
    v142.size.height = v96;
    v139.origin.x = v79;
    v139.origin.y = v81;
    v139.size.width = width;
    v139.size.height = height;
    v140 = CGRectUnion(v139, v142);
    v79 = v140.origin.x;
    v81 = v140.origin.y;
    width = v140.size.width;
    height = v140.size.height;
  }

  [v138 setFrame:?];
  v135 = [MEMORY[0x277CBEB18] arrayWithObject:?];
  v97 = MEMORY[0x277CBEB18];
  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v132 = [v97 arrayWithObject:?];

  if (frameIndex != -1)
  {
    cardholderNameLayer2 = [(CRAlignmentLayer *)self cardholderNameLayer];
    [v135 addObject:?];

    v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v132 addObject:?];
  }

  if (dateFrameIndex != -1)
  {
    expirationDateLayer2 = [(CRAlignmentLayer *)self expirationDateLayer];
    [v135 addObject:?];

    v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v132 addObject:?];
  }

  for (n = 0; n < [partsCopy count]; ++n)
  {
    cardNumberLayers13 = [(CRAlignmentLayer *)self cardNumberLayers];
    dateFrameIndexCopy = n < [cardNumberLayers13 count];

    if ((dateFrameIndexCopy & 1) == 0)
    {
      break;
    }

    cardNumberLayers14 = [(CRAlignmentLayer *)self cardNumberLayers];
    dateFrameIndexCopy = [cardNumberLayers14 objectAtIndexedSubscript:?];
    v106 = [partsCopy objectAtIndex:?];
    [CRAlignmentLayer makeTextLayer:"makeTextLayer:matchWidthOfText:" matchWidthOfText:?];
  }

  cardholderNameLayer3 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [CRAlignmentLayer makeTextLayer:"makeTextLayer:matchWidthOfText:" matchWidthOfText:?];

  v133 = [dateCopy stringByReplacingOccurrencesOfString:? withString:?];
  expirationDateLayer3 = [(CRAlignmentLayer *)self expirationDateLayer];
  [CRAlignmentLayer makeTextLayer:"makeTextLayer:matchWidthOfText:" matchWidthOfText:?];

  sortOverlappingCALayers(v135, v132, 0.0, 1.0, v56, v87);
  keepAllLayersWithinHorizontalBounds(v135, 0.0, 1.0, v56);
  [v138 frame];
  [v138 frame];
  for (ii = 0; ii < [partsCopy count]; ++ii)
  {
    cardNumberLayers15 = [(CRAlignmentLayer *)self cardNumberLayers];
    dateFrameIndexCopy = ii < [cardNumberLayers15 count];

    if ((dateFrameIndexCopy & 1) == 0)
    {
      break;
    }

    dateFrameIndexCopy = [(CRAlignmentLayer *)self cardNumberLayers];
    v111 = [dateFrameIndexCopy objectAtIndexedSubscript:?];

    [v111 position];
    [v111 position];
    [v111 setPosition:?];
  }

  [v138 removeFromSuperlayer];
  [MEMORY[0x277CD9FF0] setValue:? forKey:?];
  for (jj = 0; jj < [partsCopy count]; ++jj)
  {
    cardNumberLayers16 = [(CRAlignmentLayer *)self cardNumberLayers];
    v114 = jj < [cardNumberLayers16 count];

    if (!v114)
    {
      break;
    }

    v115 = [partsCopy objectAtIndexedSubscript:?];
    if (v115)
    {
      v116 = MEMORY[0x277CCACA8];
      dateFrameIndexCopy = [partsCopy objectAtIndexedSubscript:?];
      v12 = [v116 _newZStringWithString:?];
    }

    cardNumberLayers17 = [(CRAlignmentLayer *)self cardNumberLayers];
    v118 = [cardNumberLayers17 objectAtIndexedSubscript:?];
    [v118 setString:?];

    if (v115)
    {
    }
  }

  if (holderCopy)
  {
    v119 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
  }

  else
  {
    v119 = 0;
  }

  cardholderNameLayer4 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [cardholderNameLayer4 setString:?];

  if (holderCopy)
  {
  }

  if (v133)
  {
    v121 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
  }

  else
  {
    v121 = 0;
  }

  expirationDateLayer4 = [(CRAlignmentLayer *)self expirationDateLayer];
  [expirationDateLayer4 setString:?];

  if (v133)
  {
  }

  [MEMORY[0x277CD9FF0] commit];
  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer setOpacity:?];

  [MEMORY[0x277CD9FF0] begin];
  v124 = MEMORY[0x277CD9FF0];
  v125 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [v124 setValue:? forKey:?];

  maskLayer = [(CRAlignmentLayer *)self maskLayer];
  BoundingBox = CGPathGetBoundingBox([maskLayer path]);
  v127 = CGPathCreateWithRect(BoundingBox, 0);

  maskLayer2 = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer2 setPath:?];

  CGPathRelease(v127);
  infoLayer4 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer4 setOpacity:?];

  [MEMORY[0x277CD9FF0] setCompletionBlock:?];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __184__CRAlignmentLayer_animateFoundCodeParts_codePartPositions_codeFrameIndex_cardHolder_cardholderPosition_cardholderFrameIndex_expDate_expdatePosition_expDateFrameIndex_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 position];
  v7 = v6;
  [v5 position];
  if (v7 >= v8)
  {
    [v4 position];
    v11 = v10;
    [v5 position];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)animateFoundCardRect:(id)rect
{
  v67 = *MEMORY[0x277D85DE8];
  *&v59.size.width = rect;
  if (*&v59.size.width)
  {
    v4 = 0;
    v5 = &v60;
    do
    {
      v6 = [*&v59.size.width objectAtIndex:?];
      [v6 CGPointValue];
      *(v5 - 1) = v7;
      *v5 = v8;

      ++v4;
      v5 += 2;
    }

    while (v4 != 4);
    v9.f64[0] = v59.size.height;
    v9.f64[1] = v61;
    v10.f64[0] = v61;
    v10.f64[1] = v63;
    v11 = vsubq_f64(v9, v10);
    v10.f64[0] = v60;
    v10.f64[1] = v62;
    v12.f64[0] = v62;
    v12.f64[1] = v64;
    v13 = vsubq_f64(v10, v12);
    v14 = vaddq_f64(vmulq_f64(v11, v11), vmulq_f64(v13, v13));
    v13.f64[0] = v63;
    v13.f64[1] = v65;
    v12.f64[0] = v65;
    rect = v60;
    v59.origin.x = v59.size.height;
    v12.f64[1] = v59.size.height;
    v15 = vsubq_f64(v13, v12);
    v12.f64[0] = v64;
    v12.f64[1] = v66;
    v16.f64[0] = v66;
    v16.f64[1] = v60;
    v17 = vsubq_f64(v12, v16);
    v18 = vaddq_f64(vsqrtq_f64(v14), vsqrtq_f64(vaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v17, v17))));
    __asm { FMOV            V1.2D, #0.5 }

    v24 = vmulq_f64(v18, _Q1);
    v54 = v63;
    v55 = v61;
    v52 = v64;
    v53 = v62;
    v50 = v65;
    v51 = v66;
    if (vmovn_s64(vcgtq_f64(v24, vdupq_laneq_s64(v24, 1))).u8[0])
    {
      v25 = v61 + v63;
      v26 = v62 + v64;
      v27 = v65;
      v28 = v66;
    }

    else
    {
      v25 = v63 + v65;
      v26 = v64 + v66;
      v27 = v61;
      v28 = v62;
    }

    v29 = (v60 + v28) * 0.5;
    v30 = (v59.size.height + v27) * 0.5;
    v31 = v26 * 0.5;
    v32 = v25 * 0.5;
    if (v32 == v30)
    {
      v33 = dbl_24783F6C0[v31 > v29];
    }

    else
    {
      v33 = atan((v31 - v29) / (v32 - v30)) * 180.0;
    }

    outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
    [outlineLayer bounds];
    outlineLayer2 = [(CRAlignmentLayer *)self outlineLayer];
    [CRAlignmentLayer convertRect:"convertRect:fromLayer:" fromLayer:?];
    v73 = CGRectInset(v72, -38.0, -38.0);
    x = v73.origin.x;
    y = v73.origin.y;
    width = v73.size.width;
    height = v73.size.height;

    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    v69.x = (v59.origin.x + v55 + v54 + v50) * 0.25;
    v69.y = (rect + v53 + v52 + v51) * 0.25;
    v40 = CGRectContainsPoint(v74, v69);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v76 = CGRectInset(v75, width * 0.2, height * 0.2);
    v59.origin.x = v76.origin.x;
    recta = v76.origin.y;
    v41 = v76.size.width;
    v42 = v76.size.height;
    v43 = 0;
    v56 = v33 / 3.14159265;
    do
    {
      v44 = *(&v59.size.height + v43);
      v45 = *(&v59 + v43 + 32);
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v70.x = v44;
      v70.y = v45;
      if (!CGRectContainsPoint(v77, v70) || (v78.origin.x = v59.origin.x, v78.origin.y = recta, v78.size.width = v41, v78.size.height = v42, v71.x = v44, v71.y = v45, CGRectContainsPoint(v78, v71)))
      {
        v40 = 0;
      }

      v43 += 16;
    }

    while (v43 != 64);
    if ((v40 & (fabs(v56) <= 15.0)) == 1)
    {
      instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
      [instructionLayer opacity];
      v48 = v47;

      if (v48 != 0.0)
      {
        instructionLayer2 = [(CRAlignmentLayer *)self instructionLayer];
        [instructionLayer2 setOpacity:?];
      }
    }
  }
}

- (void)propogateMaskColor:(id)color outlineColor:(id)outlineColor placementTextColor:(id)textColor capturedTextColor:(id)capturedTextColor
{
  colorCopy = color;
  outlineColorCopy = outlineColor;
  textColorCopy = textColor;
  capturedTextColorCopy = capturedTextColor;
  [colorCopy getWhite:? alpha:?];
  maskLayer = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer setOpacity:?];

  maskLayer2 = [(CRAlignmentLayer *)self maskLayer];
  v16 = [colorCopy colorWithAlphaComponent:?];
  v17 = v16;
  [v16 CGColor];
  [maskLayer2 setFillColor:?];

  outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
  v19 = [outlineColorCopy colorWithAlphaComponent:?];
  v20 = v19;
  [v19 CGColor];
  [outlineLayer setStrokeColor:?];

  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  v22 = textColorCopy;
  [textColorCopy CGColor];
  [instructionLayer setForegroundColor:?];

  cardNumberLayers = [(CRAlignmentLayer *)self cardNumberLayers];
  v24 = [cardNumberLayers countByEnumeratingWithState:? objects:? count:?];
  if (v24)
  {
    v25 = MEMORY[0];
    do
    {
      for (i = 0; i != v24; i = (i + 1))
      {
        if (MEMORY[0] != v25)
        {
          objc_enumerationMutation(cardNumberLayers);
        }

        v27 = *(8 * i);
        v28 = capturedTextColorCopy;
        [capturedTextColorCopy CGColor];
        [v27 setForegroundColor:?];
      }

      v24 = [cardNumberLayers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v24);
  }

  cardholderNameLayer = [(CRAlignmentLayer *)self cardholderNameLayer];
  v30 = capturedTextColorCopy;
  [capturedTextColorCopy CGColor];
  [cardholderNameLayer setForegroundColor:?];

  expirationDateLayer = [(CRAlignmentLayer *)self expirationDateLayer];
  v32 = capturedTextColorCopy;
  [capturedTextColorCopy CGColor];
  [expirationDateLayer setForegroundColor:?];
}

- (CGPoint)cardNumberHorizontalDefaultPos
{
  x = self->_cardNumberHorizontalDefaultPos.x;
  y = self->_cardNumberHorizontalDefaultPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)cardNumberHorizontalDefaultBounds
{
  x = self->_cardNumberHorizontalDefaultBounds.origin.x;
  y = self->_cardNumberHorizontalDefaultBounds.origin.y;
  width = self->_cardNumberHorizontalDefaultBounds.size.width;
  height = self->_cardNumberHorizontalDefaultBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end