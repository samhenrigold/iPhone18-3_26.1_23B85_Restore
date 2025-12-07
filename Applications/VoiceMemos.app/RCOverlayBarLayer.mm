@interface RCOverlayBarLayer
+ (double)_internalSelectionBarWidth;
+ (double)_internalSelectionKnobRadius;
- (RCOverlayBarLayer)initWithColor:(id)color selectionExtentIncludingKnobs:(double)knobs topKnob:(BOOL)knob bottomKnob:(BOOL)bottomKnob widthMultiplier:(double)multiplier barWidthMatchesKnobs:(BOOL)matchesKnobs selectionBarType:(int64_t)type;
- (double)selectionBarWidth;
- (id)barComponents;
- (void)_loadWithColor:(id)color selectionExtentIncludingKnobs:(double)knobs topKnob:(BOOL)knob bottomKnob:(BOOL)bottomKnob;
- (void)layoutSublayers;
- (void)setBarGlyph:(id)glyph;
- (void)setColor:(id)color;
@end

@implementation RCOverlayBarLayer

+ (double)_internalSelectionBarWidth
{
  v2 = +[UIScreen mainScreen];
  traitCollection = [v2 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [v5 selectionBarWidthAX];
  }

  else
  {
    [v5 selectionBarWidth];
  }

  v7 = v6;

  return v7;
}

+ (double)_internalSelectionKnobRadius
{
  v2 = +[UIScreen mainScreen];
  traitCollection = [v2 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [v5 selectionKnobRadiusAX];
  }

  else
  {
    [v5 selectionKnobRadius];
  }

  v7 = v6;

  return v7;
}

- (RCOverlayBarLayer)initWithColor:(id)color selectionExtentIncludingKnobs:(double)knobs topKnob:(BOOL)knob bottomKnob:(BOOL)bottomKnob widthMultiplier:(double)multiplier barWidthMatchesKnobs:(BOOL)matchesKnobs selectionBarType:(int64_t)type
{
  bottomKnobCopy = bottomKnob;
  knobCopy = knob;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = RCOverlayBarLayer;
  v18 = [(RCOverlayBarLayer *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_color, color);
    v19->_widthMultiplier = multiplier;
    v19->_barWidthMatchesKnobs = matchesKnobs;
    v19->_barType = type;
    [(RCOverlayBarLayer *)v19 _loadWithColor:colorCopy selectionExtentIncludingKnobs:knobCopy topKnob:bottomKnobCopy bottomKnob:knobs];
  }

  return v19;
}

- (double)selectionBarWidth
{
  if ([(RCOverlayBarLayer *)self barWidthMatchesKnobs])
  {
    [(RCOverlayBarLayer *)self selectionKnobRadius];
    return v3 + v3;
  }

  else
  {

    +[RCOverlayBarLayer _internalSelectionBarWidth];
  }

  return result;
}

