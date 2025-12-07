@interface LAPSPasscodeViewController
- (BOOL)_shouldShowNextButton;
- (BOOL)_shouldUseStandardKeyboardGuide;
- (NSDirectionalEdgeInsets)_mainStackInsets;
- (double)_bodyStackHorizontalPadding;
- (double)_mainStackSpacing;
- (double)_widthMultiplier;
- (id)setup;
- (void)_scrollTo:(id)to;
- (void)_scrollToPasscodeField;
- (void)_showPasscodeOptions:(id)options;
- (void)setErrorMessage:(id)message;
- (void)setupNavigationItem;
- (void)updateLayoutAfterPasscodeLengthChangeIfNeeded:(int64_t)needed;
- (void)viewDidLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation LAPSPasscodeViewController

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v3 viewDidLayoutSubviews];
  [(LAPSPasscodeViewController *)self _scrollToPasscodeField];
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v6 willMoveToParentViewController:?];
  WeakRetained = objc_loadWeakRetained(&self->_optionsButton);
  [WeakRetained setHidden:controller == 0];
}

- (id)setup
{
  v235[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  view = [(LAPSPasscodeViewController *)self view];
  [view addSubview:v3];

  v212 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v3 centerXAnchor];
  view2 = [(LAPSPasscodeViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v235[0] = v8;
  v211 = v3;
  widthAnchor = [v3 widthAnchor];
  view3 = [(LAPSPasscodeViewController *)self view];
  widthAnchor2 = [view3 widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v235[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:2];
  [v212 activateConstraints:v13];

  selfCopy = self;
  if ([(LAPSPasscodeViewController *)self _shouldUseStandardKeyboardGuide])
  {
    view4 = [(LAPSPasscodeViewController *)self view];
    keyboardLayoutGuide = [view4 keyboardLayoutGuide];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D241C8]);
    view4 = [(LAPSPasscodeViewController *)self view];
    keyboardLayoutGuide = [v17 initWithView:view4];
  }

  v18 = keyboardLayoutGuide;

  v19 = v211;
  bottomAnchor = [v211 bottomAnchor];
  v207 = v18;
  topAnchor = [v18 topAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:topAnchor];

  v206 = v22;
  [v22 setActive:1];
  selfCopy2 = self;
  if (_UISolariumEnabled())
  {
    topAnchor2 = [v211 topAnchor];
    view5 = [(LAPSPasscodeViewController *)self view];
    topAnchor3 = [view5 topAnchor];
    v26 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  }

  else
  {
    topAnchor2 = objc_alloc_init(MEMORY[0x277D756D0]);
    view6 = [(LAPSPasscodeViewController *)self view];
    [view6 addLayoutGuide:topAnchor2];

    v181 = MEMORY[0x277CCAAD0];
    v23TopAnchor = [topAnchor2 topAnchor];
    view7 = [(LAPSPasscodeViewController *)self view];
    topAnchor4 = [view7 topAnchor];
    v194 = [v23TopAnchor constraintEqualToAnchor:topAnchor4];
    v234[0] = v194;
    heightAnchor = [topAnchor2 heightAnchor];
    view8 = [(LAPSPasscodeViewController *)self view];
    heightAnchor2 = [view8 heightAnchor];
    v177 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
    v234[1] = v177;
    leadingAnchor = [topAnchor2 leadingAnchor];
    view9 = [(LAPSPasscodeViewController *)self view];
    leadingAnchor2 = [view9 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v234[2] = v31;
    trailingAnchor = [topAnchor2 trailingAnchor];
    view10 = [(LAPSPasscodeViewController *)selfCopy view];
    trailingAnchor2 = [view10 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v234[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:4];
    [v181 activateConstraints:v36];

    selfCopy = selfCopy2;
    v19 = v211;

    LODWORD(v31) = [(LAPSPasscodeViewControllerBase *)selfCopy2 isAccessibilityTextEnabled];
    view5 = [v211 topAnchor];
    if (v31)
    {
      topAnchor3 = [topAnchor2 topAnchor];
      v37 = 20.0;
    }

    else
    {
      topAnchor3 = [topAnchor2 centerYAnchor];
      v37 = -40.0;
    }

    v26 = [view5 constraintEqualToAnchor:topAnchor3 constant:v37];
  }

  v38 = v26;
  [v26 setActive:1];

  objc_storeWeak(&selfCopy->_scrollView, v19);
  v39 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v39 setAxis:1];
  [v39 setAlignment:0];
  [v39 setDistribution:3];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LAPSPasscodeViewController *)selfCopy _mainStackSpacing];
  [v39 setSpacing:?];
  [v19 addSubview:v39];
  v191 = MEMORY[0x277CCAAD0];
  topAnchor5 = [v39 topAnchor];
  topAnchor6 = [v19 topAnchor];
  v199 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v233[0] = v199;
  [v39 bottomAnchor];
  v195 = v40 = v19;
  bottomAnchor2 = [v19 bottomAnchor];
  v42 = [v195 constraintEqualToAnchor:bottomAnchor2];
  v233[1] = v42;
  widthAnchor3 = [v39 widthAnchor];
  widthAnchor4 = [v19 widthAnchor];
  [(LAPSPasscodeViewController *)selfCopy _widthMultiplier];
  v45 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:?];
  v233[2] = v45;
  centerXAnchor3 = [v39 centerXAnchor];
  centerXAnchor4 = [v40 centerXAnchor];
  v48 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v233[3] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:4];
  [v191 activateConstraints:v49];

  p_isa = &selfCopy2->super.super.super.super.isa;
  [v39 setLayoutMarginsRelativeArrangement:1];
  [(LAPSPasscodeViewController *)selfCopy2 _mainStackInsets];
  [v39 setDirectionalLayoutMargins:?];
  v210 = v39;
  if (_UISolariumEnabled())
  {
    v51 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = objc_alloc(MEMORY[0x277D755E8]);
    v53 = [MEMORY[0x277D755B8] systemImageNamed:@"lock"];
    v54 = [v52 initWithImage:v53];

    [v54 setContentMode:1];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v54 setTintColor:systemBlueColor];

    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v51 addSubview:v54];
    v182 = MEMORY[0x277CCAAD0];
    widthAnchor5 = [v54 widthAnchor];
    v200 = [widthAnchor5 constraintEqualToConstant:72.0];
    v232[0] = v200;
    heightAnchor3 = [v54 heightAnchor];
    v192 = [heightAnchor3 constraintEqualToConstant:72.0];
    v232[1] = v192;
    centerXAnchor5 = [v54 centerXAnchor];
    centerXAnchor6 = [v51 centerXAnchor];
    v56 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v232[2] = v56;
    topAnchor7 = [v54 topAnchor];
    topAnchor8 = [v51 topAnchor];
    v59 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v232[3] = v59;
    bottomAnchor3 = [v54 bottomAnchor];
    bottomAnchor4 = [v51 bottomAnchor];
    v62 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v232[4] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:5];
    [v182 activateConstraints:v63];

    p_isa = &selfCopy2->super.super.super.super.isa;
    v39 = v210;

    [v210 addArrangedSubview:v51];
    [v210 setCustomSpacing:v51 afterView:56.0];
  }

  v64 = objc_alloc_init(MEMORY[0x277D75A68]);
  [p_isa _bodyStackSpacing];
  [v64 setSpacing:?];
  [v64 setAxis:1];
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
  [p_isa _bodyStackHorizontalPadding];
  v66 = v65;
  [p_isa _bodyStackHorizontalPadding];
  [v64 setDirectionalLayoutMargins:{0.0, v66, 0.0, v67}];
  [v64 setLayoutMarginsRelativeArrangement:1];
  [v39 addArrangedSubview:v64];
  v68 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v68 setNumberOfLines:0];
  v69 = _UISolariumEnabled();
  v70 = MEMORY[0x277D76A28];
  if (v69)
  {
    [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] weight:*MEMORY[0x277D743F8]];
  }

  else
  {
    [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }
  v71 = ;
  [v68 setFont:v71];

  if (_UISolariumEnabled())
  {
    v72 = 4;
  }

  else
  {
    v72 = 1;
  }

  [v68 setTextAlignment:v72];
  if (_UISolariumEnabled())
  {
    [v64 addArrangedSubview:v68];
  }

  else
  {
    [v39 insertArrangedSubview:v68 atIndex:0];
  }

  LODWORD(v73) = 1144750080;
  [v68 setContentHuggingPriority:1 forAxis:v73];
  v193 = v68;
  objc_storeWeak(p_isa + 130, v68);
  v74 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v74 setNumberOfLines:0];
  v75 = MEMORY[0x277D74300];
  v76 = _UISolariumEnabled();
  v77 = *MEMORY[0x277D769D0];
  if (v76)
  {
    v78 = *v70;
  }

  else
  {
    v78 = *MEMORY[0x277D769D0];
  }

  v79 = [v75 preferredFontForTextStyle:v78];
  [v74 setFont:v79];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v74 setTextColor:secondaryLabelColor];

  if (_UISolariumEnabled())
  {
    v81 = 4;
  }

  else
  {
    v81 = 1;
  }

  [v74 setTextAlignment:v81];
  [v64 addArrangedSubview:v74];
  LODWORD(v82) = 1144750080;
  [v74 setContentHuggingPriority:1 forAxis:v82];
  v189 = v74;
  objc_storeWeak(p_isa + 131, v74);
  v83 = objc_alloc(MEMORY[0x277D241D8]);
  passcodeType = [p_isa passcodeType];
  v85 = [v83 initWithStyle:{objc_msgSend(p_isa, "styleWithPasscodeType:", passcodeType)}];

  [v85 setCanShowInLockScreen:{objc_msgSend(p_isa, "_canShowWhileLocked")}];
  [p_isa addChildViewController:v85];
  view11 = [v85 view];
  v205 = v64;
  [v64 addArrangedSubview:view11];

  [v85 setDelegate:p_isa];
  [v85 didMoveToParentViewController:p_isa];
  v183 = v85;
  objc_storeWeak(p_isa + 136, v85);
  v87 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
  v88 = objc_alloc_init(MEMORY[0x277D241A0]);
  [v88 setNumberOfLines:0];
  v89 = [MEMORY[0x277D74300] preferredFontForTextStyle:v77];
  [v88 setFont:v89];

  [v88 setStyle:1];
  [v88 setTextAlignment:1];
  [v88 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v87 addSubview:v88];
  v90 = MEMORY[0x277CCAAD0];
  topAnchor9 = [v88 topAnchor];
  topAnchor10 = [v87 topAnchor];
  v93 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v231[0] = v93;
  bottomAnchor5 = [v88 bottomAnchor];
  bottomAnchor6 = [v87 bottomAnchor];
  v96 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v231[1] = v96;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:2];
  [v90 activateConstraints:v97];

  v98 = v87;
  LODWORD(topAnchor10) = _UISolariumEnabled();
  v179 = MEMORY[0x277CCAAD0];
  leadingAnchor3 = [v88 leadingAnchor];
  leadingAnchor4 = [v87 leadingAnchor];
  v197 = v88;
  v201 = v98;
  if (topAnchor10)
  {
    v101 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v230[0] = v101;
    trailingAnchor3 = [v88 trailingAnchor];
    trailingAnchor4 = [v98 trailingAnchor];
    v104 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v230[1] = v104;
    centerXAnchor7 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:2];
    [v179 activateConstraints:centerXAnchor7];
  }

  else
  {
    v101 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    v229[0] = v101;
    trailingAnchor3 = [v88 trailingAnchor];
    trailingAnchor4 = [v98 trailingAnchor];
    v104 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v229[1] = v104;
    centerXAnchor7 = [v88 centerXAnchor];
    centerXAnchor8 = [v98 centerXAnchor];
    v107 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v229[2] = v107;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:3];
    [v179 activateConstraints:v108];

    v98 = v201;
    v88 = v197;
  }

  [v205 addArrangedSubview:v98];
  objc_storeWeak(&selfCopy2->_errorCapsule, v88);
  objc_storeWeak(&selfCopy2->_errorCapsuleContainer, v98);
  v109 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v109 setNumberOfLines:0];
  v110 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v109 setFont:v110];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v109 setTextColor:secondaryLabelColor2];

  if (_UISolariumEnabled())
  {
    v112 = 4;
  }

  else
  {
    v112 = 1;
  }

  [v109 setTextAlignment:v112];
  [v205 addArrangedSubview:v109];
  LODWORD(v113) = 1144750080;
  [v109 setContentHuggingPriority:1 forAxis:v113];
  v180 = v109;
  objc_storeWeak(&selfCopy2->_footerLabel, v109);
  v114 = objc_alloc_init(MEMORY[0x277D75D18]);
  view12 = [(LAPSPasscodeViewController *)selfCopy2 view];
  backgroundColor = [view12 backgroundColor];
  [v114 setBackgroundColor:backgroundColor];

  [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
  view13 = [(LAPSPasscodeViewController *)selfCopy2 view];
  [view13 addSubview:v114];

  v118 = MEMORY[0x277CCAAD0];
  v228 = v206;
  v119 = [MEMORY[0x277CBEA60] arrayWithObjects:&v228 count:1];
  [v118 deactivateConstraints:v119];

  v167 = MEMORY[0x277CCAAD0];
  topAnchor11 = [v114 topAnchor];
  WeakRetained = objc_loadWeakRetained(&selfCopy2->_scrollView);
  bottomAnchor7 = [WeakRetained bottomAnchor];
  v171 = [topAnchor11 constraintEqualToAnchor:bottomAnchor7 constant:8.0];
  v227[0] = v171;
  bottomAnchor8 = [v114 bottomAnchor];
  topAnchor12 = [v207 topAnchor];
  v120 = [bottomAnchor8 constraintEqualToAnchor:topAnchor12];
  v227[1] = v120;
  leadingAnchor5 = [v114 leadingAnchor];
  leadingAnchor6 = [v210 leadingAnchor];
  v123 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v227[2] = v123;
  trailingAnchor5 = [v114 trailingAnchor];
  trailingAnchor6 = [v210 trailingAnchor];
  v126 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v227[3] = v126;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v227 count:4];
  [v167 activateConstraints:v127];

  if ([(LAPSPasscodeViewControllerBase *)selfCopy2 shouldShowPasscodeOptionsButton])
  {
    v128 = [MEMORY[0x277D75220] buttonWithType:1];
    titleLabel = [v128 titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [v128 titleLabel];
    if (_UISolariumEnabled())
    {
      v131 = 4;
    }

    else
    {
      v131 = 1;
    }

    [titleLabel2 setTextAlignment:v131];

    v132 = objc_alloc(MEMORY[0x277CCA898]);
    config = [(LAPSPasscodeViewControllerBase *)selfCopy2 config];
    optionsConfiguration = [config optionsConfiguration];
    title = [optionsConfiguration title];
    v225 = *MEMORY[0x277D740A8];
    v136 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v226 = v136;
    v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
    v138 = [v132 initWithString:title attributes:v137];
    [v128 setAttributedTitle:v138 forState:0];

    [v128 addTarget:selfCopy2 action:sel__showPasscodeOptions_ forControlEvents:64];
    [v114 addSubview:v128];
    [v128 setTranslatesAutoresizingMaskIntoConstraints:0];
    v166 = MEMORY[0x277CCAAD0];
    heightAnchor4 = [v128 heightAnchor];
    titleLabel3 = [v128 titleLabel];
    heightAnchor5 = [titleLabel3 heightAnchor];
    v172 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v224[0] = v172;
    topAnchor13 = [v128 topAnchor];
    topAnchor14 = [v114 topAnchor];
    v139 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
    v224[1] = v139;
    trailingAnchor7 = [v128 trailingAnchor];
    trailingAnchor8 = [v114 trailingAnchor];
    v142 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8 constant:-10.0];
    v224[2] = v142;
    [v128 bottomAnchor];
    v144 = v143 = v114;
    bottomAnchor9 = [v143 bottomAnchor];
    v146 = [v144 constraintEqualToAnchor:bottomAnchor9 constant:-8.0];
    v224[3] = v146;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:4];
    [v166 activateConstraints:v147];

    v114 = v143;
    LODWORD(trailingAnchor8) = _UISolariumEnabled();
    v148 = MEMORY[0x277CCAAD0];
    leadingAnchor7 = [v128 leadingAnchor];
    leadingAnchor8 = [v143 leadingAnchor];
    if (trailingAnchor8)
    {
      v151 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:37.0];
      v223 = v151;
      centerXAnchor9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v223 count:1];
      [v148 activateConstraints:centerXAnchor9];
    }

    else
    {
      v151 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8 constant:10.0];
      v222[0] = v151;
      centerXAnchor9 = [v128 centerXAnchor];
      centerXAnchor10 = [v114 centerXAnchor];
      v154 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
      v222[1] = v154;
      v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:2];
      [v148 activateConstraints:v155];
    }

    objc_storeWeak(&selfCopy2->_optionsButton, v128);
  }

  v214[0] = MEMORY[0x277D85DD0];
  v214[1] = 3221225472;
  v214[2] = __35__LAPSPasscodeViewController_setup__block_invoke;
  v214[3] = &unk_278A653B8;
  v215 = v193;
  v216 = v189;
  v217 = v180;
  v218 = v211;
  v219 = v197;
  v220 = v201;
  v221 = v183;
  v156 = v183;
  v157 = v201;
  v158 = v197;
  v159 = v211;
  v160 = v180;
  v161 = v189;
  v162 = v193;
  v163 = __35__LAPSPasscodeViewController_setup__block_invoke(v214);

  return v163;
}

