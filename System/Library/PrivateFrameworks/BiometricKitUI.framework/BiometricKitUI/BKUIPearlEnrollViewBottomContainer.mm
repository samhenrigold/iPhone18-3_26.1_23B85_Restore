@interface BKUIPearlEnrollViewBottomContainer
- (BKUIPearlBottomContainerDelegate)delegate;
- (BKUIPearlEnrollViewBottomContainer)initWithFrame:(CGRect)frame inBuddy:(BOOL)buddy scrollView:(id)view overlapScrollView:(id)scrollView delegate:(id)delegate squareNeedsPositionLayout:(BOOL)layout;
- (BKUIPearlInstructionView)instructionView;
- (double)_topPaddingForButtonTray:(id)tray;
- (id)_detailTextForState:(int)state substate:(int)substate;
- (id)_horizontalConstraintsForTagAlongTransitionView:(id)view state:(int)state position:(int64_t)position;
- (id)_instructionTextForState:(int)state substate:(int)substate;
- (id)_locStateDetailedLabelNameForState:(int)state;
- (id)_locStateNameForState:(int)state;
- (id)_targetScrollViewForState:(int)state;
- (id)_updateTopPaddingAndReturnHorizontalConstraintsForScrollView:(id)view state:(int)state position:(int64_t)position;
- (id)bottomLinkButton;
- (id)buttonTray;
- (id)buttonTrayTopAnchor;
- (id)nextStateButton;
- (void)_configureInstructionView:(id)view forState:(int)state substate:(int)substate;
- (void)_updateButtonLayoutForScrollView:(id)view;
- (void)_updateButtonVisibilityForScrollView:(id)view;
- (void)_updateButtonVisibilityForScrollView:(id)view state:(int)state subState:(int)subState;
- (void)escapeHatchButtonWasPressed:(id)pressed;
- (void)finalizeInstructionAnimation;
- (void)layoutSubviews;
- (void)nextStateButtonWasPressed:(id)pressed;
- (void)prepareForAnimationToState:(int)state fromState:(int)fromState subState:(int)subState advancing:(BOOL)advancing tagAlong:(id)along parentView:(id)view;
- (void)retryWasPressed:(id)pressed;
- (void)setCustomDetailString:(id)string forState:(int)state;
- (void)setCustomInstructionString:(id)string forState:(int)state;
- (void)setupInitialUI;
- (void)updateButtonLayout;
- (void)updateButtonVisibility;
- (void)updateInstructionViewContentForState:(int)state substate:(int)substate;
@end

@implementation BKUIPearlEnrollViewBottomContainer

- (BKUIPearlEnrollViewBottomContainer)initWithFrame:(CGRect)frame inBuddy:(BOOL)buddy scrollView:(id)view overlapScrollView:(id)scrollView delegate:(id)delegate squareNeedsPositionLayout:(BOOL)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  scrollViewCopy = scrollView;
  delegateCopy = delegate;
  v47.receiver = self;
  v47.super_class = BKUIPearlEnrollViewBottomContainer;
  height = [(BKUIPearlEnrollViewBottomContainer *)&v47 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    objc_storeStrong(&height->_scrollview, view);
    objc_storeStrong(&v22->_overlappingScrollview, scrollView);
    v22->_squareNeedsPositionLayout = layout;
    buttonTray = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
    willUseActionDelegate = [buttonTray willUseActionDelegate];

    if ((willUseActionDelegate & 1) == 0)
    {
      buttonTray2 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      nextStateButton = [buttonTray2 nextStateButton];
      [nextStateButton addTarget:v22 action:sel_nextStateButtonWasPressed_ forControlEvents:0x2000];

      buttonTray3 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      bottomLinkButton = [buttonTray3 bottomLinkButton];
      [bottomLinkButton addTarget:v22 action:sel_escapeHatchButtonWasPressed_ forControlEvents:0x2000];

      buttonTray4 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      topLinkButton = [buttonTray4 topLinkButton];
      [topLinkButton addTarget:v22 action:sel_retryWasPressed_ forControlEvents:0x2000];
    }

    buttonTray5 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
    willUseActionDelegate2 = [buttonTray5 willUseActionDelegate];

    if ((willUseActionDelegate2 & 1) == 0)
    {
      buttonTray6 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      nextStateButton2 = [buttonTray6 nextStateButton];
      [nextStateButton2 addTarget:v22 action:sel_nextStateButtonWasPressed_ forControlEvents:0x2000];

      buttonTray7 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      bottomLinkButton2 = [buttonTray7 bottomLinkButton];
      [bottomLinkButton2 addTarget:v22 action:sel_escapeHatchButtonWasPressed_ forControlEvents:0x2000];

      buttonTray8 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      topLinkButton2 = [buttonTray8 topLinkButton];
      [topLinkButton2 addTarget:v22 action:sel_retryWasPressed_ forControlEvents:0x2000];
    }

    v22->_inBuddy = buddy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    customInstructionStrings = v22->_customInstructionStrings;
    v22->_customInstructionStrings = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    customDetailStrings = v22->_customDetailStrings;
    v22->_customDetailStrings = dictionary2;

    objc_storeWeak(&v22->_delegate, delegateCopy);
    v22->_overlapValue = 47.0;
    v43 = +[BKUIDevice sharedInstance];
    if ([v43 isZoomEnabled])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        v22->_overlapValue = v22->_overlapValue * 0.800000012;
      }
    }

    else
    {
    }
  }

  return v22;
}

