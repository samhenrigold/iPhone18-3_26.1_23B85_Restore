@interface PKExpressTransactionBannerViewController
- (PKBannerViewControllerPresentable)presentable;
- (int64_t)preferredCustomLayout;
- (void)_cancelRevokeTimer;
- (void)_displayResolution;
- (void)_revoked;
- (void)_startRevokeTimer;
- (void)_updateBalanceContent;
- (void)_updatePreferredContentSize;
- (void)dealloc;
- (void)expressLabelViewDidChangeSize:(id)size;
- (void)expressTrailingView:(id)view revealingCheckmarkAnimated:(BOOL)animated;
- (void)loadView;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setBannerDetached:(BOOL)detached;
- (void)setPresentable:(id)presentable;
- (void)setState:(id)state;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation PKExpressTransactionBannerViewController

void __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[125] setTransitProperties:*(*(*(a1 + 32) + 8) + 40)];
    [v3[125] setDynamicBalances:*(*(*(a1 + 40) + 8) + 40)];
    [(PKExpressTransactionBannerViewController *)v3 _updateBalanceContent];
    WeakRetained = v3;
  }
}

- (void)_updateBalanceContent
{
  if (!self || ![self isViewLoaded])
  {
    return;
  }

  v2 = self[129];
  v3 = self[125];
  if (v3)
  {
    displayableBalances = [v3 displayableBalances];
    v5 = displayableBalances;
    if (displayableBalances && [displayableBalances count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      formattedValue = [v6 formattedValue];
    }

    else
    {
      formattedValue = 0;
    }
  }

  else
  {
    formattedValue = 0;
  }

  v14 = formattedValue;
  if (v2)
  {
    v8 = *(v2 + 416);
    v9 = v14;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (v9 && v8)
      {
        v11 = [v8 isEqualToString:v9];

        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v12 = [v10 copy];
      v13 = *(v2 + 416);
      *(v2 + 416) = v12;

      [PKExpressBannerLabelView _updateLabelAnimated:v2];
    }
  }

LABEL_20:
}

- (void)dealloc
{
  transitionTimer = self->_transitionTimer;
  if (transitionTimer)
  {
    dispatch_source_cancel(transitionTimer);
  }

  revokeTimer = self->_revokeTimer;
  if (revokeTimer)
  {
    dispatch_source_cancel(revokeTimer);
  }

  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = PKExpressTransactionBannerViewController;
  [(PKExpressTransactionBannerViewController *)&v5 dealloc];
}

- (void)loadView
{
  v120 = *MEMORY[0x1E69E9840];
  v107.receiver = self;
  v107.super_class = PKExpressTransactionBannerViewController;
  [(PKExpressTransactionBannerViewController *)&v107 loadView];
  view = [(PKExpressTransactionBannerViewController *)self view];
  [view setOpaque:0];
  [view setAutoresizingMask:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = self->_containerView;
  self->_containerView = v5;

  [(UIView *)self->_containerView setOpaque:0];
  v7 = self->_containerView;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)v7 setBackgroundColor:clearColor2];

  v9 = [PKExpressBannerLeadingView alloc];
  pass = self->_pass;
  v11 = pass;
  v12 = v11;
  if (!v9)
  {
    goto LABEL_54;
  }

  if (!v11)
  {
    goto LABEL_53;
  }

  v13 = PKPassKitUIBundle();
  v14 = [v13 URLForResource:@"aperture_express_leading-D73" withExtension:@"ca"];

  if (!v14)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v111.receiver) = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKExpressBannerLeadingView: could not find archive.", &v111, 2u);
    }

    v61 = 0;
    goto LABEL_33;
  }

  v15 = *MEMORY[0x1E6979EF8];
  v108.receiver = 0;
  v16 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v14 type:v15 options:0 error:&v108];
  v17 = v108.receiver;
  if (!v16)
  {
    rootLayer = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(rootLayer, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v111.receiver) = 138412290;
      *(&v111.receiver + 4) = v17;
      _os_log_impl(&dword_1BD026000, rootLayer, OS_LOG_TYPE_DEFAULT, "PKExpressBannerLeadingView: could not load archive - %@.", &v111, 0xCu);
    }

    v61 = 0;
    goto LABEL_32;
  }

  rootLayer = [v16 rootLayer];
  if (rootLayer)
  {
    isGeometryFlipped = [v16 isGeometryFlipped];
    [rootLayer setGeometryFlipped:?];
    v19 = [v16 publishedObjectWithName:@"cardfront"];
    if (v19)
    {
      v20 = v19;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        obj = v20;
        v111.receiver = v9;
        v111.super_class = PKExpressBannerLeadingView;
        v21 = [(PKExpressTransactionBannerViewController *)&v111 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v22 = v21;
        if (v21)
        {
          v103 = rootLayer;
          objc_storeStrong(&v21->super._accessibilityHUD, rootLayer);
          v101 = *(v22 + 432);
          v23 = PKLayerNullActions();
          [v101 setActions:v23];

          objc_storeStrong((v22 + 440), v20);
          objc_storeStrong((v22 + 408), pass);
          v24 = [[PKPassThumbnailView alloc] initWithPass:0 suppressedContent:0 rendererState:2 options:?];
          v25 = *(v22 + 416);
          *(v22 + 416) = v24;

          v26 = *(v22 + 416);
          if (v26)
          {
            if ((*(v26 + 458) & 1) == 0)
            {
              *(v26 + 458) = 1;
              v27 = *(v26 + 432);
              if (v27)
              {
                [v27 setModallyPresented:*(v26 + 458)];
              }
            }
          }

          [(PKPassThumbnailView *)*(v22 + 416) setBrighten:?];
          [(PKPassThumbnailView *)*(v22 + 416) setShadowVisibility:?];
          [v22 addSubview:*(v22 + 416)];
          layer = [v22 layer];
          [layer addSublayer:*(v22 + 432)];
          layer2 = [*(v22 + 416) layer];
          layer3 = [MEMORY[0x1E6979408] layer];
          v30 = *(v22 + 424);
          *(v22 + 424) = layer3;

          [*(v22 + 424) setSourceLayer:layer2];
          [*(v22 + 424) setHidesSourceLayer:1];
          [*(v22 + 424) setGeometryFlipped:isGeometryFlipped];
          [*(v22 + 440) addSublayer:*(v22 + 424)];
          [*(v22 + 440) bounds];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          [*(v22 + 416) sizeThatFits:{v35, 1.79769313e308}];
          if (isGeometryFlipped)
          {
            v46 = 0x200000001;
          }

          else
          {
            v46 = 1;
          }

          v41.n128_u64[0] = v32;
          v42.n128_u64[0] = v34;
          v43.n128_f64[0] = v36;
          v44.n128_u64[0] = v38;
          PKSizeAlignedInRect(v46, v39, v40, v41, v42, v43, v44, v45);
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;
          [*(v22 + 416) setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          [*(v22 + 424) setFrame:{v48, v50, v52, v54}];
          v55 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:*(v22 + 432)];
          v56 = *(v22 + 448);
          *(v22 + 448) = v55;

          [*(v22 + 448) setInitialStatesOfLayer:*(v22 + 432)];
          *(v22 + 456) = 0;
          *(v22 + 460) = 0;
          [*(v22 + 432) bounds];
          *(v22 + 480) = v57;
          *(v22 + 488) = v58;
          *(v22 + 496) = vaddq_f64(*(v22 + 480), vdupq_n_s64(0xC051000000000000));
          *(v22 + 512) = *(v22 + 480);
          *(v22 + 528) = *(v22 + 496);
          *(v22 + 544) = ArchiveAlignmentInsets;
          *(v22 + 560) = unk_1BE117000;
          [layer anchorPoint];
          v60.f64[1] = v59;
          [*(v22 + 432) setAnchorPoint:{vdivq_f64(vmlaq_f64(xmmword_1BE116FD0, *(v22 + 496), v60), *(v22 + 480))}];
          [(PKExpressBannerLeadingView *)v22 _updateSizeWithAnimationFactory:?];

          rootLayer = v103;
        }

        v9 = v22;
        v61 = v9;
        v62 = obj;
        goto LABEL_31;
      }
    }

    v62 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v111.receiver) = 0;
      v63 = "PKExpressBannerLeadingView: missing card front.";
      goto LABEL_29;
    }
  }

  else
  {
    v62 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v111.receiver) = 0;
      v63 = "PKExpressBannerLeadingView: archive has no content.";
LABEL_29:
      _os_log_impl(&dword_1BD026000, v62, OS_LOG_TYPE_DEFAULT, v63, &v111, 2u);
    }
  }

  v61 = 0;
LABEL_31:

