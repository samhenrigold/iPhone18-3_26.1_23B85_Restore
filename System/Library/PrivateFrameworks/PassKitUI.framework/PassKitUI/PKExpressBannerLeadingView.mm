@interface PKExpressBannerLeadingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (uint64_t)_metricsForSizeClass:(unsigned int)class;
- (void)_finishTransition;
- (void)_setState:(void *)state withCompletion:;
- (void)_updateLayerState;
- (void)_updateSizeWithAnimationFactory:(uint64_t)factory;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PKExpressBannerLeadingView

- (void)_updateSizeWithAnimationFactory:(uint64_t)factory
{
  v3 = a2;
  v24 = 0.0;
  v22 = 0u;
  v23 = 0u;
  [(PKExpressBannerLeadingView *)&v22 _metricsForSizeClass:factory, *(factory + 460)];
  v4 = v22;
  v5 = *(factory + 512) == *&v22 && *(factory + 520) == *(&v22 + 1);
  if (!v5 || (*(factory + 528) == v23.n128_f64[0] ? (v6 = *(factory + 536) == v23.n128_f64[1]) : (v6 = 0), !v6))
  {
    memset(&v21, 0, sizeof(v21));
    v7 = v24;
    CATransform3DMakeScale(&v21, v24, v24, 1.0);
    memset(&v20, 0, sizeof(v20));
    v8 = *(factory + 432);
    if (v8)
    {
      objc_msgSend_transform(v8);
    }

    a = v21;
    v18 = v20;
    if (!CATransform3DEqualToTransform(&a, &v18))
    {
      if (v3)
      {
        v9 = [v3 springAnimationWithKeyPath:@"transform"];
        a = v20;
        v18 = v21;
        [v9 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&v18];
        v10 = [*(factory + 432) pkui_addAdditiveAnimation:v9];
      }

      v11 = *(factory + 432);
      a = v21;
      [v11 setTransform:&a];
    }

    v12.n128_u64[1] = *(&v22 + 1);
    v13 = v23;
    *(factory + 512) = v22;
    *(factory + 528) = v13;
    v12.n128_f64[0] = v7 * 35.0;
    PKFloatRoundToPixel(v12, v13);
    *(factory + 552) = v14;
    v15.n128_u64[0] = v23.n128_u64[0];
    *(factory + 568) = *&v4 - (v14 + v23.n128_f64[0]);
    v16.n128_f64[0] = v7 * 17.0;
    PKFloatRoundToPixel(v16, v15);
    *(factory + 544) = v17;
    *(factory + 560) = *(&v4 + 1) - (v17 + v23.n128_f64[1]);
    [factory setNeedsLayout];
  }
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  transitionTimer = self->_transitionTimer;
  if (transitionTimer)
  {
    dispatch_source_cancel(transitionTimer);
    v4 = self->_transitionTimer;
    self->_transitionTimer = 0;
  }

  completions = self->_completions;
  if (completions)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = completions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = PKExpressBannerLeadingView;
  [(PKExpressBannerLeadingView *)&v11 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_targetAlignmentSize.width;
  height = self->_targetAlignmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKExpressBannerLeadingView;
  [(PKExpressBannerLeadingView *)&v25 layoutSubviews];
  [(PKExpressBannerLeadingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8.n128_u64[0] = v7;
  v10 = v9;
  v11.n128_u64[0] = *&self->_targetAlignmentSize.width;
  v12.n128_u64[0] = *&self->_targetAlignmentSize.height;
  v13.n128_u64[0] = v4;
  v14.n128_u64[0] = v6;
  v15.n128_u64[0] = v8.n128_u64[0];
  v16.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v11, v12, v13, v14, v15, v16, v8);
  v18 = v17 - self->_targetAlignmentInsets.left;
  v20 = v19 - self->_targetAlignmentInsets.top;
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  [(CALayer *)self->_contentLayer anchorPoint];
  [(CALayer *)self->_contentLayer setPosition:v18 + v23 * width, v20 + v24 * height];
}

- (uint64_t)_metricsForSizeClass:(unsigned int)class
{
  v4 = result;
  v5 = MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (class < 3)
  {
    v6 = 1.79769313e308;
    v5 = (&unk_1BE117010 + 8 * class);
  }

  if (*v5 <= 0.0 || v6 <= 0.0)
  {
    v9 = *(a2 + 60);
    v11 = *(a2 + 61);
    v12 = *(a2 + 62);
    v13 = *(a2 + 63);
    v7 = 1.0;
  }

  else
  {
    v7 = fmin(*v5 / a2[62], v6 / a2[63]);
    PKSizeRoundToPixel(v7 * a2[60], v7 * a2[61]);
    v9 = v8;
    v11 = v10;
    result = PKSizeRoundToPixel(v7 * a2[62], v7 * a2[63]);
  }

  *v4 = v9;
  *(v4 + 8) = v11;
  *(v4 + 16) = v12;
  *(v4 + 24) = v13;
  *(v4 + 32) = v7;
  return result;
}

- (void)_updateLayerState
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(self + 456) - 1;
  if (v3 <= 3)
  {
    v4 = off_1E8025D48[v3];
    v5 = [*(self + 432) stateWithName:{v4, a2}];
    if (v5)
    {
      LODWORD(v6) = 1.0;
      v9 = v5;
      [*(self + 448) setState:v5 ofLayer:*(self + 432) transitionSpeed:v6];
      v7 = v9;
      goto LABEL_8;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKExpressBannerLeadingView: could not find state with name %@.", buf, 0xCu);
    }
  }

  LODWORD(a2) = 1.0;
  [*(self + 448) setInitialStatesOfLayer:*(self + 432) transitionSpeed:a2];
  v7 = 0;
LABEL_8:
}

- (void)_setState:(void *)state withCompletion:
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v6 = stateCopy;
  if (self)
  {
    if (*(self + 456) == a2)
    {
      if (stateCopy)
      {
        v7 = *(self + 472);
        if (v7)
        {
          v8 = _Block_copy(stateCopy);
          [v7 addObject:v8];
        }

        else
        {
          (*(stateCopy + 2))(stateCopy, 0);
        }
      }
    }

    else
    {
      *(self + 456) = a2;
      v9 = *(self + 464);
      if (v9)
      {
        dispatch_source_cancel(v9);
        v10 = *(self + 464);
        *(self + 464) = 0;
      }

      v11 = *(self + 472);
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      if (v6)
      {
        v13 = _Block_copy(v6);
        [v12 addObject:v13];
      }

      objc_storeStrong((self + 472), v12);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          v18 = 0;
          do
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v31 + 1) + 8 * v18++) + 16))();
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }

      v19 = *(self + 472);
      if (v12 == v19)
      {
        v21 = *(self + 456) - 1;
        if (v21 > 3)
        {
          [(PKExpressBannerLeadingView *)self _updateLayerState];
          [(PKExpressBannerLeadingView *)self _finishTransition];
        }

        else
        {
          v22 = qword_1BE117028[v21];
          [(PKExpressBannerLeadingView *)self _updateLayerState];
          v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          v24 = *(self + 464);
          *(self + 464) = v23;

          v25 = *(self + 464);
          v26 = dispatch_time(0, v22);
          dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
          objc_initWeak(&location, self);
          v27 = *(self + 464);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __55__PKExpressBannerLeadingView__setState_withCompletion___block_invoke;
          v28[3] = &unk_1E8010998;
          objc_copyWeak(&v29, &location);
          dispatch_source_set_event_handler(v27, v28);
          dispatch_activate(*(self + 464));
          objc_destroyWeak(&v29);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __55__PKExpressBannerLeadingView__setState_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKExpressBannerLeadingView *)WeakRetained _finishTransition];
    WeakRetained = v2;
  }
}

- (void)_finishTransition
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(self + 464);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(self + 464);
    *(self + 464) = 0;
  }

  v4 = *(self + 472);
  v5 = *(self + 472);
  *(self + 472) = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end