@interface PKPaletteToolPickerClippingView
- (PKPaletteToolPickerClippingView)init;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setScalingFactor:(double)factor;
- (void)setupBackdropViewsWithScrollView:(uint64_t)view;
@end

@implementation PKPaletteToolPickerClippingView

- (PKPaletteToolPickerClippingView)init
{
  v103[4] = *MEMORY[0x1E69E9840];
  v96.receiver = self;
  v96.super_class = PKPaletteToolPickerClippingView;
  v2 = [(PKPaletteToolPickerClippingView *)&v96 init];
  v3 = v2;
  if (v2)
  {
    v2->_scalingFactor = 1.0;
    v4 = objc_alloc_init(PKPaletteToolPickerBackgroundContentView);
    backgroundContentView = v3->_backgroundContentView;
    v3->_backgroundContentView = v4;

    [(PKPaletteToolPickerBackgroundContentView *)v3->_backgroundContentView setSemanticContentAttribute:3];
    [(PKPaletteToolPickerClippingView *)v3 addSubview:v3->_backgroundContentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v3->_contentView;
    v3->_contentView = v6;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerClippingView *)v3 addSubview:v3->_contentView];
    v86 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v3->_contentView topAnchor];
    topAnchor2 = [(PKPaletteToolPickerClippingView *)v3 topAnchor];
    v90 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v103[0] = v90;
    leadingAnchor = [(UIView *)v3->_contentView leadingAnchor];
    leadingAnchor2 = [(PKPaletteToolPickerClippingView *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v103[1] = v9;
    trailingAnchor = [(UIView *)v3->_contentView trailingAnchor];
    trailingAnchor2 = [(PKPaletteToolPickerClippingView *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v103[2] = v12;
    bottomAnchor = [(UIView *)v3->_contentView bottomAnchor];
    bottomAnchor2 = [(PKPaletteToolPickerClippingView *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v103[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:4];
    [v86 activateConstraints:v16];

    v17 = objc_alloc_init(PKPalettePassthroughView);
    contentOverlayView = v3->_contentOverlayView;
    v3->_contentOverlayView = v17;

    [(PKPalettePassthroughView *)v3->_contentOverlayView setSemanticContentAttribute:3];
    [(PKPaletteToolPickerClippingView *)v3 addSubview:v3->_contentOverlayView];
    v3->_layoutAxis = 0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v20 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      leadingEdgeView = v3->_leadingEdgeView;
      v3->_leadingEdgeView = v20;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_leadingEdgeView];
      widthAnchor = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView widthAnchor];
      v95 = [widthAnchor constraintEqualToConstant:0.0];

      topAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView topAnchor];
      topAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView topAnchor];
      v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      leadingEdgeViewTopConstraint = v3->_leadingEdgeViewTopConstraint;
      v3->_leadingEdgeViewTopConstraint = v25;

      v91 = MEMORY[0x1E696ACD8];
      v102[0] = v3->_leadingEdgeViewTopConstraint;
      leadingAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView leadingAnchor];
      leadingAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView leadingAnchor];
      v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v102[1] = v29;
      bottomAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_leadingEdgeView bottomAnchor];
      bottomAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView bottomAnchor];
      v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v102[2] = v32;
      v102[3] = v95;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
      [v91 activateConstraints:v33];

      v34 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      trailingEdgeView = v3->_trailingEdgeView;
      v3->_trailingEdgeView = v34;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_trailingEdgeView];
      widthAnchor2 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView widthAnchor];
      v92 = [widthAnchor2 constraintEqualToConstant:0.0];

      topAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView topAnchor];
      topAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView topAnchor];
      v39 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      trailingEdgeViewTopConstraint = v3->_trailingEdgeViewTopConstraint;
      v3->_trailingEdgeViewTopConstraint = v39;

      v87 = MEMORY[0x1E696ACD8];
      v101[0] = v3->_trailingEdgeViewTopConstraint;
      trailingAnchor3 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView trailingAnchor];
      trailingAnchor4 = [(PKPalettePassthroughView *)v3->_contentOverlayView trailingAnchor];
      v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v101[1] = v43;
      bottomAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_trailingEdgeView bottomAnchor];
      bottomAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView bottomAnchor];
      v46 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v101[2] = v46;
      v101[3] = v92;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
      [v87 activateConstraints:v47];

      v48 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      topEdgeView = v3->_topEdgeView;
      v3->_topEdgeView = v48;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_topEdgeView];
      heightAnchor = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView heightAnchor];
      v88 = [heightAnchor constraintEqualToConstant:0.0];

      trailingAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView trailingAnchor];
      trailingAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView trailingAnchor];
      v53 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      topEdgeViewTrailingConstraint = v3->_topEdgeViewTrailingConstraint;
      v3->_topEdgeViewTrailingConstraint = v53;

      leadingAnchor5 = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView leadingAnchor];
      leadingAnchor6 = [(PKPalettePassthroughView *)v3->_contentOverlayView leadingAnchor];
      v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      topEdgeViewLeadingConstraint = v3->_topEdgeViewLeadingConstraint;
      v3->_topEdgeViewLeadingConstraint = v57;

      v59 = MEMORY[0x1E696ACD8];
      topAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_topEdgeView topAnchor];
      topAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView topAnchor];
      v62 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      v100[0] = v62;
      v100[1] = v3->_topEdgeViewLeadingConstraint;
      v100[2] = v3->_topEdgeViewTrailingConstraint;
      v100[3] = v88;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
      [v59 activateConstraints:v63];

      v64 = objc_alloc_init(PKPaletteToolPickerClippingEdgeView);
      bottomEdgeView = v3->_bottomEdgeView;
      v3->_bottomEdgeView = v64;

      [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPalettePassthroughView *)v3->_contentOverlayView addSubview:v3->_bottomEdgeView];
      heightAnchor2 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView heightAnchor];
      v67 = [heightAnchor2 constraintEqualToConstant:0.0];

      trailingAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView trailingAnchor];
      trailingAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView trailingAnchor];
      v70 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      bottomEdgeViewTrailingConstraint = v3->_bottomEdgeViewTrailingConstraint;
      v3->_bottomEdgeViewTrailingConstraint = v70;

      leadingAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView leadingAnchor];
      leadingAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView leadingAnchor];
      v74 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      bottomEdgeViewLeadingConstraint = v3->_bottomEdgeViewLeadingConstraint;
      v3->_bottomEdgeViewLeadingConstraint = v74;

      v76 = MEMORY[0x1E696ACD8];
      v99[0] = v3->_bottomEdgeViewLeadingConstraint;
      v99[1] = v3->_bottomEdgeViewTrailingConstraint;
      bottomAnchor7 = [(PKPaletteToolPickerClippingEdgeView *)v3->_bottomEdgeView bottomAnchor];
      bottomAnchor8 = [(PKPalettePassthroughView *)v3->_contentOverlayView bottomAnchor];
      v79 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
      v99[2] = v79;
      v99[3] = v67;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:4];
      [v76 activateConstraints:v80];

      v98[0] = v3->_leadingEdgeView;
      v98[1] = v3->_trailingEdgeView;
      v98[2] = v3->_topEdgeView;
      v98[3] = v3->_bottomEdgeView;
      v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:4];
      edgeViews = v3->_edgeViews;
      v3->_edgeViews = v81;

      v97[0] = v95;
      v97[1] = v92;
      v97[2] = v88;
      v97[3] = v67;
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:4];
      edgeViewThicknessConstraints = v3->_edgeViewThicknessConstraints;
      v3->_edgeViewThicknessConstraints = v83;
    }

    [(PKPaletteToolPickerClippingView *)v3 _updateUI];
  }

  return v3;
}