LABEL_32:
LABEL_33:

  while (1)
  {

    leadingView = self->_leadingView;
    self->_leadingView = v61;

    v65 = [PKExpressBannerTrailingView alloc];
    v106 = view;
    if (v65)
    {
      v108.receiver = v65;
      v108.super_class = PKExpressBannerTrailingView;
      v66 = *MEMORY[0x1E695F058];
      v67 = *(MEMORY[0x1E695F058] + 8);
      v68 = *(MEMORY[0x1E695F058] + 16);
      v69 = *(MEMORY[0x1E695F058] + 24);
      v70 = [(PKExpressTransactionBannerViewController *)&v108 initWithFrame:*MEMORY[0x1E695F058], v67, v68, v69];
      v71 = v70;
      if (v70)
      {
        LODWORD(v70->super._frozenTraitCollection) = 0;
        v72 = [PKExpressGlyphView alloc];
        if (v72)
        {
          v111.receiver = v72;
          v111.super_class = PKExpressGlyphView;
          v73 = [(PKExpressTransactionBannerViewController *)&v111 initWithFrame:v66, v67, v68, v69];
          v74 = v73;
          if (v73)
          {
            v73->super._traitChangeRegistry = 0x4047000000000000;
            v75 = [objc_alloc(MEMORY[0x1E69BC758]) initWithStyle:7];
            v76 = *(v74 + 432);
            *(v74 + 432) = v75;

            [*(v74 + 432) setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *(v74 + 424), *(v74 + 424)}];
            [*(v74 + 432) setDelegate:v74];
            [v74 addSubview:*(v74 + 432)];
            *(v74 + 408) = 0;
            [(PKExpressGlyphView *)v74 _updateGlyphViewAnimated:?];
          }
        }

        else
        {
          v74 = 0;
        }

        glyphView = v71->_glyphView;
        v71->_glyphView = v74;

        [(PKExpressBannerTrailingView *)v71 addSubview:v71->_glyphView];
        v78 = v71->_glyphView;
        if (v78)
        {
          objc_storeWeak(&v78->_delegate, v71);
        }

        [(PKExpressBannerTrailingView *)v71 _updateStateAnimated:0.0 withDelay:?];
        layer4 = [(PKExpressBannerTrailingView *)v71 layer];
        v80 = *(MEMORY[0x1E69792E8] + 48);
        v113 = *(MEMORY[0x1E69792E8] + 32);
        v114 = v80;
        v115 = *(MEMORY[0x1E69792E8] + 64);
        v81 = *(MEMORY[0x1E69792E8] + 80);
        v82 = *(MEMORY[0x1E69792E8] + 16);
        v111 = *MEMORY[0x1E69792E8];
        v112 = v82;
        v116 = v81;
        v117 = 0xBF739354D8AD2CBELL;
        v83 = *(MEMORY[0x1E69792E8] + 112);
        v118 = *(MEMORY[0x1E69792E8] + 96);
        v119 = v83;
        [layer4 setSublayerTransform:&v111];
      }
    }

    else
    {
      v71 = 0;
    }

    view = &OBJC_IVAR___PKExpressTransactionBannerViewController__trailingView;
    trailingView = self->_trailingView;
    self->_trailingView = v71;

    layer5 = [(PKExpressBannerTrailingView *)self->_trailingView layer];
    v86 = objc_alloc(MEMORY[0x1E6979378]);
    v12 = *MEMORY[0x1E6979928];
    v87 = [v86 initWithType:*MEMORY[0x1E6979928]];
    [v87 setName:@"blur"];
    v110 = v87;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
    [layer5 setFilters:v88];

    self->_trailingBlur = 0.0;
    v89 = [PKExpressBannerLabelView alloc];
    if (!v89)
    {
      break;
    }

    v111.receiver = v89;
    v111.super_class = PKExpressBannerLabelView;
    v90 = [(PKExpressTransactionBannerViewController *)&v111 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v91 = v90;
    if (!v90)
    {
      goto LABEL_46;
    }

    LODWORD(v90->super._frozenTraitCollection) = 0;
    frozenTraitCollection_low = LODWORD(v90->super._frozenTraitCollection);
    if (frozenTraitCollection_low < 4)
    {
      [(PKExpressTransactionBannerViewController *)v90 setAnchorPoint:dbl_1BE1170B8[frozenTraitCollection_low], dbl_1BE117098[frozenTraitCollection_low]];
      goto LABEL_46;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v61 = 0;
  }

  v91 = 0;
LABEL_46:
  trailingLabel = self->_trailingLabel;
  self->_trailingLabel = v91;

  layer6 = [(PKExpressBannerLabelView *)self->_trailingLabel layer];
  v95 = [objc_alloc(MEMORY[0x1E6979378]) initWithType:v12];
  [v95 setName:@"blur"];
  v109 = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
  [layer6 setFilters:v96];

  self->_trailingLabelBlur = 0.0;
  [(PKExpressBannerLabelView *)self->_trailingLabel setHidden:1];
  [(PKExpressBannerLabelView *)self->_trailingLabel setAlpha:0.0];
  layer7 = [(UIView *)self->_containerView layer];
  [layer7 setAllowsHitTesting:0];

  [(UIView *)self->_containerView setUserInteractionEnabled:0];
  v98 = self->_leadingView;
  if (v98)
  {
    objc_storeWeak(&v98->_delegate, self);
  }

  v99 = self->_trailingView;
  if (v99)
  {
    objc_storeWeak(&v99->_delegate, self);
  }

  v100 = self->_trailingLabel;
  if (v100)
  {
    objc_storeWeak(&v100->_delegate, self);
  }

  [v106 addSubview:self->_containerView];
  [(UIView *)self->_containerView addSubview:self->_trailingLabel];
  [(UIView *)self->_containerView addSubview:self->_trailingView];
  [(UIView *)self->_containerView addSubview:self->_leadingView];
  [(PKExpressTransactionBannerViewController *)self _updateBalanceContent];
}