LAPSPasscodeViewControllerManagedViews *__35__LAPSPasscodeViewController_setup__block_invoke(void *a1)
{
  v2 = objc_alloc_init(LAPSPasscodeViewControllerManagedViews);
  [(LAPSPasscodeViewControllerManagedViews *)v2 setHeaderLabel:a1[4]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setSubHeaderLabel:a1[5]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setFooterLabel:a1[6]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setScrollView:a1[7]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setErrorCapsule:a1[8]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setErrorCapsuleContainer:a1[9]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setPasscodeFieldVC:a1[10]];

  return v2;
}

- (void)setupNavigationItem
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    navigationItem = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    config = [(LAPSPasscodeViewControllerBase *)self config];
    title = [config title];
    [navigationItem setTitle:title];
  }

  navigationItem2 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  [navigationItem2 setHidesBackButton:1 animated:0];

  _shouldShowNextButton = [(LAPSPasscodeViewController *)self _shouldShowNextButton];
  navigationItem3 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  v9 = navigationItem3;
  if (_shouldShowNextButton)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke;
    v18[3] = &unk_278A653E0;
    v18[4] = self;
    v10 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke(v18);
    [v9 setLeftBarButtonItem:v10];

    navigationItem4 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2;
    v17[3] = &unk_278A653E0;
    v17[4] = self;
    v12 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2(v17);
    [navigationItem4 setRightBarButtonItem:v12];

    navigationItem5 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    rightBarButtonItem = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem setEnabled:self->_isNextButtonEnabled];
  }

  else
  {
    [navigationItem3 setLeftBarButtonItem:0];

    navigationItem5 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3;
    v16[3] = &unk_278A653E0;
    v16[4] = self;
    v15 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3(v16);
    [navigationItem5 setRightBarButtonItem:v15];
  }
}