- (void)setupInitialUI
{
  v49[8] = *MEMORY[0x277D85DE8];
  scrollview = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self addSubview:scrollview];

  overlappingScrollview = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self addSubview:overlappingScrollview];

  scrollview2 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  topAnchor = [scrollview2 topAnchor];
  topAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  scrollview3 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [scrollview3 setTopToSuperViewConstraint:v8];

  overlappingScrollview2 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  topAnchor3 = [overlappingScrollview2 topAnchor];
  topAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self topAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  overlappingScrollview3 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [overlappingScrollview3 setTopToSuperViewConstraint:v13];

  v36 = MEMORY[0x277CCAAD0];
  overlappingScrollview4 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  topToSuperViewConstraint = [overlappingScrollview4 topToSuperViewConstraint];
  v49[0] = topToSuperViewConstraint;
  overlappingScrollview5 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  bottomAnchor = [overlappingScrollview5 bottomAnchor];
  bottomAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self bottomAnchor];
  v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[1] = v43;
  overlappingScrollview6 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  leadingAnchor = [overlappingScrollview6 leadingAnchor];
  leadingAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[2] = v39;
  overlappingScrollview7 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  trailingAnchor = [overlappingScrollview7 trailingAnchor];
  trailingAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[3] = v34;
  scrollview4 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  topToSuperViewConstraint2 = [scrollview4 topToSuperViewConstraint];
  v49[4] = topToSuperViewConstraint2;
  scrollview5 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  bottomAnchor3 = [scrollview5 bottomAnchor];
  bottomAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v49[5] = v28;
  scrollview6 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  leadingAnchor3 = [scrollview6 leadingAnchor];
  leadingAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v49[6] = v18;
  scrollview7 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  trailingAnchor3 = [scrollview7 trailingAnchor];
  trailingAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v49[7] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:8];
  [v36 activateConstraints:v23];

  overlappingScrollview8 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self setOnScreenScrollview:overlappingScrollview8];

  scrollview8 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self setOffScreenScrollview:scrollview8];

  overlappingScrollview9 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  instructionView = [overlappingScrollview9 instructionView];
  [(BKUIPearlEnrollViewBottomContainer *)self _configureInstructionView:instructionView forState:2 substate:0];
}