- (void)viewWillLayoutSubviews
{
  v153 = *MEMORY[0x1E69E9840];
  v142.receiver = self;
  v142.super_class = PKExpressTransactionBannerViewController;
  [(PKExpressTransactionBannerViewController *)&v142 viewWillLayoutSubviews];
  activeLayoutMode = self->_activeLayoutMode;
  if (activeLayoutMode == 4 || activeLayoutMode == 1)
  {
    view = [(PKExpressTransactionBannerViewController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    containerView = self->_containerView;
    v24.n128_u64[0] = *MEMORY[0x1E695F060];
    v25.n128_u64[0] = *(MEMORY[0x1E695F060] + 8);
    v26.n128_f64[0] = v16;
    v27.n128_f64[0] = v18;
    v28.n128_f64[0] = v20;
    v29.n128_f64[0] = v22;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v24, v25, v26, v27, v28, v29, v30);
    [(UIView *)containerView setFrame:?];
    [(UIView *)self->_containerView convertRect:view fromView:v7, v9, v11, v13];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [(UIView *)self->_containerView convertRect:view fromView:v16, v18, v20, v22];
    v106 = v40;
    v107 = v39;
    v42 = v41;
    v44 = v43;

    if ((self->_state - 3) <= 2)
    {
      v45.n128_u64[0] = *&self->_psuedoShrunkSize.width;
      v46.n128_u64[0] = *&self->_psuedoShrunkSize.height;
      v47.n128_f64[0] = v42;
      v50.n128_u64[0] = v106;
      v48.n128_u64[0] = v107;
      v49.n128_f64[0] = v44;
      PKSizeAlignedInRect(1, v45, v46, v47, v48, v49, v50, v51);
      v32 = v52;
      v34 = v53;
      v36 = v54;
      v38 = v55;
    }

    if (self->_transitioning)
    {
      _isInAnimationBlockWithAnimationsEnabled = 1;
    }

    else
    {
      _isInAnimationBlockWithAnimationsEnabled = [MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled];
    }

    v57 = 2;
    if (!_shouldReverseLayoutDirection)
    {
      v57 = 0x200000000;
    }

    v58 = fmax(v42, v32);
    v59 = v58 - v32;
    v60 = fmax(v42 + v44, v58);
    v61 = fmax(v32 + v36, v60) - v60;
    if (_shouldReverseLayoutDirection)
    {
      v62 = v60;
    }

    else
    {
      v62 = v32;
    }

    if (_shouldReverseLayoutDirection)
    {
      v63 = v61;
    }

    else
    {
      v63 = v59;
    }

    v102 = v62;
    v103 = v63;
    if (_shouldReverseLayoutDirection)
    {
      v64 = v32;
    }

    else
    {
      v64 = v60;
    }

    if (_shouldReverseLayoutDirection)
    {
      v65 = v59;
    }

    else
    {
      v65 = v61;
    }

    v104 = v64;
    v105 = v65;
    state = self->_state;
    if (state < 0xA)
    {
      v101 = v57;
      LODWORD(v98) = state == 9;
      HIDWORD(v98) = state != 0;
      v99 = self->_activeLayoutMode > 1uLL;
      v100 = _isInAnimationBlockWithAnimationsEnabled;
      if (_isInAnimationBlockWithAnimationsEnabled)
      {
        v108 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
        v70 = self->_state;
        if ((v70 - 3) >= 4)
        {
          if (v70 == 9)
          {
            [v108 setSpeed:0.85];
          }
        }

        else
        {
          LODWORD(v67) = 1049830265;
          LODWORD(v68) = *"ŏ)?-&v?";
          LODWORD(v69) = *"-&v?";
          v71 = [MEMORY[0x1E69793D0] functionWithControlPoints:v67 :0.0 :v68 :v69];
          [v108 setTiming:v71 withDynamicDurationProvider:&__block_literal_global_246];
        }

        v72 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
        v74 = self->_state;
        if (v74 - 3 > 3)
        {
          v73 = 0;
        }

        else
        {
          v73 = [v108 copy];
          [v73 setSpeed:1.176];
          v74 = self->_state;
        }
      }

      else
      {
        v108 = 0;
        v72 = 0;
        v73 = 0;
        v74 = self->_state;
      }

      leadingView = self->_leadingView;
      if (v74 > 2)
      {
        v76 = 2;
      }

      else
      {
        v76 = dword_1BE117088[v74];
      }

      if (v73)
      {
        v77 = v73;
      }

      else
      {
        v77 = v72;
      }

      v78 = v77;
      if (leadingView && leadingView->_sizeClass != v76)
      {
        leadingView->_sizeClass = v76;
        [(PKExpressBannerLeadingView *)leadingView _updateSizeWithAnimationFactory:v78];
      }

      trailingLabel = self->_trailingLabel;
      if (_shouldReverseLayoutDirection)
      {
        v80 = 0;
      }

      else
      {
        v80 = 2;
      }

      if (trailingLabel && trailingLabel->_alignmentEdge != v80)
      {
        trailingLabel->_alignmentEdge = v80;
        alignmentEdge = trailingLabel->_alignmentEdge;
        if (alignmentEdge >= 4)
        {
          goto LABEL_66;
        }

        v82 = dbl_1BE117098[alignmentEdge];
        v83 = dbl_1BE1170B8[alignmentEdge];
        [(UILabel *)trailingLabel->_label setAnchorPoint:v83, v82];
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v84 = trailingLabel->_obsoleteLabels;
        v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v143 objects:&v147 count:16];
        if (v85)
        {
          v86 = *v144;
          do
          {
            for (i = 0; i != v85; ++i)
            {
              if (*v144 != v86)
              {
                objc_enumerationMutation(v84);
              }

              [*(*(&v143 + 1) + 8 * i) setAnchorPoint:{v83, v82, v98}];
            }

            v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v143 objects:&v147 count:16];
          }

          while (v85);
        }

        [(PKExpressBannerLabelView *)trailingLabel setAnchorPoint:v83, v82];
        [(PKExpressBannerLabelView *)trailingLabel setNeedsLayout];
      }

      trailingView = self->_trailingView;
      v89 = 0.0;
      if (self->_transitioning)
      {
        v89 = 0.28;
        if (self->_state != 3)
        {
          v89 = 0.0;
        }
      }

      v90 = 0x3F8u >> state;
      if (trailingView)
      {
        if (trailingView->_state != ((0x3F8u >> state) & 1))
        {
          trailingView->_state = (0x3F8u >> state) & 1;
          [(PKExpressBannerTrailingView *)trailingView _updateStateAnimated:v89 withDelay:?];
        }
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_4;
      aBlock[3] = &unk_1E8025BA0;
      aBlock[4] = self;
      v91 = _Block_copy(aBlock);
      v147 = 0;
      v148 = &v147;
      v149 = 0x4010000000;
      v150 = &unk_1BE347799;
      v92 = *(MEMORY[0x1E695F050] + 16);
      v151 = *MEMORY[0x1E695F050];
      v152 = v92;
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_5;
      v110[3] = &unk_1E8025C68;
      v93 = v91;
      v115 = v93;
      v94 = v73;
      v111 = v94;
      v95 = v72;
      v135 = v100;
      v136 = BYTE4(v98);
      v137 = v99;
      v138 = v90 & 1;
      v112 = v95;
      selfCopy = self;
      v139 = v98;
      v117 = v42;
      v118 = v107;
      v119 = v44;
      v120 = v106;
      v121 = v32;
      v122 = v34;
      v123 = v36;
      v124 = v38;
      v140 = _shouldReverseLayoutDirection;
      v125 = v102;
      v126 = v34;
      v127 = v103;
      v128 = v38;
      v129 = v104;
      v130 = v34;
      v131 = v105;
      v132 = v38;
      v133 = v101;
      v134 = v101;
      v116 = &v147;
      v96 = v108;
      v114 = v96;
      v97 = _Block_copy(v110);
      v97[2](v97, 0);
      v97[2](v97, 1);
      if (!CGRectIsNull(v148[1]))
      {
        v97[2](v97, 2);

        _Block_object_dispose(&v147, 8);
        return;
      }
    }

LABEL_66:
    __break(1u);
  }
}

void *__66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_4(void *result, unsigned int a2)
{
  if (a2 < 3)
  {
    return *(result[4] + *off_1E8025D68[a2]);
  }

  __break(1u);
  return result;
}

