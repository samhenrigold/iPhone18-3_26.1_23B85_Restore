@interface _UIScrollViewGradientMaskView
- (UIEdgeInsets)gradientEndInsets;
- (UIEdgeInsets)gradientIntensities;
- (UIEdgeInsets)gradientStartInsets;
- (_UIScrollViewGradientMaskView)initWithFrame:(CGRect)frame;
- (void)updateWithFrame:(double)frame gradientStartInsets:(double)insets gradientEndInsets:(double)endInsets gradientIntensities:(double)intensities;
@end

@implementation _UIScrollViewGradientMaskView

- (_UIScrollViewGradientMaskView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIScrollViewGradientMaskView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)updateWithFrame:(double)frame gradientStartInsets:(double)insets gradientEndInsets:(double)endInsets gradientIntensities:(double)intensities
{
  v25 = self[51];
  [self frame];
  intensitiesCopy = intensities;
  v35 = v27 == intensities;
  endInsetsCopy = endInsets;
  v29 = !v35;
  if (v25)
  {
    v30 = v26 != endInsets;
  }

  else
  {
    v30 = v29;
  }

  [self gradientStartInsets];
  v101 = a10;
  v35 = a8 == v34 && a7 == v31;
  v36 = v35 && a10 == v33;
  v98 = a9;
  if (!v36 || a9 != v32)
  {
    v38 = a11;
    v39 = a13;
    v40 = a12;
    v41 = 1;
    v42 = a14;
LABEL_29:
    v50 = a18;
    goto LABEL_37;
  }

  [self gradientEndInsets];
  v40 = a12;
  v38 = a11;
  v47 = a12 == v46 && a11 == v43;
  v42 = a14;
  v48 = v47 && a14 == v45;
  v39 = a13;
  if (!v48 || a13 != v44)
  {
    v41 = 1;
    goto LABEL_29;
  }

  [self gradientIntensities];
  v54 = a17 != v53;
  v50 = a18;
  if (a18 != v55)
  {
    v54 = 1;
  }

  if (a15 != v51)
  {
    v54 = 1;
  }

  v41 = a16 != v52 || v54;
LABEL_37:
  [self setFrame:{frame, insets, endInsetsCopy, intensitiesCopy}];
  [self setGradientStartInsets:{a7, a8, v98, v101}];
  v56 = v39;
  [self setGradientEndInsets:{v38, v40, v39, v42}];
  [self setGradientIntensities:{a15, a16, a17, v50}];
  if ((v30 | v41))
  {
    v57 = endInsetsCopy;
    v58 = fmax(v38, v56);
    self[51] = v58 <= 0.0;
    if (v58 > 0.0 && (v40 > 0.0 || v42 > 0.0))
    {
      NSLog(&cfstr_Uiscrollviewgr.isa);
    }

    v59 = objc_opt_new();
    v60 = objc_opt_new();
    [self gradientIntensities];
    v62 = v61;
    [self gradientIntensities];
    v64 = v63;
    [self gradientStartInsets];
    v66 = v65;
    [self gradientEndInsets];
    v68 = v67;
    [self gradientStartInsets];
    v70 = v69;
    [self gradientEndInsets];
    v72 = intensitiesCopy;
    if (self[51])
    {
      [self gradientIntensities];
      v62 = v73;
      [self gradientIntensities];
      v64 = v74;
      [self gradientStartInsets];
      v66 = v75;
      [self gradientEndInsets];
      v68 = v76;
      [self gradientStartInsets];
      v70 = v77;
      [self gradientEndInsets];
      v79 = v78;
      v72 = v57;
    }

    else
    {
      v79 = v71;
    }

    v80 = objc_msgSend_blackColor(UIColor);
    cGColor = [v80 CGColor];

    v82 = [UIColor colorWithWhite:0.0 alpha:0.0];
    cGColor2 = [v82 CGColor];

    v84 = [UIColor colorWithWhite:0.0 alpha:1.0 - v62];
    cGColor3 = [v84 CGColor];

    v86 = [UIColor colorWithWhite:0.0 alpha:1.0 - v64];
    cGColor4 = [v86 CGColor];

    if (v72 > 0.0)
    {
      if (v68 <= 0.0)
      {
        [v59 addObject:&unk_1EFE33EF8];
      }

      else
      {
        [v59 addObject:&unk_1EFE33EF8];
        if (v66 > 0.0)
        {
          [v60 addObject:cGColor2];
          v88 = [MEMORY[0x1E696AD98] numberWithDouble:v66 / v72];
          [v59 addObject:v88];
        }

        [v60 addObject:cGColor3];
        v89 = [MEMORY[0x1E696AD98] numberWithDouble:v68 / v72];
        [v59 addObject:v89];
      }

      [v60 addObject:cGColor];
      v90 = cGColor;
      if (v79 > 0.0)
      {
        v91 = [MEMORY[0x1E696AD98] numberWithDouble:(v72 - v79) / v72];
        [v59 addObject:v91];

        [v60 addObject:cGColor];
        v90 = cGColor4;
        if (v70 > 0.0)
        {
          v92 = [MEMORY[0x1E696AD98] numberWithDouble:(v72 - v70) / v72];
          [v59 addObject:v92];

          [v60 addObject:cGColor4];
          v90 = cGColor2;
        }
      }

      [v59 addObject:&unk_1EFE33F10];
      [v60 addObject:v90];
    }

    v93 = [v59 count];
    if (v93 != [v60 count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScrollViewGradientMaskView.m" lineNumber:147 description:@"Bug in _UIScrollViewGradientMaskView: different number of gradient stops and colors"];
    }

    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __107___UIScrollViewGradientMaskView_updateWithFrame_gradientStartInsets_gradientEndInsets_gradientIntensities___block_invoke;
    v103[3] = &unk_1E70F6228;
    v103[4] = self;
    v104 = v60;
    v105 = v59;
    v94 = v59;
    v95 = v60;
    [UIView performWithoutAnimation:v103];
  }
}

- (UIEdgeInsets)gradientStartInsets
{
  top = self->_gradientStartInsets.top;
  left = self->_gradientStartInsets.left;
  bottom = self->_gradientStartInsets.bottom;
  right = self->_gradientStartInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientEndInsets
{
  top = self->_gradientEndInsets.top;
  left = self->_gradientEndInsets.left;
  bottom = self->_gradientEndInsets.bottom;
  right = self->_gradientEndInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientIntensities
{
  top = self->_gradientIntensities.top;
  left = self->_gradientIntensities.left;
  bottom = self->_gradientIntensities.bottom;
  right = self->_gradientIntensities.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end