- (void)prepareForAnimationToState:(int)state fromState:(int)fromState subState:(int)subState advancing:(BOOL)advancing tagAlong:(id)along parentView:(id)view
{
  advancingCopy = advancing;
  v10 = *&subState;
  v11 = *&state;
  alongCopy = along;
  viewCopy = view;
  v13 = [(BKUIPearlEnrollViewBottomContainer *)self _targetScrollViewForState:v11];
  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  instruction = [instructionView instruction];

  instructionView2 = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  detail = [instructionView2 detail];

  instructionView3 = [(BKUIScrollableContainer *)v13 instructionView];
  instructionView4 = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  [instructionView3 setDarkMode:{objc_msgSend(instructionView4, "darkMode")}];

  [(BKUIPearlEnrollViewBottomContainer *)self _configureInstructionView:instructionView3 forState:v11 substate:v10];
  instruction2 = [instructionView3 instruction];
  v45 = instruction;
  v44 = detail;
  if ([instruction2 isEqualToString:instruction])
  {
    [instructionView3 detail];
    v22 = v21 = v10;
    v23 = [v22 isEqualToString:detail];

    v10 = v21;
    if (v23)
    {
      [(BKUIScrollableContainer *)v13 layoutIfNeeded];
      instructionView5 = [(BKUIScrollableContainer *)v13 instructionView];
      [instructionView5 layoutIfNeeded];

      [viewCopy setNeedsLayout];
      [viewCopy layoutIfNeeded];
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (advancingCopy)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  if (advancingCopy)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2;
  }

  v27 = [(BKUIPearlEnrollViewBottomContainer *)self _updateTopPaddingAndReturnHorizontalConstraintsForScrollView:v13 state:v11 position:v25];
  horizontalConstraint = [(BKUIScrollableContainer *)v13 horizontalConstraint];
  [horizontalConstraint setActive:0];

  [MEMORY[0x277CCAAD0] activateConstraints:v27];
  [(BKUIScrollableContainer *)v13 setContentOffset:0 animated:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(BKUIScrollableContainer *)v13 layoutIfNeeded];
  instructionView6 = [(BKUIScrollableContainer *)v13 instructionView];
  [instructionView6 layoutIfNeeded];

  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonVisibilityForScrollView:v13 state:v11 subState:v10];
  buttonTray = [(BKUIScrollableContainer *)v13 buttonTray];
  [(BKUIPearlEnrollViewBottomContainer *)self _topPaddingForButtonTray:buttonTray];
  v32 = v31;
  buttonTrayTopAnchor = [(BKUIScrollableContainer *)v13 buttonTrayTopAnchor];
  [buttonTrayTopAnchor setConstant:v32];

  [viewCopy setNeedsLayout];
  [viewCopy layoutIfNeeded];
  [MEMORY[0x277CCAAD0] deactivateConstraints:v27];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_onscreenScrollViewConstraints];
  v34 = MEMORY[0x277CCAAD0];
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v36 = v26;
  v37 = [(BKUIPearlEnrollViewBottomContainer *)self _updateTopPaddingAndReturnHorizontalConstraintsForScrollView:onScreenScrollview state:fromState position:v26];
  [v34 activateConstraints:v37];

  v38 = [(BKUIPearlEnrollViewBottomContainer *)self _updateTopPaddingAndReturnHorizontalConstraintsForScrollView:v13 state:v11 position:1];
  onscreenScrollViewConstraints = self->_onscreenScrollViewConstraints;
  self->_onscreenScrollViewConstraints = v38;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_onscreenScrollViewConstraints];
  if (alongCopy)
  {
    v40 = [(BKUIPearlEnrollViewBottomContainer *)self _horizontalConstraintsForTagAlongTransitionView:alongCopy state:fromState position:v36];
    [v40 setActive:1];
  }

  onScreenScrollview = self->_onScreenScrollview;
  if (v13 != onScreenScrollview)
  {
    objc_storeStrong(&self->_offScreenScrollview, onScreenScrollview);
    objc_storeStrong(&self->_onScreenScrollview, v13);
  }

  horizontalConstraint2 = [(BKUIScrollableContainer *)v13 horizontalConstraint];
  [horizontalConstraint2 setActive:1];

LABEL_16:
  if (v11 == 10)
  {
    [(BKUIScrollableContainer *)self->_overlappingScrollview setIndicatorStyle:1];
    [(BKUIScrollableContainer *)self->_scrollview setIndicatorStyle:1];
  }
}