void __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_5(uint64_t a1, unsigned int a2)
{
  v4 = (*(*(a1 + 64) + 16))();
  v5 = [v4 layer];
  if (a2 || (v6 = *(a1 + 32)) == 0)
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;
  if (*(a1 + 224) == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
  }

  else
  {
    v8 = 0;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v155 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_6;
  aBlock[3] = &unk_1E8025BC8;
  v151 = &v152;
  v9 = v8;
  v150 = v9;
  v10 = _Block_copy(aBlock);
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_7;
  v146[3] = &unk_1E8025BF0;
  v148 = &v152;
  v11 = v9;
  v147 = v11;
  v12 = _Block_copy(v146);
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_8;
  v136[3] = &unk_1E8025C40;
  v142 = a2;
  v143 = *(a1 + 225);
  v144 = *(a1 + 226);
  v136[4] = *(a1 + 48);
  v13 = v7;
  v137 = v13;
  v14 = v10;
  v139 = v4;
  v140 = v14;
  v145 = *(a1 + 228);
  v138 = v5;
  v15 = v12;
  v141 = v15;
  v16 = _Block_copy(v136);
  v19 = v16;
  if (a2 < 2)
  {
    v20 = *(*(a1 + 48) + 1072);
    if ((v20 - 3) >= 7)
    {
      if ((v20 - 1) >= 2)
      {
        v61 = 0.0;
        v59 = 0.0;
        v57 = 0.0;
        v55 = 0.0;
        if (!v20)
        {
          v103.n128_f64[0] = v16[2](v16, *(a1 + 96), *(a1 + 104));
          v104.n128_u64[0] = *(a1 + 80);
          v105.n128_u64[0] = *(a1 + 88);
          v106.n128_u64[0] = *(a1 + 96);
          v107.n128_u64[0] = *(a1 + 104);
          PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v103, v108, v104, v105, v106, v107, v109);
          v57 = v110;
          v59 = v111;
          v61 = v112;
          v55 = v113 + 22.0;
        }
      }

      else
      {
        v162.origin.x = *(a1 + 112);
        v162.origin.y = *(a1 + 88) + *(a1 + 104);
        v162.size.width = *(a1 + 128);
        v162.size.height = *(a1 + 120) + *(a1 + 136) - v162.origin.y;
        memset(&slice, 0, sizeof(slice));
        remainder = v162;
        CGRectDivide(v162, &slice, &remainder, 6.0, CGRectMinYEdge);
        v80.n128_f64[0] = v19[2](v19, remainder.size.width, remainder.size.height);
        v82.n128_u64[0] = *&remainder.origin.y;
        v81.n128_u64[0] = *&remainder.origin.x;
        v84.n128_u64[0] = *&remainder.size.height;
        v83.n128_u64[0] = *&remainder.size.width;
        PKSizeAlignedInRect(1, v80, v85, v81, v82, v83, v84, v86);
        v55 = v87;
        v57 = v88;
        v59 = v89;
        v61 = v90;
      }
    }

    else
    {
      v17.n128_u64[0] = 0x4032AAAAAAAAAAABLL;
      PKFloatRoundToPixel(v17, v18);
      v22 = v21;
      v23 = 176;
      if (!a2)
      {
        v23 = 144;
      }

      v24 = 184;
      if (!a2)
      {
        v24 = 152;
      }

      v25 = 192;
      if (!a2)
      {
        v25 = 160;
      }

      v26 = 200;
      if (!a2)
      {
        v26 = 168;
      }

      v27 = *(a1 + v23);
      v28 = *(a1 + v24);
      v29 = *(a1 + v26);
      v30 = *(a1 + v25);
      v163.origin.x = v27;
      v163.origin.y = v28;
      v163.size.width = v30;
      v163.size.height = v29;
      v156.origin.x = *(a1 + 112) + 10.0;
      v156.origin.y = *(a1 + 120) + 10.0;
      v156.size.width = *(a1 + 128) + -20.0;
      v156.size.height = *(a1 + 136) + -20.0;
      v157 = CGRectIntersection(v156, v163);
      width = v157.size.width;
      height = v157.size.height;
      IsNull = CGRectIsNull(v157);
      if (IsNull)
      {
        v35.n128_f64[0] = v29;
      }

      else
      {
        v35.n128_f64[0] = height;
      }

      if (IsNull)
      {
        v34.n128_f64[0] = v30;
      }

      else
      {
        v34.n128_f64[0] = width;
      }

      v36 = (v19[2])(v19, v34, v35);
      v38 = v37.n128_f64[0];
      v132 = v36;
      v39.n128_f64[0] = v22 + v36 * -0.5;
      PKFloatRoundToPixel(v39, v37);
      v41 = v40;
      v42.n128_f64[0] = v22 + v38 * -0.5;
      PKFloatRoundToPixel(v42, v43);
      v44 = fmax(v41, 10.0);
      memset(&slice, 0, sizeof(slice));
      remainder.origin.x = v27;
      remainder.origin.y = v28;
      remainder.size.width = v30;
      remainder.size.height = v29;
      v45 = 212;
      if (!a2)
      {
        v45 = 208;
      }

      v158.origin.x = v27;
      v158.origin.y = v28;
      v158.size.width = v30;
      v158.size.height = v29;
      CGRectDivide(v158, &slice, &remainder, v44, *(a1 + v45));
      v53 = 220;
      if (!a2)
      {
        v53 = 216;
      }

      v48.n128_u64[0] = *&remainder.origin.x;
      v49.n128_u64[0] = *&remainder.origin.y;
      v50.n128_u64[0] = *&remainder.size.width;
      v51.n128_u64[0] = *&remainder.size.height;
      v46.n128_f64[0] = v132;
      v47.n128_f64[0] = v38;
      PKSizeAlignedInRect(*(a1 + v53) | 0x100000000, v46, v47, v48, v49, v50, v51, v52);
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
    }

    if (a2)
    {
      v114 = *(*(a1 + 72) + 8);
      v114[4] = v55;
      v114[5] = v57;
      v114[6] = v59;
      v114[7] = v61;
    }

    goto LABEL_40;
  }

  v61 = 0.0;
  v59 = 0.0;
  v57 = 0.0;
  v55 = 0.0;
  if (a2 == 2)
  {
    if (*(a1 + 228) != 1)
    {
      v91 = *(a1 + 96);
      slice.origin = *(a1 + 80);
      slice.size = v91;
      goto LABEL_35;
    }

    v62 = *(a1 + 192);
    slice.origin = *(a1 + 176);
    slice.size = v62;
    v63 = *(*(a1 + 72) + 8);
    v64 = *(a1 + 212);
    v62.width = slice.origin.x;
    y = slice.origin.y;
    v66 = slice.size.width;
    v67 = slice.size.height;
    v68 = v63[4];
    v69 = v63[5];
    v70 = v63[6];
    v71 = v63[7];
    v159 = CGRectStandardize(*&v62.width);
    x = v159.origin.x;
    v73 = v159.origin.y;
    v74 = v159.size.width;
    v75 = v159.size.height;
    v164.origin.x = v68;
    v164.origin.y = v69;
    v164.size.width = v70;
    v164.size.height = v71;
    v160 = CGRectIntersection(v159, v164);
    v76 = v160.origin.x;
    v77 = v160.origin.y;
    v78 = v160.size.width;
    v79 = v160.size.height;
    if (CGRectIsNull(v160))
    {
LABEL_31:
      slice.origin.x = x;
      slice.origin.y = v73;
      slice.size.width = v74;
      slice.size.height = v75;
      memset(&remainder, 0, sizeof(remainder));
      v161.origin.x = x;
      v161.origin.y = v73;
      v161.size.width = v74;
      v161.size.height = v75;
      CGRectDivide(v161, &remainder, &slice, 5.0, *(a1 + 212));
LABEL_35:
      v92.n128_f64[0] = v19[2](v19, slice.size.width, slice.size.height);
      v93.n128_u64[0] = *&slice.origin.x;
      v94.n128_u64[0] = *&slice.origin.y;
      v95.n128_u64[0] = *&slice.size.width;
      v96.n128_u64[0] = *&slice.size.height;
      PKSizeAlignedInRect(*(a1 + 220) | 0x100000000, v92, v97, v93, v94, v95, v96, v98);
      v55 = v99;
      v57 = v100;
      v59 = v101;
      v61 = v102;
      goto LABEL_40;
    }

    if (v64 > 1)
    {
      if (v64 == 2)
      {
        v74 = fmax(v76 - x, 0.0);
        goto LABEL_31;
      }

      if (v64 == 3)
      {
        v75 = fmax(v77 - v73, 0.0);
        goto LABEL_31;
      }
    }

    else
    {
      if (!v64)
      {
        v131 = x + v74;
        x = fmin(v76 + v78, x + v74);
        v74 = v131 - x;
        goto LABEL_31;
      }

      if (v64 == 1)
      {
        v130 = v73 + v75;
        v73 = fmin(v77 + v79, v73 + v75);
        v75 = v130 - v73;
        goto LABEL_31;
      }
    }

    __break(1u);
    return;
  }

LABEL_40:
  [v5 anchorPoint];
  v116 = v115;
  v118 = v117;
  [v5 position];
  v121 = v119.n128_f64[0];
  v122 = v120;
  v123 = v55 + v116 * v59;
  v124 = v57 + v118 * v61;
  if (v123 != v119.n128_f64[0] || v124 != v120)
  {
    if (*(a1 + 56))
    {
      if (v119.n128_f64[0] != v123)
      {
        v126 = *(a1 + 48);
        v119.n128_u64[0] = 0;
        if (*(v126 + 1008) == 1)
        {
          v119.n128_u64[0] = 0x3F8EB851EB851EB8;
          if (*(v126 + 1072) != 1)
          {
            v119.n128_f64[0] = 0.0;
          }
        }

        v14[2](v14, v119, v121, v123);
      }

      if (v122 != v124)
      {
        v127 = *(a1 + 48);
        v119.n128_u64[0] = 0;
        if (*(v127 + 1008) == 1)
        {
          v119.n128_u64[0] = 0x3FB3333333333333;
          if (*(v127 + 1072) != 3)
          {
            v119.n128_f64[0] = 0.0;
          }
        }

        (v14[2])(v14, *(a1 + 56), @"position.y", v119, v122, v124);
      }
    }

    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_11;
    v133[3] = &unk_1E8012188;
    v133[4] = v4;
    *&v133[5] = v123;
    *&v133[6] = v124;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v133];
  }

  if ([v11 count])
  {
    v128 = [MEMORY[0x1E6979308] animation];
    [v128 setBeginTimeMode:*MEMORY[0x1E69795C0]];
    [v128 setAnimations:v11];
    [v128 setDuration:v153[3]];
    v129 = [v5 pkui_addAdditiveAnimation:v128];
  }

  _Block_object_dispose(&v152, 8);
}

void __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_6(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  if (a2 && a4 != a5)
  {
    v10 = [a2 springAnimationWithKeyPath:?];
    [v10 pkui_updateForAdditiveAnimationFromScalar:a4 toScalar:a5];
    if (a3 != 0.0)
    {
      [v10 setBeginTime:a3];
    }

    [v10 duration];
    *(*(*(a1 + 40) + 8) + 24) = fmax(v9 + a3, *(*(*(a1 + 40) + 8) + 24));
    [*(a1 + 32) addObject:v10];
  }
}

void __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_7(uint64_t a1, void *a2, void *a3, _OWORD *a4, _OWORD *a5, double a6)
{
  v11 = a2;
  v12 = a3;
  if (v11)
  {
    v13 = a4[5];
    *&a.m31 = a4[4];
    *&a.m33 = v13;
    v14 = a4[7];
    *&a.m41 = a4[6];
    *&a.m43 = v14;
    v15 = a4[1];
    *&a.m11 = *a4;
    *&a.m13 = v15;
    v16 = a4[3];
    *&a.m21 = a4[2];
    *&a.m23 = v16;
    v17 = a5[5];
    *&v31.m31 = a5[4];
    *&v31.m33 = v17;
    v18 = a5[7];
    *&v31.m41 = a5[6];
    *&v31.m43 = v18;
    v19 = a5[1];
    *&v31.m11 = *a5;
    *&v31.m13 = v19;
    v20 = a5[3];
    *&v31.m21 = a5[2];
    *&v31.m23 = v20;
    if (!CATransform3DEqualToTransform(&a, &v31))
    {
      v21 = [v11 springAnimationWithKeyPath:v12];
      v22 = a4[5];
      *&a.m31 = a4[4];
      *&a.m33 = v22;
      v23 = a4[7];
      *&a.m41 = a4[6];
      *&a.m43 = v23;
      v24 = a4[1];
      *&a.m11 = *a4;
      *&a.m13 = v24;
      v25 = a4[3];
      *&a.m21 = a4[2];
      *&a.m23 = v25;
      v26 = a5[5];
      *&v31.m31 = a5[4];
      *&v31.m33 = v26;
      v27 = a5[7];
      *&v31.m41 = a5[6];
      *&v31.m43 = v27;
      v28 = a5[1];
      *&v31.m11 = *a5;
      *&v31.m13 = v28;
      v29 = a5[3];
      *&v31.m21 = a5[2];
      *&v31.m23 = v29;
      [v21 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&v31];
      if (a6 != 0.0)
      {
        [v21 setBeginTime:a6];
      }

      [v21 duration];
      *(*(*(a1 + 40) + 8) + 24) = fmax(v30 + a6, *(*(*(a1 + 40) + 8) + 24));
      [*(a1 + 32) addObject:v21];
    }
  }
}