- (id)barComponents
{
  bottomKnob = self->_bottomKnob;
  v5[0] = self->_topKnob;
  v5[1] = bottomKnob;
  v5[2] = self->_bar;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    barComponents = [(RCOverlayBarLayer *)self barComponents];
    v7 = [barComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(barComponents);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          [v11 setBackgroundColor:{-[UIColor CGColor](self->_color, "CGColor")}];
          [v11 setOpaque:1];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [barComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setBarGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (([glyphCopy isEqual:self->_barGlyph] & 1) == 0)
  {
    objc_storeStrong(&self->_barGlyph, glyph);
    [glyphCopy scale];
    [(CALayer *)self->_bar setContentsScale:?];
    [(CALayer *)self->_bar setContentsGravity:kCAGravityCenter];
    v5 = glyphCopy;
    -[CALayer setContents:](self->_bar, "setContents:", [glyphCopy CGImage]);
  }
}

- (void)_loadWithColor:(id)color selectionExtentIncludingKnobs:(double)knobs topKnob:(BOOL)knob bottomKnob:(BOOL)bottomKnob
{
  bottomKnobCopy = bottomKnob;
  knobCopy = knob;
  colorCopy = color;
  [(RCOverlayBarLayer *)self selectionKnobRadius];
  v12 = v11;
  [(RCOverlayBarLayer *)self selectionBarWidth];
  v14 = v13;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000503C0;
  v72[3] = &unk_10028AD68;
  knobsCopy = knobs;
  v75 = v12;
  v76 = v13;
  v15 = colorCopy;
  v73 = v15;
  v16 = objc_retainBlock(v72);
  v66 = _NSConcreteStackBlock;
  v67 = 3221225472;
  v68 = sub_100050444;
  v69 = &unk_10028AD90;
  v71 = v12;
  v17 = v15;
  v70 = v17;
  v18 = objc_retainBlock(&v66);
  v22 = (v18[2])(v18, v19, v20, v21);
  topKnob = self->_topKnob;
  self->_topKnob = v22;

  if (!knobCopy)
  {
    [(CALayer *)self->_topKnob bounds:v66];
    [(CALayer *)self->_topKnob setBounds:?];
  }

  v24 = (v18[2])(v18);
  bottomKnob = self->_bottomKnob;
  self->_bottomKnob = v24;

  if (!bottomKnobCopy)
  {
    [(CALayer *)self->_bottomKnob bounds];
    [(CALayer *)self->_bottomKnob setBounds:?];
  }

  v26 = (v16[2])(v16);
  bar = self->_bar;
  self->_bar = v26;

  v30 = RCRoundCoord(v28, v29, v12 + v14 * -0.5);
  [(CALayer *)self->_topKnob bounds];
  Height = CGRectGetHeight(v77);
  v34 = RCRoundCoord(v32, v33, Height);
  frame = [(CALayer *)self->_bar frame];
  v38 = RCRoundCoord(frame, v36, v37);
  frame2 = [(CALayer *)self->_bar frame];
  [(CALayer *)self->_bar setFrame:v30, v34, v38, RCRoundCoord(frame2, v40, v41)];
  [(CALayer *)self->_bar frame];
  MaxY = CGRectGetMaxY(v78);
  barWidthMatchesKnobs = [(RCOverlayBarLayer *)self barWidthMatchesKnobs];
  if (barWidthMatchesKnobs)
  {
    v45 = v12;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = RCRoundCoord(barWidthMatchesKnobs, v44, MaxY - v45);
  frame3 = [(CALayer *)self->_bottomKnob frame];
  v50 = RCRoundCoord(frame3, v48, v49);
  frame4 = [(CALayer *)self->_bottomKnob frame];
  [(CALayer *)self->_bottomKnob setFrame:0.0, v46, v50, RCRoundCoord(frame4, v52, v53)];
  barWidthMatchesKnobs2 = [(RCOverlayBarLayer *)self barWidthMatchesKnobs];
  if (barWidthMatchesKnobs2)
  {
    v56 = v12;
  }

  else
  {
    v56 = 0.0;
  }

  v57 = RCRoundCoord(barWidthMatchesKnobs2, v55, v56);
  frame5 = [(CALayer *)self->_topKnob frame];
  v61 = RCRoundCoord(frame5, v59, v60);
  frame6 = [(CALayer *)self->_topKnob frame];
  [(CALayer *)self->_topKnob setFrame:0.0, v57, v61, RCRoundCoord(frame6, v63, v64)];
  [(CALayer *)self->_bottomKnob frame];
  Width = CGRectGetWidth(v79);
  [(CALayer *)self->_bottomKnob frame];
  [(RCOverlayBarLayer *)self setBounds:0.0, 0.0, Width, CGRectGetMaxY(v80)];
  [(RCOverlayBarLayer *)self setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(RCOverlayBarLayer *)self addSublayer:self->_bar];
  if (knobCopy)
  {
    [(RCOverlayBarLayer *)self addSublayer:self->_topKnob];
  }

  if (bottomKnobCopy)
  {
    [(RCOverlayBarLayer *)self addSublayer:self->_bottomKnob];
  }
}

- (void)layoutSublayers
{
  v55.receiver = self;
  v55.super_class = RCOverlayBarLayer;
  [(RCOverlayBarLayer *)&v55 layoutSublayers];
  [(RCOverlayBarLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_bottomKnob frame];
  v12 = v11;
  v14 = v13;
  v56.origin.x = v4;
  v56.origin.y = v6;
  v56.size.width = v8;
  v56.size.height = v10;
  MidX = CGRectGetMidX(v56);
  [(CALayer *)self->_bottomKnob bounds];
  v16 = CGRectGetMidX(v57);
  v19 = RCRoundCoord(v17, v18, MidX - v16);
  v58.origin.x = v4;
  v58.origin.y = v6;
  v58.size.width = v8;
  v58.size.height = v10;
  Height = CGRectGetHeight(v58);
  [(CALayer *)self->_bottomKnob frame];
  v21 = CGRectGetHeight(v59);
  [(CALayer *)self->_bottomKnob setFrame:v19, RCRoundCoord(v22, v23, Height - v21), v12, v14];
  [(CALayer *)self->_topKnob frame];
  v25 = v24;
  v27 = v26;
  v60.origin.x = v4;
  v60.origin.y = v6;
  v60.size.width = v8;
  v60.size.height = v10;
  v28 = CGRectGetMidX(v60);
  [(CALayer *)self->_topKnob bounds];
  v29 = CGRectGetMidX(v61);
  [(CALayer *)self->_topKnob setFrame:RCRoundCoord(v30, v31, v28 - v29), 0.0, v25, v27];
  [(CALayer *)self->_bar frame];
  v33 = v32;
  v35 = v34;
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  v36 = CGRectGetMidX(v62);
  selectionBarWidth = [(RCOverlayBarLayer *)self selectionBarWidth];
  v40 = RCRoundCoord(selectionBarWidth, v39, v36 + v38 * -0.5);
  barWidthMatchesKnobs = [(RCOverlayBarLayer *)self barWidthMatchesKnobs];
  topKnob = self->_topKnob;
  if (barWidthMatchesKnobs)
  {
    [(CALayer *)topKnob frame];
    MidY = CGRectGetMidY(v63);
  }

  else
  {
    [(CALayer *)topKnob bounds];
    MidY = CGRectGetMaxY(v64);
  }

  v44 = MidY;
  barWidthMatchesKnobs2 = [(RCOverlayBarLayer *)self barWidthMatchesKnobs];
  [(CALayer *)self->_bottomKnob frame];
  if (barWidthMatchesKnobs2)
  {
    MinY = CGRectGetMidY(*&v46);
  }

  else
  {
    MinY = CGRectGetMinY(*&v46);
  }

  v51 = MinY;
  v65.origin.x = v40;
  v65.origin.y = v44;
  v65.size.width = v33;
  v65.size.height = v35;
  [(CALayer *)self->_bar setFrame:v40, v44, v33, v51 - CGRectGetMinY(v65)];
  if (self->_barType != 2)
  {
    v52 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v52 trimHandleCornerRadius];
    [(CALayer *)self->_bar setCornerRadius:?];

    barType = self->_barType;
    if (barType)
    {
      if (barType != 1)
      {
        return;
      }

      v54 = 10;
    }

    else
    {
      v54 = 5;
    }

    [(CALayer *)self->_bar setMaskedCorners:v54];
  }
}

@end