- (id)_horizontalConstraintsForTagAlongTransitionView:(id)view state:(int)state position:(int64_t)position
{
  viewCopy = view;
  v8 = viewCopy;
  switch(position)
  {
    case 2:
      leftAnchor = [viewCopy leftAnchor];
      goto LABEL_7;
    case 1:
      leftAnchor = [viewCopy rightAnchor];
LABEL_7:
      rightAnchor2 = leftAnchor;
      rightAnchor = [(BKUIPearlEnrollViewBottomContainer *)self rightAnchor];
      goto LABEL_8;
    case 0:
      rightAnchor2 = [viewCopy rightAnchor];
      rightAnchor = [(BKUIPearlEnrollViewBottomContainer *)self leftAnchor];
LABEL_8:
      v12 = rightAnchor;
      v13 = [rightAnchor2 constraintEqualToAnchor:rightAnchor];

      goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)_updateTopPaddingAndReturnHorizontalConstraintsForScrollView:(id)view state:(int)state position:(int64_t)position
{
  v24[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  horizontalConstraint = [viewCopy horizontalConstraint];
  [horizontalConstraint setActive:0];

  scrollContentView = [viewCopy scrollContentView];
  v11 = scrollContentView;
  if (position == 1)
  {
    rightAnchor = [scrollContentView rightAnchor];
  }

  else
  {
    if (!position)
    {
      rightAnchor2 = [scrollContentView rightAnchor];
      leftAnchor = [(BKUIPearlEnrollViewBottomContainer *)self leftAnchor];
      goto LABEL_7;
    }

    rightAnchor = [scrollContentView leftAnchor];
  }

  rightAnchor2 = rightAnchor;
  leftAnchor = [(BKUIPearlEnrollViewBottomContainer *)self rightAnchor];
LABEL_7:
  v15 = leftAnchor;
  v16 = [rightAnchor2 constraintEqualToAnchor:leftAnchor];

  [viewCopy setHorizontalConstraint:v16];
  squareNeedsPositionLayout = [(BKUIPearlEnrollViewBottomContainer *)self squareNeedsPositionLayout];
  if ((state - 5) < 0xFFFFFFFE || squareNeedsPositionLayout)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 47.0;
  }

  topToSuperViewConstraint = [viewCopy topToSuperViewConstraint];
  [topToSuperViewConstraint setConstant:v19];

  if (state == 10)
  {
    topToSuperViewConstraint2 = [viewCopy topToSuperViewConstraint];
    [topToSuperViewConstraint2 setConstant:0.0];
  }

  v24[0] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];

  return v22;
}

- (void)updateInstructionViewContentForState:(int)state substate:(int)substate
{
  v4 = *&substate;
  v5 = *&state;
  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self _configureInstructionView:instructionView forState:v5 substate:v4];
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_onscreenScrollViewConstraints];
  v9 = [(BKUIPearlEnrollViewBottomContainer *)self _updateTopPaddingAndReturnHorizontalConstraintsForScrollView:onScreenScrollview state:v5 position:1];
  onscreenScrollViewConstraints = self->_onscreenScrollViewConstraints;
  self->_onscreenScrollViewConstraints = v9;

  [MEMORY[0x277CD9FF0] begin];
  v11 = MEMORY[0x277CD9FF0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__BKUIPearlEnrollViewBottomContainer_updateInstructionViewContentForState_substate___block_invoke;
  v14[3] = &unk_278D09A60;
  v15 = instructionView;
  v16 = onScreenScrollview;
  selfCopy = self;
  v12 = onScreenScrollview;
  v13 = instructionView;
  [v11 setCompletionBlock:v14];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_onscreenScrollViewConstraints];
  [MEMORY[0x277CD9FF0] commit];
  [(BKUIPearlEnrollViewBottomContainer *)self setNeedsLayout];
}

void __84__BKUIPearlEnrollViewBottomContainer_updateInstructionViewContentForState_substate___block_invoke(id *a1)
{
  [a1[4] setNeedsLayout];
  [a1[5] setNeedsLayout];
  [a1[6] updateButtonLayout];
  [a1[6] layoutIfNeeded];
  v2 = [a1[6] delegate];
  v3 = [v2 view];
  [v3 setNeedsLayout];

  v5 = [a1[6] delegate];
  v4 = [v5 view];
  [v4 layoutIfNeeded];
}

- (void)_configureInstructionView:(id)view forState:(int)state substate:(int)substate
{
  v5 = *&substate;
  v6 = *&state;
  customInstructionStrings = self->_customInstructionStrings;
  v9 = MEMORY[0x277CCABB0];
  viewCopy = view;
  v11 = [v9 numberWithUnsignedInt:v6];
  v15 = [(NSMutableDictionary *)customInstructionStrings objectForKeyedSubscript:v11];

  if (!v15)
  {
    v15 = [(BKUIPearlEnrollViewBottomContainer *)self _instructionTextForState:v6 substate:v5];
  }

  customDetailStrings = self->_customDetailStrings;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v14 = [(NSMutableDictionary *)customDetailStrings objectForKeyedSubscript:v13];

  if (!v14)
  {
    v14 = [(BKUIPearlEnrollViewBottomContainer *)self _detailTextForState:v6 substate:v5];
  }

  [viewCopy setInstruction:v15];
  [viewCopy setDetail:v14];
}