double __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_8(uint64_t a1, __n128 a2, double a3)
{
  v4 = *(a1 + 80);
  if (v4 == 2)
  {
    v5 = a3;
    v6 = a2.n128_f64[0];
    a2.n128_u64[0] = 0;
    v8 = 0.0;
    if (*(a1 + 85) == 1)
    {
      LOBYTE(a3) = *(a1 + 87);
      v8 = *&a3;
    }

    if (v8 <= 0.0)
    {
      v10 = 8.33333333;
    }

    else
    {
      v10 = 0.0;
    }

    v13 = *(a1 + 32);
    v7 = 1.0;
    if (*(v13 + 1040) != v10)
    {
      *(v13 + 1040) = v10;
      if (*(a1 + 40))
      {
        v14 = *(a1 + 32);
        if (*(v14 + 1008) == 1 && *(v14 + 1072) == 9)
        {
          a2.n128_f64[0] = 0.125;
        }

        goto LABEL_31;
      }

LABEL_32:
      v15 = *(a1 + 48);
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      [v15 setValue:v16 forKeyPath:@"filters.blur.inputRadius"];
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    if (v4 != 1)
    {
      v7 = 0.0;
      if (v4)
      {
        v8 = 0.0;
      }

      else
      {
        v7 = 1.0;
        if (*(a1 + 84) == 1)
        {
          a2.n128_u8[0] = *(a1 + 85);
          v8 = a2.n128_u64[0];
        }

        else
        {
          v8 = 1.0;
        }
      }

      goto LABEL_35;
    }

    v9 = *(a1 + 86);
    if (*(a1 + 85))
    {
      v8 = v9;
    }

    else
    {
      v8 = 0.0;
    }

    if (v9)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 1.5;
    }

    if (v8 <= 0.0)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *(a1 + 32);
    if (*(v11 + 1056) != v10)
    {
      *(v11 + 1056) = v10;
      if (*(a1 + 40))
      {
        v12 = *(a1 + 32);
        a2.n128_u64[0] = 0;
        if (*(v12 + 1008) == 1)
        {
          a2.n128_u64[0] = 0x3FD23D70A3D70A3DLL;
          if (*(v12 + 1072) != 3)
          {
            a2.n128_f64[0] = 0.0;
          }
        }

LABEL_31:
        (*(*(a1 + 64) + 16))(a2);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

LABEL_35:
  [*(a1 + 56) sizeThatFits:{v6, v5}];
  v19 = v17;
  if (v7 == 1.0)
  {
    v44 = v17;
    v20 = v18;
  }

  else
  {
    v20 = v18;
    PKSizeRoundToPixel(v7 * v17, v7 * v18);
    v44 = v21;
  }

  v22 = [*(a1 + 56) isHidden];
  [*(a1 + 48) opacity];
  v24 = v23;
  v45 = v8;
  v25 = v8 != v23;
  memset(&v68, 0, sizeof(v68));
  CATransform3DMakeScale(&v68, v7, v7, 1.0);
  memset(&v67, 0, sizeof(v67));
  v26 = *(a1 + 48);
  if (v26)
  {
    objc_msgSend_transform(v26);
  }

  a = v67;
  b = v68;
  v27 = CATransform3DEqualToTransform(&a, &b);
  v29 = *MEMORY[0x1E695EFF8];
  v28 = *(MEMORY[0x1E695EFF8] + 8);
  [*(a1 + 48) bounds];
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  v70.origin.x = v29;
  v70.origin.y = v28;
  v70.size.width = v19;
  v70.size.height = v20;
  v33 = CGRectEqualToRect(v69, v70);
  v35 = v33;
  if (v45 == v24)
  {
    v39 = !v27 || !v33;
    v37 = (*(a1 + 80) != 0) & (v22 ^ 1);
    if (v27)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v36 = *(a1 + 80);
  v37 = (v36 != 0) & (v22 ^ 1);
  if (*(a1 + 40))
  {
    v34.n128_u64[0] = 0;
    if (v36 == 2)
    {
      v38 = *(a1 + 32);
      if (*(v38 + 1008) == 1 && *(v38 + 1072) == 9)
      {
        v34.n128_f64[0] = 0.125;
      }
    }

    (*(*(a1 + 64) + 16))(v34, v24, v45);
  }

  v39 = 1;
  if (!v27)
  {
LABEL_50:
    if (*(a1 + 40))
    {
      v40 = *(*(a1 + 72) + 16);
      a = v67;
      b = v68;
      v40(0.0);
    }
  }

LABEL_52:
  if (((v35 | v37 ^ 1) & 1) == 0 && *(a1 + 40))
  {
    (*(*(a1 + 64) + 16))(0.0, x, v29);
    (*(*(a1 + 64) + 16))(0.0, y, v28);
    (*(*(a1 + 64) + 16))(0.0, width, v19);
    (*(*(a1 + 64) + 16))(0.0, height, v20);
  }

  if (v39)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    *&v47[5] = v45;
    v53 = *&v68.m33;
    v54 = *&v68.m41;
    v55 = *&v68.m43;
    v48 = *&v68.m11;
    v49 = *&v68.m13;
    v50 = *&v68.m21;
    v47[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_9;
    v47[3] = &unk_1E8025C18;
    v60 = v22;
    v47[4] = *(a1 + 56);
    v61 = v25;
    v62 = !v27;
    v51 = *&v68.m23;
    v52 = *&v68.m31;
    v63 = !v35;
    v56 = v29;
    v57 = v28;
    v58 = v19;
    v59 = v20;
    v64 = v37;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v47];
    if (((v35 | v37 ^ 1) & 1) == 0)
    {
      v41 = *(a1 + 40);
      if (v41)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_10;
        v46[3] = &unk_1E8010970;
        v46[4] = *(a1 + 56);
        [MEMORY[0x1E69DD250] pkui_animateUsingFactory:v41 withDelay:6 options:v46 animations:0 completion:0.0];
      }
    }
  }

  return v44;
}

id *__66__PKExpressTransactionBannerViewController_viewWillLayoutSubviews__block_invoke_9(id *result)
{
  v1 = result;
  if (*(result + 5) > 0.0 && *(result + 208) == 1)
  {
    result = [result[4] setHidden:0];
  }

  if (*(v1 + 209) == 1)
  {
    result = [v1[4] setAlpha:*(v1 + 5)];
  }

  if (*(v1 + 210) == 1)
  {
    v2 = v1[4];
    v3 = *(v1 + 8);
    v7[4] = *(v1 + 7);
    v7[5] = v3;
    v4 = *(v1 + 10);
    v7[6] = *(v1 + 9);
    v7[7] = v4;
    v5 = *(v1 + 4);
    v7[0] = *(v1 + 3);
    v7[1] = v5;
    v6 = *(v1 + 6);
    v7[2] = *(v1 + 5);
    v7[3] = v6;
    result = [v2 setTransform3D:v7];
  }

  if (*(v1 + 211) == 1)
  {
    result = [v1[4] setBounds:{*(v1 + 22), *(v1 + 23), *(v1 + 24), *(v1 + 25)}];
    if ((*(v1 + 212) & 1) == 0)
    {
      return [v1[4] layoutIfNeeded];
    }
  }

  return result;
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24))
  {
    if ((v3[272] & 1) == 0 && v3[268] == 1)
    {
      val = v3;
      v5 = [v3 viewIfLoaded];
      v6 = v5;
      if (v5)
      {
        [v5 bounds];
        [val setPreferredContentSize:{v7, v8}];
      }

      val[268] = 2;
      [(PKExpressTransactionBannerViewController *)val _updatePreferredContentSize];

      v3 = val;
    }
  }

  else
  {
    *(v4 + 24) = 1;
  }
}