id __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__handleCancel_];

  return v1;
}

id __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  if (v2)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v5 = [v3 initWithImage:v4 menu:0];

    [v5 setStyle:2];
    [v5 setTarget:*(a1 + 32)];
    [v5 setAction:sel__handleNext_];
  }

  else
  {
    v6 = [*(a1 + 32) config];
    v7 = [v6 nextButton];
    v5 = [v3 initWithTitle:v7 style:2 target:*(a1 + 32) action:sel__handleNext_];
  }

  return v5;
}

id __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__handleCancel_];

  return v1;
}

- (void)updateLayoutAfterPasscodeLengthChangeIfNeeded:(int64_t)needed
{
  passcodeType = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  self->_isNextButtonEnabled = [passcodeType allowsLength:needed];

  [(LAPSPasscodeViewController *)self setupNavigationItem];
}

- (void)setErrorMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_errorCapsuleContainer);
  isHidden = [WeakRetained isHidden];

  v8.receiver = self;
  v8.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v8 setErrorMessage:messageCopy];

  v7 = objc_loadWeakRetained(&self->_errorCapsuleContainer);
  LODWORD(WeakRetained) = [v7 isHidden];

  if (isHidden != WeakRetained)
  {
    [(LAPSPasscodeViewController *)self _scrollToPasscodeField];
  }
}