- (id)_instructionTextForState:(int)state substate:(int)substate
{
  if (!substate)
  {
    v11 = *&state;
    customInstructionStrings = self->_customInstructionStrings;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v14 = [(NSMutableDictionary *)customInstructionStrings objectForKeyedSubscript:v13];

    if (v14)
    {
      goto LABEL_18;
    }

    v6 = [(BKUIPearlEnrollViewBottomContainer *)self _locStateNameForState:v11];
    if (!v6)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSTRUCTION_STATE_%@", v6];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:v15 value:&stru_2853BB280 table:@"Pearl-periocular"];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_16;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v14 localizedStringForKey:v15 value:&stru_2853BB280 table:@"Pearl-j3xx"];

    v17 = v20;
LABEL_15:

LABEL_16:
    v14 = v17;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSTRUCTION_SUBSTATE_%i", *&substate];
  if (substate == 11)
  {
    delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler = [delegate currentOperationHandler];
    bkIdentities = [currentOperationHandler bkIdentities];

    if ([bkIdentities count] >= 2)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSTRUCTION_TWO_ENROLLMENTS_SUBSTATE_%i", 11];

      v6 = v23;
    }

    goto LABEL_12;
  }

  if (substate == 15)
  {
    delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler2 = [delegate2 currentOperationHandler];
    isEnrollmentAugmentationOnly = [currentOperationHandler2 isEnrollmentAugmentationOnly];

    if (isEnrollmentAugmentationOnly)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"INSTRUCTION_SUBSTATE_AUGMENTATION_%i", 15];
      v6 = bkIdentities = v6;
LABEL_12:
    }
  }

  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v24 localizedStringForKey:v6 value:&stru_2853BB280 table:@"Pearl-periocular"];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v15 localizedStringForKey:v6 value:&stru_2853BB280 table:@"Pearl-j3xx"];
    goto LABEL_15;
  }

LABEL_17:

LABEL_18:

  return v14;
}

- (id)_detailTextForState:(int)state substate:(int)substate
{
  if (substate)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSTRUCTION_DETAIL_SUBSTATE_%i", *&substate];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_2853BB280 table:@"Pearl-periocular"];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
LABEL_6:

      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v4 value:&stru_2853BB280 table:@"Pearl-j3xx"];
    goto LABEL_4;
  }

  v11 = *&state;
  customDetailStrings = self->_customDetailStrings;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v6 = [(NSMutableDictionary *)customDetailStrings objectForKeyedSubscript:v14];

  if (!v6)
  {
    v4 = [(BKUIPearlEnrollViewBottomContainer *)self _locStateDetailedLabelNameForState:v11];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSTRUCTION_DETAIL_STATE_%@", v4];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v16 localizedStringForKey:v9 value:&stru_2853BB280 table:@"Pearl-periocular"];

    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2 != 1)
    {
      goto LABEL_5;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v6 localizedStringForKey:v9 value:&stru_2853BB280 table:@"Pearl-j3xx"];

    v10 = v19;
LABEL_4:

LABEL_5:
    v6 = v10;
    goto LABEL_6;
  }

LABEL_8:

  return v6;
}

- (void)setCustomInstructionString:(id)string forState:(int)state
{
  v4 = *&state;
  stringCopy = string;
  customInstructionStrings = self->_customInstructionStrings;
  if (!customInstructionStrings)
  {
    v7 = objc_opt_new();
    v8 = self->_customInstructionStrings;
    self->_customInstructionStrings = v7;

    customInstructionStrings = self->_customInstructionStrings;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)customInstructionStrings setObject:stringCopy forKeyedSubscript:v9];
}

- (void)setCustomDetailString:(id)string forState:(int)state
{
  v4 = *&state;
  stringCopy = string;
  customDetailStrings = self->_customDetailStrings;
  if (!customDetailStrings)
  {
    v7 = objc_opt_new();
    v8 = self->_customDetailStrings;
    self->_customDetailStrings = v7;

    customDetailStrings = self->_customDetailStrings;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)customDetailStrings setObject:stringCopy forKeyedSubscript:v9];
}

- (id)_locStateDetailedLabelNameForState:(int)state
{
  v4 = [(BKUIPearlEnrollViewBottomContainer *)self _locStateNameForState:?];
  if (state == 9)
  {

    v4 = @"PARTIAL_CAPTURE";
  }

  return v4;
}