- (void)_updatePreferredContentSize
{
  if (val)
  {
    if ((*(val + 268) - 2) >= 8)
    {
      __break(1u);
    }

    else if ((val[1176] & 1) == 0)
    {
      val[1176] = 1;
      objc_initWeak(&location, val);
      systemApertureElementContext = [val systemApertureElementContext];
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke;
      v3[3] = &unk_1E8010998;
      objc_copyWeak(&v4, &location);
      [systemApertureElementContext setElementNeedsUpdateWithCoordinatedAnimations:v3];

      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_3;
  v13[3] = &unk_1E8010970;
  v14 = *(a1 + 32);
  [v4 performWithoutAnimation:v13];
  *(*(a1 + 40) + 1072) = 1;
  *(*(a1 + 40) + 1008) = 1;
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  *(*(a1 + 40) + 1008) = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 1152))
  {
    if (![*(v6 + 1152) status])
    {
      goto LABEL_5;
    }

    v6 = *(a1 + 40);
  }

  [(PKExpressTransactionBannerViewController *)v6 _displayResolution];
LABEL_5:
  v7 = *(a1 + 40);
  if (*(v7 + 1136) == 1)
  {
    if (*(v7 + 1137))
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 1024);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_4;
  v10[3] = &unk_1E80110B8;
  objc_copyWeak(&v12, (a1 + 56));
  v11 = *(a1 + 48);
  [(PKExpressBannerLeadingView *)v9 _setState:v8 withCompletion:v10];

  objc_destroyWeak(&v12);
}

- (void)_displayResolution
{
  v45 = *MEMORY[0x1E69E9840];
  if (!self || (*(self + 1088) & 1) != 0 || !*(self + 1072))
  {
    return;
  }

  v3 = *(self + 1152);
  if (v3)
  {
    status = [v3 status];
    if (*(self + 1136))
    {
      if (status == 1 && (*(self + 1137) & 1) == 0)
      {
        *(self + 1137) = 1;
        if ((*(self + 1136) & 1) == 0)
        {
          *(self + 1136) = 1;
          goto LABEL_22;
        }

LABEL_16:
        v5 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy4 = self;
          v6 = "PKExpressTransactionBVC (%p): displaying override success resolution.";
LABEL_24:
          _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
        }

LABEL_25:
        v8 = 1;
        v9 = 2;
        v10 = 1;
LABEL_31:

        v12 = *(self + 1024);
        if (v12)
        {
          v13 = *(v12 + 456);
          if ((v13 | 4) != 4 && v13 != v9)
          {
            if (*(v12 + 472))
            {
              *(v12 + 456) = v9;
              [(PKExpressBannerLeadingView *)v12 _updateLayerState];
            }

            else
            {
              [(PKExpressBannerLeadingView *)v12 _setState:v9 withCompletion:0];
            }
          }
        }

        objc_initWeak(&location, self);
        *(self + 1138) = 1;
        [(PKExpressTransactionBannerViewController *)self _cancelRevokeTimer];
        v15 = objc_alloc(MEMORY[0x1E69B8798]);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke;
        v36[3] = &unk_1E8010998;
        objc_copyWeak(&v37, &location);
        v16 = [v15 initWithBlock:v36];
        v17 = *(self + 1048);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v31 = __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke_2;
        v32 = &unk_1E8025D08;
        v18 = v16;
        v33 = v18;
        objc_copyWeak(&v34, &location);
        v35 = v8;
        if (!v17)
        {
          goto LABEL_54;
        }

        v19 = *(v17 + 416);
        v20 = v30;
        v21 = v20;
        if (v19)
        {
          if (*(v19 + 408) == v10)
          {
            v22 = *(v19 + 416);
            if (!v22)
            {
              (v31)(v20, 0);
              goto LABEL_53;
            }

            v23 = _Block_copy(v20);
            [v22 addObject:v23];
          }

          else
          {
            *(v19 + 408) = v10;
            v24 = *(v19 + 416);
            v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
            v26 = _Block_copy(v21);
            [v25 addObject:v26];

            objc_storeStrong((v19 + 416), v25);
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v23 = v24;
            v27 = [v23 countByEnumeratingWithState:&v39 objects:buf count:16];
            if (v27)
            {
              v28 = *v40;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v40 != v28)
                  {
                    objc_enumerationMutation(v23);
                  }

                  (*(*(*(&v39 + 1) + 8 * i) + 16))();
                }

                v27 = [v23 countByEnumeratingWithState:&v39 objects:buf count:16];
              }

              while (v27);
            }

            if (v25 == *(v19 + 416))
            {
              [(PKExpressGlyphView *)v19 _updateGlyphViewAnimated:?];
            }
          }
        }

LABEL_53:

LABEL_54:
        objc_destroyWeak(&v34);

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
        return;
      }

      goto LABEL_11;
    }

    *(self + 1137) = status == 1;
    if (*(self + 1136))
    {
      if (status == 1)
      {
        goto LABEL_16;
      }

LABEL_19:
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy4 = self;
        v7 = "PKExpressTransactionBVC (%p): displaying override failure resolution.";
LABEL_29:
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    *(self + 1136) = 1;
    if (status == 1)
    {
LABEL_22:
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy4 = self;
        v6 = "PKExpressTransactionBVC (%p): displaying success resolution.";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

LABEL_27:
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      v7 = "PKExpressTransactionBVC (%p): displaying failure resolution.";
      goto LABEL_29;
    }

LABEL_30:
    v8 = 0;
    v10 = 2;
    v9 = 3;
    goto LABEL_31;
  }

  if ((*(self + 1136) & 1) == 0)
  {
    *(self + 1137) = 0;
    if (*(self + 1136))
    {
      goto LABEL_19;
    }

    *(self + 1136) = 1;
    goto LABEL_27;
  }

LABEL_11:

  [(PKExpressTransactionBannerViewController *)self _startRevokeTimer];
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_6;
  v2[3] = &unk_1E80111D0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): appeared.", &v4, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1128) = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 1072) = 6;
  *(*(a1 + 32) + 1008) = 1;
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  *(*(a1 + 32) + 1008) = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 1088) & 1) == 0 && *(v1 + 1072) == 6)
  {
    v2 = *(v1 + 1064);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(v1 + 1064);
      *(v1 + 1064) = 0;
    }

    v4 = *(v1 + 1120);
    v5 = 0.0;
    if (v4 > 0.0)
    {
      v6 = *(v1 + 1128);
      v7 = v4 >= v6 || v6 <= 0.0;
      v8 = v6 - v4;
      if (v7)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v8;
      }
    }

    v9 = 0.45 - v5;
    if (0.45 - v5 <= 0.0)
    {

      __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke(v2, v1);
    }

    else
    {
      v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v11 = *(v1 + 1064);
      *(v1 + 1064) = v10;

      v12 = *(v1 + 1064);
      v13 = dispatch_time(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      objc_initWeak(&location, v1);
      v14 = *(v1 + 1064);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke_2;
      handler[3] = &unk_1E80111D0;
      objc_copyWeak(&v17, &location);
      v16 = &__block_literal_global_281;
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(*(v1 + 1064));

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_4;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): shrunk.", &v3, 0xCu);
    }
  }
}

- (void)_cancelRevokeTimer
{
  v2 = *(self + 1144);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(self + 1144);
    *(self + 1144) = 0;
  }
}

void *__77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1072) = 9;
  *(*(a1 + 32) + 1008) = 1;
  [*(a1 + 40) setNeedsLayout];
  result = [*(a1 + 40) layoutIfNeeded];
  *(*(a1 + 32) + 1008) = 0;
  return result;
}

void __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_3;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): expanded.", &v3, 0xCu);
    }

    WeakRetained[1092] = 0;
    [(PKExpressTransactionBannerViewController *)WeakRetained _startRevokeTimer];
  }
}

- (void)_startRevokeTimer
{
  v16 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 1088) & 1) == 0)
  {
    [(PKExpressTransactionBannerViewController *)self _cancelRevokeTimer];
    if (*(self + 1138) == 1)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - glyph state animating.";
LABEL_15:
        _os_log_debug_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEBUG, v3, buf, 0xCu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if ((*(self + 1090) & 1) == 0)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - leading view shrinking.";
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if ((*(self + 1091) & 1) == 0)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - waiting for shrink.";
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if (*(self + 1092) == 1)
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy5 = self;
        v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - expanding.";
        goto LABEL_15;
      }