- (void)_showPasscodeOptions:(id)options
{
  if (_UISolariumEnabled())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v6 = 0;
  }

  if (_UISolariumEnabled())
  {
    v7 = 0;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v7 = (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_optionsButton);
  [(LAPSPasscodeViewControllerBase *)self showPasscodeOptionsSourceWithView:WeakRetained presentationStyle:v6 shouldResignFirstResponder:v7];
}

- (BOOL)_shouldShowNextButton
{
  passcodeType = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v3 = [passcodeType length] == -1;

  return v3;
}

- (BOOL)_shouldUseStandardKeyboardGuide
{
  mEMORY[0x277D24068] = [MEMORY[0x277D24068] sharedInstance];
  featureFlagPasscodeServicesUseKeyboardGuideEnabled = [mEMORY[0x277D24068] featureFlagPasscodeServicesUseKeyboardGuideEnabled];

  if (!featureFlagPasscodeServicesUseKeyboardGuideEnabled)
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 1;
  }

  mEMORY[0x277D24068]2 = [MEMORY[0x277D24068] sharedInstance];
  featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled = [mEMORY[0x277D24068]2 featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled];

  if (featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled)
  {
    return 1;
  }

  v10 = [objc_alloc(MEMORY[0x277D24080]) initWithUserId:getuid()];
  v8 = [v10 state] == 5;

  return v8;
}