- (id)_locStateNameForState:(int)state
{
  v4 = 0;
  if (state <= 5)
  {
    if ((state - 1) < 2)
    {
      delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      enrollmentConfiguration = [delegate enrollmentConfiguration];

      if (enrollmentConfiguration == 4)
      {
        v4 = 0;
      }

      else
      {
        v4 = @"TUTORIAL";
      }
    }

    else
    {
      v5 = @"FIRST_SCAN";
      if (state != 5)
      {
        v5 = 0;
      }

      if ((state - 3) >= 2)
      {
        v4 = v5;
      }

      else
      {
        v4 = @"POSITIONING";
      }
    }

    goto LABEL_76;
  }

  if (state > 7)
  {
    if (state != 8)
    {
      if (state != 9)
      {
        if (state != 10)
        {
          goto LABEL_76;
        }

        delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        currentOperationHandler = [delegate2 currentOperationHandler];
        if ([currentOperationHandler supportsPeriocularEnrollment] && -[BKUIPearlEnrollViewBottomContainer inBuddy](self, "inBuddy"))
        {
          delegate3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          currentOperationHandler2 = [delegate3 currentOperationHandler];
          identity = [currentOperationHandler2 identity];
          if ([identity hasPeriocularEnrollment])
          {
            delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
            currentOperationHandler3 = [delegate4 currentOperationHandler];
            identity2 = [currentOperationHandler3 identity];
            canAddPeriocularEnrollment = [identity2 canAddPeriocularEnrollment];

            if (canAddPeriocularEnrollment)
            {
              v4 = @"PERIOCULAR_ENROLL_FINISHED_BUDDY";
              goto LABEL_76;
            }

            goto LABEL_67;
          }
        }

LABEL_67:
        v4 = @"ENROLL_FINISHED";
        goto LABEL_76;
      }

      delegate5 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler4 = [delegate5 currentOperationHandler];

      enrollmentType = [currentOperationHandler4 enrollmentType];
      switch(enrollmentType)
      {
        case 3:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            isEnrollmentAugmentationOnly = [currentOperationHandler4 isEnrollmentAugmentationOnly];
            v61 = @"SECOND_SCAN_COMPLETE";
            if (isEnrollmentAugmentationOnly)
            {
              v61 = @"FIRST_SCAN_COMPLETE";
            }

            v4 = v61;
            goto LABEL_71;
          }

          enrollmentConfiguration2 = [currentOperationHandler4 enrollmentConfiguration];
          v4 = 0;
          if (enrollmentConfiguration2 <= 2)
          {
            if (enrollmentConfiguration2 == 1)
            {
              v4 = @"THIRD_SCAN_COMPLETE";
            }

            else if (!enrollmentConfiguration2)
            {
              [BKUIPearlEnrollViewBottomContainer _locStateNameForState:];
            }

            goto LABEL_71;
          }

          if (enrollmentConfiguration2 != 3)
          {
            if (enrollmentConfiguration2 != 4)
            {
              goto LABEL_71;
            }

LABEL_31:
            v4 = @"FIRST_SCAN_COMPLETE";
LABEL_71:

            goto LABEL_76;
          }

          break;
        case 2:
          break;
        case 1:
          goto LABEL_31;
        default:
          v4 = 0;
          goto LABEL_71;
      }

      v4 = @"SECOND_SCAN_COMPLETE";
      goto LABEL_71;
    }

    delegate6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler5 = [delegate6 currentOperationHandler];
    if ([currentOperationHandler5 isEnrollmentAugmentationOnly])
    {
      delegate7 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      if ([delegate7 isFinalEnrollment])
      {
        delegate8 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        if ([delegate8 isFinalEnrollment])
        {
          delegate9 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          currentOperationHandler6 = [delegate9 currentOperationHandler];
          enrollOperation = [currentOperationHandler6 enrollOperation];
          v28 = enrollOperation == 0;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }

    delegate10 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler7 = [delegate10 currentOperationHandler];
    if ([currentOperationHandler7 isEnrollmentAugmentationOnly])
    {
      delegate11 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler8 = [delegate11 currentOperationHandler];
      v49 = [currentOperationHandler8 glassesFound] ^ 1;
    }

    else
    {
      v49 = 0;
    }

    delegate12 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    enrollmentConfiguration3 = [delegate12 enrollmentConfiguration];

    if (enrollmentConfiguration3 == 4)
    {
      v4 = @"FACEID_SCAN_COMPLETE";
      goto LABEL_76;
    }

    if ((v49 | v28))
    {
LABEL_57:
      v4 = @"FIRST_SCAN_COMPLETE";
      goto LABEL_76;
    }

    delegate13 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    if ([delegate13 isFinalEnrollment])
    {
      delegate14 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler9 = [delegate14 currentOperationHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate15 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        currentOperationHandler10 = [delegate15 currentOperationHandler];
        centerBinComplete = [currentOperationHandler10 centerBinComplete];

        v4 = @"SECOND_SCAN_COMPLETE";
        if (!centerBinComplete)
        {
          goto LABEL_76;
        }

        delegate16 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        currentOperationHandler11 = [delegate16 currentOperationHandler];
        isEnrollmentAugmentationOnly2 = [currentOperationHandler11 isEnrollmentAugmentationOnly];

        v43 = @"THIRD_SCAN_COMPLETE";
        goto LABEL_62;
      }
    }

    v4 = @"SECOND_SCAN_COMPLETE";
    goto LABEL_76;
  }

  if (state == 6)
  {
    goto LABEL_57;
  }

  delegate17 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler12 = [delegate17 currentOperationHandler];
  if ([currentOperationHandler12 isEnrollmentAugmentationOnly])
  {
    delegate18 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    isFinalEnrollment = [delegate18 isFinalEnrollment];

    if (!isFinalEnrollment)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  delegate19 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  enrollmentConfiguration4 = [delegate19 enrollmentConfiguration];

  if (enrollmentConfiguration4 == 4)
  {
LABEL_34:
    v4 = @"FIRST_SCAN";
    goto LABEL_76;
  }

  delegate20 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if (([delegate20 isFinalEnrollment] & 1) == 0)
  {
LABEL_73:

    v4 = @"SECOND_SCAN";
    goto LABEL_76;
  }

  delegate21 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler13 = [delegate21 currentOperationHandler];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_73;
  }

  delegate22 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler14 = [delegate22 currentOperationHandler];
  centerBinComplete2 = [currentOperationHandler14 centerBinComplete];

  v4 = @"SECOND_SCAN";
  if (!centerBinComplete2)
  {
    goto LABEL_76;
  }

  delegate23 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler15 = [delegate23 currentOperationHandler];
  isEnrollmentAugmentationOnly2 = [currentOperationHandler15 isEnrollmentAugmentationOnly];

  v43 = @"THIRD_SCAN";
LABEL_62:
  if (!isEnrollmentAugmentationOnly2)
  {
    v4 = v43;
  }

LABEL_76:

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BKUIPearlEnrollViewBottomContainer;
  [(BKUIPearlEnrollViewBottomContainer *)&v4 layoutSubviews];
  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  [instructionView layoutIfNeeded];
}

- (double)_topPaddingForButtonTray:(id)tray
{
  trayCopy = tray;
  displayState = [trayCopy displayState];
  if (displayState > 2)
  {
    if (displayState != 3)
    {
      if (displayState == 4)
      {
        [trayCopy size];
        v3 = v8;
      }

      goto LABEL_12;
    }

LABEL_8:
    nextStateButton = [trayCopy nextStateButton];
    [nextStateButton alpha];
    if (v9 == 0.0)
    {
      v3 = 25.0;
    }

    else
    {
      v3 = 0.0;
    }

    goto LABEL_11;
  }

  if (displayState == 1)
  {
    goto LABEL_8;
  }

  if (displayState == 2)
  {
    nextStateButton = [trayCopy bottomLinkButton];
    [nextStateButton origin];
    v3 = v7;
LABEL_11:
  }

LABEL_12:

  return v3;
}

- (void)finalizeInstructionAnimation
{
  buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
  [buttonTray updateButtonLayout];

  scrollview = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [scrollview setShowsVerticalScrollIndicator:0];

  overlappingScrollview = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [overlappingScrollview setShowsVerticalScrollIndicator:0];

  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  superview = [instructionView superview];

  v11Superview = [superview superview];
  [(BKUIPearlEnrollViewBottomContainer *)self bringSubviewToFront:v11Superview];
  [(BKUIPearlEnrollViewBottomContainer *)self setNeedsLayout];
  [(BKUIPearlEnrollViewBottomContainer *)self layoutIfNeeded];
  [v11Superview contentSize];
  v9 = v8;
  [v11Superview bounds];
  if (v9 > v10)
  {
    [v11Superview setShowsVerticalScrollIndicator:1];
    [v11Superview flashScrollIndicators];
  }
}

- (id)_targetScrollViewForState:(int)state
{
  if (state == 2)
  {
    [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  }

  else
  {
    [(BKUIPearlEnrollViewBottomContainer *)self offScreenScrollview];
  }
  v3 = ;

  return v3;
}

- (id)buttonTray
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];

  return buttonTray;
}