- (void)_updateUI
{
  v75 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v3 = *(self + 408);
  if (v3)
  {
    v4 = *(self + 544);
    if (*(v3 + 448) == v4 || (*(v3 + 448) = v4, [(PKPaletteToolPickerBackgroundContentView *)v3 _updateUI], (v3 = *(self + 408)) != 0))
    {
      v5 = *(self + 521);
      if (*(v3 + 441) == v5 || (*(v3 + 441) = v5, [(PKPaletteToolPickerBackgroundContentView *)v3 _updateUI], (v3 = *(self + 408)) != 0))
      {
        v6 = *(self + 522);
        if (*(v3 + 442) == v6 || (*(v3 + 442) = v6, [(PKPaletteToolPickerBackgroundContentView *)v3 _updateUI], (v3 = *(self + 408)) != 0))
        {
          v7 = *(self + 520);
          if (*(v3 + 440) != v7)
          {
            *(v3 + 440) = v7;
            [(PKPaletteToolPickerBackgroundContentView *)v3 _updateUI];
          }
        }
      }
    }
  }

  v8 = *(self + 544);
  if (_UISolariumEnabled())
  {
    if (v8)
    {
      v10 = *(self + 424);
      if (v10 && (*(v10 + 441) & 1) == 0)
      {
        *(v10 + 441) = 1;
        [(PKPaletteToolPickerClippingEdgeView *)v10 _updateUI];
      }

      v11 = *(self + 432);
      if (v11 && (*(v11 + 441) & 1) == 0)
      {
        *(v11 + 441) = 1;
        [(PKPaletteToolPickerClippingEdgeView *)v11 _updateUI];
      }

      if (v8 == 1)
      {
        v12 = *(self + 523);
        v13 = *(self + 440);
        if (v13 && *(v13 + 441) != v12)
        {
          *(v13 + 441) = v12;
          [(PKPaletteToolPickerClippingEdgeView *)v13 _updateUI];
          LOBYTE(v12) = *(self + 523);
        }

LABEL_47:
        v31 = *(self + 448);
        if (v31 && *(v31 + 441) != (v12 & 1))
        {
          *(v31 + 441) = v12 & 1;

          [(PKPaletteToolPickerClippingEdgeView *)v31 _updateUI];
        }

        return;
      }
    }

    else
    {
      v27 = *(self + 523);
      v28 = *(self + 424);
      if (v28 && *(v28 + 441) != v27)
      {
        *(v28 + 441) = v27;
        [(PKPaletteToolPickerClippingEdgeView *)v28 _updateUI];
        v27 = *(self + 523);
      }

      v29 = *(self + 432);
      if (v29 && *(v29 + 441) != v27)
      {
        *(v29 + 441) = v27;
        [(PKPaletteToolPickerClippingEdgeView *)v29 _updateUI];
      }
    }

    v30 = *(self + 440);
    if (v30)
    {
      LOBYTE(v12) = 1;
      if ((*(v30 + 441) & 1) == 0)
      {
        *(v30 + 441) = 1;
        [(PKPaletteToolPickerClippingEdgeView *)v30 _updateUI];
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    goto LABEL_47;
  }

  v59 = v8;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = *(self + 456);
  v15 = [v14 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v69;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v69 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v68 + 1) + 8 * i);
        if (v20)
        {
          v21 = *(self + 544);
          if (*(v20 + 456) != v21)
          {
            *(v20 + 456) = v21;
            [(PKPaletteToolPickerClippingEdgeView *)v20 _updateUI];
          }

          v22 = *(self + 520);
          if (*(v20 + 440) != v22)
          {
            *(v20 + 440) = v22;
            [(PKPaletteToolPickerClippingEdgeView *)v20 _updateUI];
          }
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v17);
  }

  v23 = _UISolariumEnabled();
  v24 = 1;
  if (v23)
  {
    v25 = v59;
    v26 = &OBJC_IVAR___PKLiveMathVariable__scrubbedVariableImageView;
  }

  else
  {
    v25 = v59;
    v26 = &OBJC_IVAR___PKLiveMathVariable__scrubbedVariableImageView;
    if (!v59)
    {
      v24 = *(self + 521) ^ 1;
    }
  }

  [*(self + 424) setHidden:v24 & 1];
  v32 = _UISolariumEnabled();
  v33 = 1;
  if ((v32 & 1) == 0 && !v25)
  {
    v33 = *(self + v26[771]) ^ 1;
  }

  [*(self + 432) setHidden:v33 & 1];
  v34 = _UISolariumEnabled();
  v35 = 1;
  if ((v34 & 1) == 0 && v25 == 1)
  {
    v35 = *(self + 521) ^ 1;
  }

  [*(self + 440) setHidden:v35 & 1];
  v36 = _UISolariumEnabled();
  v37 = 1;
  if ((v36 & 1) == 0 && v25 == 1)
  {
    v37 = *(self + v26[771]) ^ 1;
  }

  [*(self + 448) setHidden:v37 & 1];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v38 = *(self + 464);
  v39 = [v38 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v65;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v65 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v64 + 1) + 8 * j);
        [self scalingFactor];
        UIRoundToViewScale();
        [v43 setConstant:?];
      }

      v40 = [v38 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v40);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v44 = *(self + 464);
  v45 = [v44 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v61;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v60 + 1) + 8 * k);
        [self scalingFactor];
        UIRoundToViewScale();
        [v49 setConstant:?];
      }

      v46 = [v44 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v46);
  }

  [self scalingFactor];
  v51 = v50;
  v52 = -(v50 * 6.0);
  v53 = 0.0;
  if (v25)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = -(v50 * 6.0);
  }

  [*(self + 472) setConstant:v54];
  [*(self + 480) setConstant:v54];
  if (v25 == 1)
  {
    v55 = v51 * 6.0;
    if (*(self + 520))
    {
      v56 = 0.0;
    }

    else
    {
      v56 = v55;
    }

    [*(self + 496) setConstant:v56];
    if (!*(self + 520))
    {
      v53 = v55;
    }
  }

  else
  {
    [*(self + 496) setConstant:0.0];
  }

  [*(self + 512) setConstant:v53];
  if (*(self + 520))
  {
    v57 = v52;
  }

  else
  {
    v57 = 0.0;
  }

  [*(self + 488) setConstant:v57];
  if (*(self + 520))
  {
    v58 = v52;
  }

  else
  {
    v58 = 0.0;
  }

  [*(self + 504) setConstant:v58];
}

- (void)setupBackdropViewsWithScrollView:(uint64_t)view
{
  v11 = a2;
  if (view && _UISolariumEnabled())
  {
    v3 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v4 = *(view + 424);
    *(view + 424) = v3;

    v5 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v6 = *(view + 432);
    *(view + 432) = v5;

    v7 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v8 = *(view + 440);
    *(view + 440) = v7;

    v9 = [[PKPaletteToolPickerClippingEdgeView alloc] initWithEdge:*(view + 536) inParent:v11 withScrollView:?];
    v10 = *(view + 448);
    *(view + 448) = v9;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaletteToolPickerClippingView;
  [(PKPaletteToolPickerClippingView *)&v3 layoutSubviews];
  [(PKPaletteToolPickerClippingView *)self bounds];
  [(PKPaletteToolPickerBackgroundContentView *)self->_backgroundContentView setFrame:?];
  [(PKPaletteToolPickerClippingView *)self bounds];
  [(PKPalettePassthroughView *)self->_contentOverlayView setFrame:?];
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPickerClippingView *)self _updateUI];
  }
}

@end