- (void)_scrollToPasscodeField
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeFieldVC);
  view = [WeakRetained view];
  [(LAPSPasscodeViewController *)self _scrollTo:view];
}

- (void)_scrollTo:(id)to
{
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v6 = [toCopy isDescendantOfView:WeakRetained];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_scrollView);
    [v7 contentSize];
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_scrollView);
    [v10 bounds];
    v12 = v11;

    if (v9 > v12)
    {
      v13 = objc_loadWeakRetained(&self->_scrollView);
      subviews = [v13 subviews];
      firstObject = [subviews firstObject];

      if (firstObject)
      {
        v16 = objc_loadWeakRetained(&self->_scrollView);
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __40__LAPSPasscodeViewController__scrollTo___block_invoke;
        v21 = &unk_278A65408;
        selfCopy = self;
        v23 = firstObject;
        v17 = __40__LAPSPasscodeViewController__scrollTo___block_invoke(&v18);
        [v16 setContentOffset:1 animated:{0.0, v17, v18, v19}];
      }
    }
  }
}

double __40__LAPSPasscodeViewController__scrollTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));
  v3 = [WeakRetained view];
  v4 = objc_loadWeakRetained((*(a1 + 32) + 1088));
  v5 = [v4 view];
  [v5 bounds];
  [v3 convertRect:*(a1 + 40) toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained((*(a1 + 32) + 1080));
  [v14 bounds];
  v16 = v15;

  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v17 = CGRectGetMidY(v23) + v16 * -0.5;
  v18 = objc_loadWeakRetained((*(a1 + 32) + 1080));
  [v18 contentSize];
  v20 = v19 - v16;

  v21 = fmax(v20, 0.0);
  if (v17 < v21)
  {
    v21 = v17;
  }

  return fmax(v21, 0.0);
}

- (double)_bodyStackHorizontalPadding
{
  v2 = _UISolariumEnabled();
  result = 27.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (NSDirectionalEdgeInsets)_mainStackInsets
{
  v2 = 20.0;
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)_mainStackSpacing
{
  isAccessibilityTextEnabled = [(LAPSPasscodeViewControllerBase *)self isAccessibilityTextEnabled];
  result = 20.0;
  if (isAccessibilityTextEnabled)
  {
    return 10.0;
  }

  return result;
}

- (double)_widthMultiplier
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 1.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = _UISolariumEnabled();
    result = 0.85;
    if (v5)
    {
      return 0.9;
    }
  }

  return result;
}

@end