LABEL_19:

      return;
    }

    v4 = *(self + 1152);
    if (v4 && [v4 isProcessing])
    {
      v2 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      selfCopy5 = self;
      v3 = "PKExpressTransactionBVC (%p): preventing revoke timer - express transaction ongoing.";
      goto LABEL_15;
    }

    v5 = *(self + 1160);
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v7 = *(self + 1144);
    *(self + 1144) = v6;

    v8 = *(self + 1144);
    if (v5)
    {
      v9 = 1000000000;
    }

    else
    {
      v9 = 500000000;
    }

    v10 = dispatch_time(0, v9);
    dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(buf, self);
    v11 = *(self + 1144);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__PKExpressTransactionBannerViewController__startRevokeTimer__block_invoke;
    handler[3] = &unk_1E8010998;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(*(self + 1144));
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke(uint64_t a1)
{
  v77[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained || (WeakRetained[272] & 1) != 0)
  {
LABEL_46:

    return;
  }

  v4 = 0;
  v5 = WeakRetained[268];
  if (v5 <= 5)
  {
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v6 = 5;
        v7 = 6;
        goto LABEL_20;
      }

      v4 = 0;
      v5 = 6;
      goto LABEL_21;
    }

    if (v5 == 2)
    {
      v7 = 3;
      v6 = 3;
      goto LABEL_20;
    }

    if (v5 == 3)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (v5 > 7)
  {
    if (v5 == 8)
    {
      v4 = 0;
      v5 = 9;
    }

    else if (v5 != 9)
    {
      goto LABEL_48;
    }

LABEL_21:
    v8 = [WeakRetained view];
    v9.n128_u64[0] = 0x4032AAAAAAAAAAABLL;
    PKFloatRoundToPixel(v9, v10);
    v12 = v11;
    v13 = [v8 SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v13 layoutFrame];
    v15 = v14;
    v17 = v16;

    v18.n128_u64[0] = 1.5;
    PKFloatRoundToPixel(v18, v19);
    v22 = *(v3 + 128);
    v66 = v15;
    v67 = v17;
    v65 = v20.n128_f64[0];
    if (v22)
    {
      [(PKExpressBannerLeadingView *)&buf _metricsForSizeClass:v22, 2u];
      v24 = *&v75;
      v23 = v76;
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
    }

    v20.n128_f64[0] = v12 + v24 * -0.5;
    PKFloatRoundToPixel(v20, v21);
    v26 = v25;
    v27.n128_f64[0] = v12 + v23 * -0.5;
    PKFloatRoundToPixel(v27, v28);
    v29 = fmax(v26, 10.0);
    [*(v3 + 131) sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v31 = v30;
    v33 = v32.n128_f64[0];
    v34.n128_f64[0] = v12 + v30 * -0.5;
    PKFloatRoundToPixel(v34, v32);
    v36 = v35;
    v37.n128_f64[0] = v12 + v33 * -0.5;
    PKFloatRoundToPixel(v37, v38);
    v39 = v31 + fmax(v36, 10.0);
    if (v5 == 9)
    {
      v40 = *(v3 + 129);
      v41 = v65;
      if (v40 && v40[55])
      {
        v42 = v39 + 5.0;
        [v40 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v39 = v42 + v43;
      }

      v44 = v66;
    }

    else
    {
      v41 = v65;
      v44 = v15;
    }

    v45 = fmax(v41 + v24 + v29, v39);
    v46 = v44 + v45 * 2.0;
    if (v3[268] == 3)
    {
      v47 = [v3 viewIfLoaded];
      v48 = v47;
      if (v47 && ([v47 window], v49 = objc_claimAutoreleasedReturnValue(), (v50 = v49) != 0))
      {
        [v49 bounds];
        v52 = v51;
      }

      else
      {
        v52 = 1.79769313e308;
      }

      *(v3 + 138) = fmin(v46, v52);
      *(v3 + 139) = v67;
      if (v4)
      {
        v53 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v3;
          _os_log_impl(&dword_1BD026000, v53, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): psuedo shrinking...", &buf, 0xCu);
        }

        *(v3 + 1008) = v4;
        [v8 setNeedsLayout];
        [v8 layoutIfNeeded];
        *(v3 + 1008) = 0;
        v54 = objc_alloc(MEMORY[0x1E69B8798]);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_279;
        v71[3] = &unk_1E8010998;
        objc_copyWeak(&v72, (a1 + 32));
        v55 = [v54 initWithBlock:v71];
        v56 = *(v3 + 128);
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_2;
        v68[3] = &unk_1E80113B0;
        objc_copyWeak(&v70, (a1 + 32));
        v57 = v55;
        v69 = v57;
        [(PKExpressBannerLeadingView *)v56 _setState:v68 withCompletion:?];
        if ((v3[272] & 1) == 0 && v3[268] == 3)
        {
          v58 = *(v3 + 133);
          if (v58)
          {
            dispatch_source_cancel(v58);
            v59 = *(v3 + 133);
            *(v3 + 133) = 0;
          }

          v60 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          v61 = *(v3 + 133);
          *(v3 + 133) = v60;

          v62 = *(v3 + 133);
          v63 = dispatch_time(0, 110000000);
          dispatch_source_set_timer(v62, v63, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
          objc_initWeak(&location, v3);
          v64 = *(v3 + 133);
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          *&v75 = COERCE_DOUBLE(__61__PKExpressTransactionBannerViewController__startShrinkTimer__block_invoke);
          v76 = COERCE_DOUBLE(&unk_1E8010998);
          objc_copyWeak(v77, &location);
          dispatch_source_set_event_handler(v64, &buf);
          dispatch_resume(*(v3 + 133));
          objc_destroyWeak(v77);
          objc_destroyWeak(&location);
        }

        objc_destroyWeak(&v70);
        objc_destroyWeak(&v72);
      }

      else
      {
        *(v3 + 1008) = 0;
        [v8 setNeedsLayout];
        [v8 layoutIfNeeded];
        *(v3 + 1008) = 0;
      }
    }

    else
    {
      [v3 setPreferredContentSize:{v44 + v45 * 2.0, v67}];
    }

    *(v3 + 1176) = 0;

    goto LABEL_46;
  }

  if (v5 == 6)
  {
    goto LABEL_21;
  }

  if (v5 == 7)
  {
    v6 = 8;
    v7 = 9;
LABEL_20:
    v4 = v5 != v6;
    WeakRetained[268] = v6;
    v5 = v7;
    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

id __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_279(uint64_t a1)
{
  result = objc_loadWeakRetained((a1 + 32));
  if (result)
  {
    __break(1u);
  }

  return result;
}

void __71__PKExpressTransactionBannerViewController__updatePreferredContentSize__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([*(a1 + 32) invalidate])
    {
      __break(1u);
      return;
    }

    v3[1090] = 1;
    [(PKExpressTransactionBannerViewController *)v3 _startRevokeTimer];
    WeakRetained = v3;
  }
}

id __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke(uint64_t a1)
{
  result = objc_loadWeakRetained((a1 + 32));
  if (result)
  {
    __break(1u);
  }

  return result;
}

void __62__PKExpressTransactionBannerViewController__displayResolution__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) invalidate])
  {
    __break(1u);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained && WeakRetained[1137] == *(a1 + 48))
    {
      WeakRetained[1138] = 0;
      v3 = WeakRetained;
      [(PKExpressTransactionBannerViewController *)WeakRetained _startRevokeTimer];
      WeakRetained = v3;
    }
  }
}

void __61__PKExpressTransactionBannerViewController__startShrinkTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    val = WeakRetained;
    v2 = *(WeakRetained + 133);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(val + 133);
      val[133] = 0.0;
    }

    val[140] = CFAbsoluteTimeGetCurrent();
    *(val + 268) = 4;
    [(PKExpressTransactionBannerViewController *)val _updatePreferredContentSize];
    WeakRetained = val;
  }
}

void __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 1091) = 1;
  *(a2 + 1072) = 7;
  val = a2;
  [(PKExpressTransactionBannerViewController *)val _startRevokeTimer];
  [(PKExpressTransactionBannerViewController *)val _updatePreferredContentSize];
}

void __61__PKExpressTransactionBannerViewController__startExpandTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[133];
    v6 = v3;
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v6[133];
      v6[133] = 0;
    }

    (*(*(a1 + 32) + 16))();
    v3 = v6;
  }
}

void __61__PKExpressTransactionBannerViewController__startRevokeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[136] & 1) == 0)
  {
    v3 = WeakRetained;
    [(PKExpressTransactionBannerViewController *)WeakRetained _revoked];
    v2 = objc_loadWeakRetained(v3 + 148);
    [v2 revoke];

    WeakRetained = v3;
  }
}

- (void)_revoked
{
  if (self && (*(self + 1088) & 1) == 0)
  {
    *(self + 1088) = 1;
    v2 = *(self + 1144);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 1144);
      *(self + 1144) = 0;
    }

    v4 = *(self + 1096);
    if (v4)
    {
      v5 = v4;
      v6 = *(self + 1096);
      *(self + 1096) = 0;

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      if (mEMORY[0x1E69DC668])
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = *MEMORY[0x1E69DDBE8];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __52__PKExpressTransactionBannerViewController__revoked__block_invoke;
        aBlock[3] = &unk_1E8021F48;
        v13 = v5;
        v15 = &v16;
        v8 = mEMORY[0x1E69DC668];
        v14 = v8;
        v9 = _Block_copy(aBlock);
        v10 = [v8 beginBackgroundTaskWithName:@"Wallet Banner - CL In Use Grace Period" expirationHandler:v9];
        v17[3] = v10;
        v11 = dispatch_time(0, (*MEMORY[0x1E69BBAD8] * 1000000000.0));
        dispatch_after(v11, MEMORY[0x1E69E96A0], v9);

        _Block_object_dispose(&v16, 8);
      }

      else
      {
        [v5 invalidate];
      }
    }
  }
}

void *__52__PKExpressTransactionBannerViewController__revoked__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24) != *MEMORY[0x1E69DDBE8])
  {
    *(v3 + 24) = *MEMORY[0x1E69DDBE8];
    v4 = *(a1 + 40);

    return [v4 endBackgroundTask:?];
  }

  return result;
}