- (void)updateButtonLayout
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonVisibilityForScrollView:onScreenScrollview];
}

- (id)bottomLinkButton
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];
  bottomLinkButton = [buttonTray bottomLinkButton];

  return bottomLinkButton;
}

- (id)nextStateButton
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];
  nextStateButton = [buttonTray nextStateButton];

  return nextStateButton;
}

- (id)buttonTrayTopAnchor
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTrayTopAnchor = [onScreenScrollview buttonTrayTopAnchor];

  return buttonTrayTopAnchor;
}

- (BKUIPearlInstructionView)instructionView
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  instructionView = [onScreenScrollview instructionView];

  return instructionView;
}

- (void)nextStateButtonWasPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [delegate nextStateButtonPressed:pressedCopy];
}

- (void)escapeHatchButtonWasPressed:(id)pressed
{
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [delegate escapeHatchButtonPressed];
}

- (void)retryWasPressed:(id)pressed
{
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [delegate retryPressed];
}

- (void)updateButtonVisibility
{
  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  overlappingScrollview = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  instructionView2 = [overlappingScrollview instructionView];
  if (instructionView == instructionView2)
  {
    [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  }

  else
  {
    [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  }
  v6 = ;

  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonVisibilityForScrollView:v6];
}

- (void)_updateButtonVisibilityForScrollView:(id)view
{
  viewCopy = view;
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  state = [delegate state];
  delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  -[BKUIPearlEnrollViewBottomContainer _updateButtonVisibilityForScrollView:state:subState:](self, "_updateButtonVisibilityForScrollView:state:subState:", viewCopy, state, [delegate2 substate]);
}

- (void)_updateButtonVisibilityForScrollView:(id)view state:(int)state subState:(int)subState
{
  v5 = *&subState;
  v6 = *&state;
  viewCopy = view;
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v9 = [delegate _nextStateButtonTitleForState:v6 subState:v5];

  delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  state = [delegate2 state];

  if (v9)
  {
    canStartEnrollmentOperation = state != 2;
  }

  else
  {
    canStartEnrollmentOperation = 0;
  }

  if (state == 2 && v9)
  {
    delegate3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler = [delegate3 currentOperationHandler];
    canStartEnrollmentOperation = [currentOperationHandler canStartEnrollmentOperation];
  }

  buttonTray = [viewCopy buttonTray];
  nextStateButton = [buttonTray nextStateButton];
  v17 = nextStateButton;
  if (v9)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [nextStateButton setAlpha:v18];

  buttonTray2 = [viewCopy buttonTray];
  nextStateButton2 = [buttonTray2 nextStateButton];
  [nextStateButton2 setEnabled:canStartEnrollmentOperation];

  delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v22 = [delegate4 _escapeHatchTitleForState:v6];

  buttonTray3 = [viewCopy buttonTray];
  bottomLinkButton = [buttonTray3 bottomLinkButton];
  if ([v22 length])
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  [bottomLinkButton setAlpha:v25];

  delegate5 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if ([delegate5 state] == 3)
  {
    delegate6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler2 = [delegate6 currentOperationHandler];
    shouldShowRetryUI = [currentOperationHandler2 shouldShowRetryUI];
  }

  else
  {
    shouldShowRetryUI = 0;
  }

  buttonTray4 = [viewCopy buttonTray];
  topLinkButton = [buttonTray4 topLinkButton];
  v32 = topLinkButton;
  if (shouldShowRetryUI)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  [topLinkButton setAlpha:v33];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    buttonTray5 = [viewCopy buttonTray];
    topLinkButton2 = [buttonTray5 topLinkButton];
    [topLinkButton2 setEnabled:shouldShowRetryUI & 1];
  }

  if (shouldShowRetryUI)
  {
    [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonLayoutForScrollView:viewCopy];
  }

  else
  {
    buttonTray6 = [viewCopy buttonTray];
    [buttonTray6 updateButtonLayout];
  }
}

- (void)_updateButtonLayoutForScrollView:(id)view
{
  viewCopy = view;
  buttonTray = [viewCopy buttonTray];
  [buttonTray updateButtonLayout];

  instructionView = [viewCopy instructionView];
  [instructionView layoutIfNeeded];

  buttonTray2 = [viewCopy buttonTray];
  [(BKUIPearlEnrollViewBottomContainer *)self _topPaddingForButtonTray:buttonTray2];
  v8 = v7;
  buttonTrayTopAnchor = [viewCopy buttonTrayTopAnchor];

  [buttonTrayTopAnchor setConstant:v8];
}

- (BKUIPearlBottomContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end