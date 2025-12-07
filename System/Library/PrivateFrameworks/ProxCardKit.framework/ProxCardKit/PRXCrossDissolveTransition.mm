@interface PRXCrossDissolveTransition
- (CGSize)maxSize;
- (void)animateTransition:(id)transition;
@end

@implementation PRXCrossDissolveTransition

- (void)animateTransition:(id)transition
{
  v73 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = PRXDefaultLog(containerView);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PRXCrossDissolveTransition animateTransition:v6];
  }

  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v8 = (objc_opt_respondsToSelector() & 1);
  v9 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  v51 = [transitionCopy viewForKey:*MEMORY[0x277D77238]];
  v10 = [v51 snapshotViewAfterScreenUpdates:0];
  [containerView addSubview:v10];
  [v9 setAlpha:0.0];
  [containerView addSubview:v9];
  v11 = MEMORY[0x277D75D18];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke;
  v68[3] = &unk_279ACC188;
  v12 = v9;
  v69 = v12;
  [v11 performWithoutAnimation:v68];
  cardStyle = [(PRXCrossDissolveTransition *)self cardStyle];
  traitCollection = [v7 traitCollection];
  v15 = PRXCardPreferredSize(cardStyle, [traitCollection prx_cardSizeClass]);
  v17 = v16;

  [v7 preferredContentSize];
  if (v17 >= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *MEMORY[0x277CBF3A0];
  v21 = *(MEMORY[0x277CBF3A0] + 8);
  [(PRXCrossDissolveTransition *)self maxSize];
  if (v22 >= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v22;
  }

  maxSize = [(PRXCrossDissolveTransition *)self maxSize];
  if (v25 < v19)
  {
    v19 = v25;
  }

  v26 = PRXDefaultLog(maxSize);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v74.origin.x = v20;
    v74.origin.y = v21;
    v74.size.width = v23;
    v74.size.height = v19;
    v47 = NSStringFromCGRect(v74);
    *buf = 138412290;
    v72 = v47;
    _os_log_debug_impl(&dword_260F65000, v26, OS_LOG_TYPE_DEBUG, "Animating to %@", buf, 0xCu);
  }

  [v12 setFrame:{v20, v21, v23, v19}];
  [v12 intrinsicContentSize];
  if (v27 == *MEMORY[0x277D77260])
  {
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x277CCAAD0];
    widthAnchor = [v12 widthAnchor];
    [widthAnchor constraintEqualToConstant:v15];
    v49 = v7;
    v50 = transitionCopy;
    selfCopy = self;
    v8 = v30 = v8;
    v70[0] = v8;
    [v12 heightAnchor];
    v32 = v31 = containerView;
    [v32 constraintGreaterThanOrEqualToConstant:v17];
    v34 = v33 = v10;
    v70[1] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    [v28 activateConstraints:v35];

    v10 = v33;
    containerView = v31;

    LODWORD(v8) = v30;
    self = selfCopy;
    v7 = v49;
    transitionCopy = v50;
  }

  v36 = MEMORY[0x277D75D18];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3;
  v66[3] = &unk_279ACC188;
  v37 = v12;
  v67 = v37;
  [v36 performWithoutAnimation:v66];
  [(PRXCrossDissolveTransition *)self transitionDuration:transitionCopy];
  v39 = v38;
  if (v8)
  {
    [v7 setTransitioningSize:1];
  }

  v40 = MEMORY[0x277D75D18];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke_2;
  v59[3] = &unk_279ACC1D8;
  v60 = v37;
  v41 = containerView;
  v61 = v41;
  v62 = v20;
  v63 = v21;
  v64 = v23;
  v65 = v19;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3;
  v52[3] = &unk_279ACC200;
  v42 = v10;
  v53 = v42;
  v43 = v51;
  v54 = v43;
  v44 = v60;
  v55 = v44;
  v58 = v8;
  v45 = v7;
  v56 = v45;
  v46 = transitionCopy;
  v57 = v46;
  [v40 transitionWithView:v41 duration:0 options:v59 animations:v52 completion:v39];
  if (self->_additionalAnimations)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v39 animations:?];
  }
}

uint64_t __48__PRXCrossDissolveTransition_animateTransition___block_invoke_3(uint64_t a1)
{
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __48__PRXCrossDissolveTransition_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end