- (void)setPresentable:(id)presentable
{
  presentableCopy = presentable;
  objc_storeWeak(&self->_presentable, presentableCopy);
  v4 = presentableCopy;
  if (presentableCopy && self->_revoked)
  {
    [presentableCopy revoke];
    v4 = presentableCopy;
  }
}

- (void)setBannerDetached:(BOOL)detached
{
  if (self->_bannerDetached != detached)
  {
    self->_bannerDetached = detached;
    if (detached)
    {
      if ([(PKExpressTransactionState *)self->_expressState isProcessing])
      {
        [(PKExpressTransactionState *)self->_expressState resolve];

        [(PKExpressTransactionBannerViewController *)self _displayResolution];
      }
    }
  }
}

- (void)setState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v12 = stateCopy;
    if ([(PKExpressTransactionBannerHandleState *)stateCopy type])
    {
      goto LABEL_13;
    }

    stateCopy = v12;
    if (self->_bannerState != v12)
    {
      transactionState = [(PKExpressTransactionBannerHandleState *)v12 transactionState];
      bannerState = self->_bannerState;
      if (!bannerState || (-[PKExpressTransactionBannerHandleState transactionState](bannerState, "transactionState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [transactionState isRelatedToState:v8], v8, (v9 & 1) != 0))
      {
        objc_storeStrong(&self->_bannerState, state);
        objc_storeStrong(&self->_expressState, transactionState);
        expressState = self->_expressState;
        if (!expressState || [(PKExpressTransactionState *)expressState status])
        {
          [(PKExpressTransactionBannerViewController *)self _displayResolution];
        }

        stateCopy = v12;
        goto LABEL_10;
      }

LABEL_13:
      __break(1u);
      return;
    }
  }

LABEL_10:
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  if (!self->_revoked)
  {
    v5 = MEMORY[0x1E695FBE0];
    v8 = PKPassKitCoreBundle();
    v6 = [v5 newAssertionForBundle:v8 withReason:@"Wallet Express Banner is Active"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v6;
  }
}

- (int64_t)preferredCustomLayout
{
  if (self->_state >= 4u)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  if (self->_activeLayoutMode != mode)
  {
    viewIfLoaded = [(PKExpressTransactionBannerViewController *)self viewIfLoaded];
    v10 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      self->_activeLayoutMode = mode;
      systemApertureElementContext = [(PKExpressTransactionBannerViewController *)self systemApertureElementContext];
      requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
      [requestAlertingAssertion setAutomaticallyInvalidatable:0];

      [v10 setNeedsLayout];
    }

    else
    {
      self->_activeLayoutMode = mode;
      systemApertureElementContext2 = [(PKExpressTransactionBannerViewController *)self systemApertureElementContext];
      requestAlertingAssertion2 = [systemApertureElementContext2 requestAlertingAssertion];
      [requestAlertingAssertion2 setAutomaticallyInvalidatable:0];
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  v40[2] = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if (self->_revoked)
  {
    goto LABEL_2;
  }

  state = self->_state;
  if (state == 8)
  {
    v19 = coordinatorCopy;
    if (self->_state != 8)
    {
      goto LABEL_27;
    }

    v20 = v19;
    if (!v19)
    {
      goto LABEL_27;
    }

    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): expanding...", buf, 0xCu);
    }

    self->_expanding = 1;
    [(PKExpressTransactionBannerViewController *)self _cancelRevokeTimer];
    objc_initWeak(aBlock, self);
    view = [(PKExpressTransactionBannerViewController *)self view];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke;
    v36 = &unk_1E8020758;
    selfCopy3 = self;
    v23 = view;
    selfCopy2 = v23;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __77__PKExpressTransactionBannerViewController__expandWithTransitionCoordinator___block_invoke_2;
    v28 = &unk_1E8025CE0;
    objc_copyWeak(&v29, aBlock);
    [v20 animateAlongsideTransition:buf completion:&v25];
    objc_destroyWeak(&v29);

    objc_destroyWeak(aBlock);
  }

  else
  {
    if (state != 5)
    {
      if (state)
      {
        goto LABEL_2;
      }

      v5 = coordinatorCopy;
      if (!self->_state)
      {
        v6 = v5;
        if (v5)
        {
          activeLayoutMode = self->_activeLayoutMode;
          v8 = PKLogFacilityTypeGetObject();
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (activeLayoutMode == 4)
          {
            if (v9)
            {
              *buf = 134217984;
              *&buf[4] = self;
              _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): appearing...", buf, 0xCu);
            }

            view2 = [(PKExpressTransactionBannerViewController *)self view];
            objc_initWeak(&location, self);
            v32[0] = 0;
            v32[1] = v32;
            v32[2] = 0x2020000000;
            v33 = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke;
            aBlock[3] = &unk_1E8025C90;
            aBlock[4] = v32;
            v11 = _Block_copy(aBlock);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_2;
            v36 = &unk_1E8025CB8;
            v8 = view2;
            selfCopy3 = v8;
            selfCopy2 = self;
            objc_copyWeak(v40, &location);
            v12 = v11;
            v39 = v12;
            v25 = MEMORY[0x1E69E9820];
            v26 = 3221225472;
            v27 = __77__PKExpressTransactionBannerViewController__appearWithTransitionCoordinator___block_invoke_5;
            v28 = &unk_1E8023600;
            objc_copyWeak(&v30, &location);
            v13 = v12;
            v29 = v13;
            [v6 animateAlongsideTransition:buf completion:&v25];

            objc_destroyWeak(&v30);
            objc_destroyWeak(v40);

            _Block_object_dispose(v32, 8);
            objc_destroyWeak(&location);
          }

          else if (v9)
          {
            *buf = 134218240;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = activeLayoutMode;
            _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): deferring apperance while in mode %ld.", buf, 0x16u);
          }

          goto LABEL_2;
        }
      }

LABEL_27:
      __break(1u);
    }

    v14 = coordinatorCopy;
    if (self->_state != 5)
    {
      goto LABEL_27;
    }

    v15 = v14;
    if (!v14)
    {
      goto LABEL_27;
    }

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "PKExpressTransactionBVC (%p): shrinking...", buf, 0xCu);
    }

    view3 = [(PKExpressTransactionBannerViewController *)self view];
    objc_initWeak(aBlock, self);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke;
    v36 = &unk_1E8020758;
    selfCopy3 = self;
    v18 = view3;
    selfCopy2 = v18;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __77__PKExpressTransactionBannerViewController__shrinkWithTransitionCoordinator___block_invoke_3;
    v28 = &unk_1E8025CE0;
    objc_copyWeak(&v29, aBlock);
    [v15 animateAlongsideTransition:buf completion:&v25];
    objc_destroyWeak(&v29);

    objc_destroyWeak(aBlock);
  }

LABEL_2:
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  if (self->_transitBalanceModel)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    block[3] = &unk_1E8010A88;
    block[4] = self;
    v9 = identifierCopy;
    v10 = propertiesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __111__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 992) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    [*(a1[4] + 1000) setTransitProperties:a1[6]];
    v4 = a1[4];

    [(PKExpressTransactionBannerViewController *)v4 _updateBalanceContent];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  if (self->_transitBalanceModel)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
    block[3] = &unk_1E8010A88;
    block[4] = self;
    v9 = identifierCopy;
    v10 = updateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __100__PKExpressTransactionBannerViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 992) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    [*(a1[4] + 1000) setDynamicBalances:a1[6]];
    v4 = a1[4];

    [(PKExpressTransactionBannerViewController *)v4 _updateBalanceContent];
  }
}

- (void)expressTrailingView:(id)view revealingCheckmarkAnimated:(BOOL)animated
{
  if (self && !self->_revoked && !self->_successPlayed)
  {
    self->_successPlayed = 1;
    kdebug_trace();
    leadingView = self->_leadingView;
    if (leadingView)
    {
      passView = leadingView->_passView;
      if (passView)
      {
        if ((passView->_options & 2) == 0)
        {
          __break(1u);
          return;
        }

        [(PKPassView *)passView->_passView didTransact];
      }
    }

    pass = self->_pass;
    if (pass)
    {
      v8 = 1394;
      if ([(PKPass *)pass passType]== PKPassTypeSecureElement)
      {
        if ([(PKPass *)self->_pass isAccessPass])
        {
          v8 = 1163;
        }

        else
        {
          v8 = 1394;
        }
      }
    }

    else
    {
      v8 = 1394;
    }

    AudioServicesPlaySystemSound(v8);
  }
}

- (void)expressLabelViewDidChangeSize:(id)size
{
  sizeCopy = size;
  state = self->_state;
  v6 = state >= 8;
  v7 = state - 8;
  if (v6)
  {
    v8 = sizeCopy;
    if (v7 > 1)
    {
      __break(1u);
      return;
    }

    [(PKExpressTransactionBannerViewController *)self _updatePreferredContentSize];
    sizeCopy = v8;
  }
}

- (PKBannerViewControllerPresentable)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_presentable);

  return WeakRetained;
}

@end