@interface PHCallParticipantsView
- (BOOL)_statusLabelStringWillFit:(id)fit;
- (BOOL)isCallRinging;
- (BOOL)isKnownCaller;
- (BOOL)participantLabelShouldShowLargeAvatar;
- (BOOL)shouldIgnoreUpdates;
- (BOOL)shouldShowParticipantLabel;
- (PHCallParticipantsView)initWithCallDisplayStyleManager:(id)manager;
- (PHCallParticipantsViewDelegate)delegate;
- (UILayoutGuide)leadingSideLayoutGuide;
- (UILayoutGuide)trailingSideLayoutGuide;
- (double)multipleCallLabelBaselineOffset;
- (id)compactLabelTextForParticipantLabel:(id)label;
- (id)customFontForParticipantLabel;
- (id)identificationCategoryDisplayString:(int64_t)string;
- (unint64_t)indexForParticipantLabel:(id)label;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callLabelDetailsGestureRecognizerTappedForLabel:(id)label;
- (void)callLabelInfoLabelWasTappedForLabel:(id)label;
- (void)dealloc;
- (void)fieldModeButtonTapped:(id)tapped;
- (void)gameControllerDidChangeContext;
- (void)participantLabelView:(id)view didPerformActionType:(int64_t)type;
- (void)participantLabelWasTapped:(id)tapped;
- (void)setAllowsFieldModeSendButton:(BOOL)button;
- (void)setBannerAudioRouteButtonSelected:(BOOL)selected;
- (void)setBannerButtonsState:(unint64_t)state;
- (void)setLeadingSideLayoutGuide:(id)guide;
- (void)setShouldShowSingleDurationLabel:(BOOL)label;
- (void)setTextColor:(id)color;
- (void)setTrailingSideLayoutGuide:(id)guide;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)showSendButtonGestureRecognizer:(id)recognizer;
- (void)traitCollectionDidChange:(id)change;
- (void)updateParticipantAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)updateParticipantsAnimated:(BOOL)animated;
- (void)updateSingleDurationTimerLabelText;
- (void)updateSubviewWithLayout:(int64_t)layout forContact:(id)contact;
@end

@implementation PHCallParticipantsView

- (BOOL)shouldIgnoreUpdates
{
  delegate = [(PHCallParticipantsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHCallParticipantsView *)self delegate];
  v6 = [delegate2 shouldIgnoreUpdatesInParticipantsView:self];

  return v6;
}

- (PHCallParticipantsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)participantLabelShouldShowLargeAvatar
{
  delegate = [(PHCallParticipantsView *)self delegate];
  shouldShowLargeAvatar = [delegate shouldShowLargeAvatar];

  return shouldShowLargeAvatar;
}

- (PHCallParticipantsView)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PHCallParticipantsView;
  v6 = [(PHCallParticipantsView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
    v8 = objc_opt_new();
    labelDescriptorFactory = v7->_labelDescriptorFactory;
    v7->_labelDescriptorFactory = v8;

    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:"showSendButtonGestureRecognizer:"];
    [v10 setNumberOfTapsRequired:4];
    [(PHCallParticipantsView *)v7 addGestureRecognizer:v10];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v7 selector:"_metadataCacheDidFinishUpdating:" name:TUMetadataCacheDidFinishUpdatingNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"_isEmergencyCallChanged:" name:TUCallCenterIsEmergencyChangedNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"_lockScreenStatusChanged:" name:PHLockScreenStatusChangedNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCallParticipantsView;
  [(PHCallParticipantsView *)&v4 dealloc];
}

- (double)multipleCallLabelBaselineOffset
{
  callDisplayStyleManager = [(PHCallParticipantsView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    return 60.0;
  }

  callDisplayStyleManager2 = [(PHCallParticipantsView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager2 usesLargeFormatUI];

  if (usesLargeFormatUI)
  {
    return 40.0;
  }

  if (qword_1003B0CA8 != -1)
  {
    sub_100254650();
  }

  return *&qword_1003B0CA0;
}

- (void)updateSubviewWithLayout:(int64_t)layout forContact:(id)contact
{
  contactCopy = contact;
  contact = [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView contact];
  if (!contact)
  {
    delegate = [(PHCallParticipantsView *)self delegate];
    v8 = [delegate shouldShowParticipantImageAtIndex:0 inParticipantsView:self];

    if (!v8)
    {
      goto LABEL_5;
    }

    contact = [(PHCallParticipantsView *)self delegate];
    v9 = [contact contactForParticipantAtIndex:0 inParticipantsView:self];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setContact:v9];
  }

LABEL_5:
  [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView updateSubviewWithLayout:layout contact:contactCopy];
}

- (void)updateParticipantsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  shouldIgnoreUpdates = [(PHCallParticipantsView *)self shouldIgnoreUpdates];
  if (shouldIgnoreUpdates)
  {
    v6 = sub_100004F84(shouldIgnoreUpdates);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participants because updates to the call participants view are disabled", buf, 2u);
    }

    return;
  }

  delegate = [(PHCallParticipantsView *)self delegate];
  v8 = [delegate numberOfParticipantsForParticipantsView:self];

  delegate2 = [(PHCallParticipantsView *)self delegate];
  v10 = [delegate2 overrideStringForParticipantsView:self];

  if (v10)
  {
    singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
    [singleCallLabelView removeFromSuperview];

    topMultipleCallLabelView = [(PHCallParticipantsView *)self topMultipleCallLabelView];
    [topMultipleCallLabelView removeFromSuperview];

    bottomMultipleCallLabelView = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [bottomMultipleCallLabelView removeFromSuperview];

    singleCallLabelView2 = [(PHCallParticipantsView *)self singleCallLabelView];
    posterNameViewModel = [singleCallLabelView2 posterNameViewModel];
    [posterNameViewModel updateStatus:&stru_100361FD0];

    [(PHCallParticipantsView *)self setSingleCallLabelView:0];
    [(PHCallParticipantsView *)self setTopMultipleCallLabelView:0];
    [(PHCallParticipantsView *)self setBottomMultipleCallLabelView:0];
    [(PHCallParticipantsView *)self setShouldShowSingleDurationLabel:0];
    if (!self->_nameOverrideLabel)
    {
      v17 = objc_alloc_init(UILabel);
      nameOverrideLabel = self->_nameOverrideLabel;
      self->_nameOverrideLabel = v17;

      [(UILabel *)self->_nameOverrideLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      callDisplayStyleManager = [(PHCallParticipantsView *)self callDisplayStyleManager];
      callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
      callDisplayStyleManager2 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v22 = +[PHUIConfiguration singleCallParticipantLabelFontForCallDisplayStyle:usesLargeFormatUI:](PHUIConfiguration, "singleCallParticipantLabelFontForCallDisplayStyle:usesLargeFormatUI:", callDisplayStyle, [callDisplayStyleManager2 usesLargeFormatUI]);
      [(UILabel *)self->_nameOverrideLabel setFont:v22];

      v23 = [UIColor colorWithWhite:1.0 alpha:1.0];
      [(UILabel *)self->_nameOverrideLabel setTextColor:v23];

      [(UILabel *)self->_nameOverrideLabel setTextAlignment:1];
      [(UILabel *)self->_nameOverrideLabel setLineBreakMode:3];
      [(UILabel *)self->_nameOverrideLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_nameOverrideLabel setMinimumScaleFactor:0.699999988];
      [(PHCallParticipantsView *)self addSubview:self->_nameOverrideLabel];
      leadingAnchor = [(UILabel *)self->_nameOverrideLabel leadingAnchor];
      leadingAnchor2 = [(PHCallParticipantsView *)self leadingAnchor];
      v167 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
      v200[0] = v167;
      trailingAnchor = [(UILabel *)self->_nameOverrideLabel trailingAnchor];
      trailingAnchor2 = [(PHCallParticipantsView *)self trailingAnchor];
      v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
      v200[1] = v24;
      centerYAnchor = [(UILabel *)self->_nameOverrideLabel centerYAnchor];
      centerYAnchor2 = [(PHCallParticipantsView *)self centerYAnchor];
      v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v200[2] = v27;
      bottomAnchor = [(UILabel *)self->_nameOverrideLabel bottomAnchor];
      bottomAnchor2 = [(PHCallParticipantsView *)self bottomAnchor];
      v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v200[3] = v30;
      v31 = [NSArray arrayWithObjects:v200 count:4];
      [NSLayoutConstraint activateConstraints:v31];
    }

    delegate3 = [(PHCallParticipantsView *)self delegate];
    v33 = [delegate3 overrideStringForParticipantsView:self];
    [(UILabel *)self->_nameOverrideLabel setText:v33];

    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v66 = sub_100004F84(v11);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Configuring the call participants view for multiple participants", buf, 2u);
    }

    callDisplayStyleManager3 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager3 callDisplayStyle];

    if (!callDisplayStyle2)
    {
      v69 = +[UIApplication sharedApplication];
      delegate4 = [v69 delegate];
      currentInCallScene = [delegate4 currentInCallScene];
      [currentInCallScene requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
    }

    callDisplayStyleManager4 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    usesLargeFormatUI = [callDisplayStyleManager4 usesLargeFormatUI];

    if (usesLargeFormatUI)
    {
      multiCallLabelLayoutGuide = [(PHCallParticipantsView *)self multiCallLabelLayoutGuide];

      if (!multiCallLabelLayoutGuide)
      {
        v75 = objc_alloc_init(UILayoutGuide);
        [(PHCallParticipantsView *)self setMultiCallLabelLayoutGuide:v75];
      }

      multiCallLabelLayoutGuide2 = [(PHCallParticipantsView *)self multiCallLabelLayoutGuide];
      [(PHCallParticipantsView *)self addLayoutGuide:multiCallLabelLayoutGuide2];

      v77 = 0;
    }

    else
    {
      v77 = objc_alloc_init(UILayoutGuide);
      [(PHCallParticipantsView *)self addLayoutGuide:v77];
    }

    centerYAnchor3 = [v77 centerYAnchor];
    centerYAnchor4 = [(PHCallParticipantsView *)self centerYAnchor];
    v94 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v94 setActive:1];

    if (!self->_bottomMultipleCallLabelView)
    {
      v173 = v77;
      v95 = [PHMultipleCallParticipantLabelView alloc];
      callDisplayStyleManager5 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v97 = [(PHMultipleCallParticipantLabelView *)v95 initWithCallDisplayStyleManager:callDisplayStyleManager5];
      bottomMultipleCallLabelView = self->_bottomMultipleCallLabelView;
      self->_bottomMultipleCallLabelView = v97;

      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_Bottom"];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setOverrideUserInterfaceStyle:2];
      [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView setDelegate:self];
      [(PHCallParticipantsView *)self addSubview:self->_bottomMultipleCallLabelView];
      leadingAnchor3 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView leadingAnchor];
      leadingAnchor4 = [(PHCallParticipantsView *)self leadingAnchor];
      v101 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v197[0] = v101;
      trailingAnchor3 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView trailingAnchor];
      trailingAnchor4 = [(PHCallParticipantsView *)self trailingAnchor];
      v104 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v197[1] = v104;
      v105 = [NSArray arrayWithObjects:v197 count:2];
      v170 = [v105 mutableCopy];

      callDisplayStyleManager6 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      callDisplayStyle3 = [callDisplayStyleManager6 callDisplayStyle];

      if (callDisplayStyle3 == 1)
      {
        v77 = v173;
        bottomAnchor3 = [v173 bottomAnchor];
        participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        bottomAnchor4 = [participantMarqueeLabel bottomAnchor];
        v111 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v112 = v170;
        [v170 addObject:v111];
      }

      else
      {
        participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        firstBaselineAnchor = [participantMarqueeLabel2 firstBaselineAnchor];
        bottomAnchor5 = [(PHCallParticipantsView *)self bottomAnchor];
        v117 = [firstBaselineAnchor constraintLessThanOrEqualToAnchor:bottomAnchor5];
        v196 = v117;
        v118 = [NSArray arrayWithObjects:&v196 count:1];
        v112 = v170;
        [v170 addObjectsFromArray:v118];

        callDisplayStyleManager7 = [(PHCallParticipantsView *)self callDisplayStyleManager];
        LODWORD(bottomAnchor5) = [callDisplayStyleManager7 usesLargeFormatUI];

        bottomAnchor3 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView bottomAnchor];
        participantMarqueeLabel = [(PHCallParticipantsView *)self bottomAnchor];
        if (bottomAnchor5)
        {
          bottomAnchor4 = [bottomAnchor3 constraintEqualToAnchor:participantMarqueeLabel];
          v195 = bottomAnchor4;
          v120 = &v195;
        }

        else
        {
          bottomAnchor4 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:participantMarqueeLabel];
          v194 = bottomAnchor4;
          v120 = &v194;
        }

        v111 = [NSArray arrayWithObjects:v120 count:1];
        [v170 addObjectsFromArray:v111];
        v77 = v173;
      }

      [NSLayoutConstraint activateConstraints:v112];
      v122 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"participantLabelWasTapped:"];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView addGestureRecognizer:v122];
    }

    if (!self->_topMultipleCallLabelView)
    {
      v174 = v77;
      v123 = [PHMultipleCallParticipantLabelView alloc];
      callDisplayStyleManager8 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v125 = [(PHMultipleCallParticipantLabelView *)v123 initWithCallDisplayStyleManager:callDisplayStyleManager8];
      topMultipleCallLabelView = self->_topMultipleCallLabelView;
      self->_topMultipleCallLabelView = v125;

      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_Top"];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setOverrideUserInterfaceStyle:2];
      [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView setDelegate:self];
      [(PHCallParticipantsView *)self addSubview:self->_topMultipleCallLabelView];
      leadingAnchor5 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView leadingAnchor];
      leadingAnchor6 = [(PHCallParticipantsView *)self leadingAnchor];
      v129 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v193[0] = v129;
      trailingAnchor5 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView trailingAnchor];
      trailingAnchor6 = [(PHCallParticipantsView *)self trailingAnchor];
      v132 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v193[1] = v132;
      v133 = [NSArray arrayWithObjects:v193 count:2];
      v171 = [v133 mutableCopy];

      callDisplayStyleManager9 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      callDisplayStyle4 = [callDisplayStyleManager9 callDisplayStyle];

      if (callDisplayStyle4 == 1)
      {
        v77 = v174;
        topAnchor = [v174 topAnchor];
        participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        topAnchor2 = [participantMarqueeLabel3 topAnchor];
        v164 = [topAnchor constraintEqualToAnchor:?];
        v192[0] = v164;
        participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        bottomAnchor6 = [participantMarqueeLabel4 bottomAnchor];
        participantMarqueeLabel5 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        topAnchor3 = [participantMarqueeLabel5 topAnchor];
        v168 = bottomAnchor6;
        bottomAnchor7 = [bottomAnchor6 constraintEqualToAnchor:topAnchor3];
        v192[1] = bottomAnchor7;
        participantMarqueeLabel7 = [NSArray arrayWithObjects:v192 count:2];
        [v171 addObjectsFromArray:participantMarqueeLabel7];
      }

      else
      {
        participantMarqueeLabel6 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        firstBaselineAnchor2 = [participantMarqueeLabel6 firstBaselineAnchor];
        topAnchor2 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        firstBaselineAnchor3 = [topAnchor2 firstBaselineAnchor];
        [(PHCallParticipantsView *)self multipleCallLabelBaselineOffset];
        v164 = firstBaselineAnchor3;
        participantMarqueeLabel4 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:-v144];
        v191[0] = participantMarqueeLabel4;
        topAnchor4 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView topAnchor];
        participantMarqueeLabel5 = [(PHCallParticipantsView *)self topAnchor];
        v168 = topAnchor4;
        topAnchor3 = [topAnchor4 constraintEqualToAnchor:participantMarqueeLabel5];
        v191[1] = topAnchor3;
        bottomAnchor7 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView bottomAnchor];
        participantMarqueeLabel7 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        lastBaselineAnchor = [participantMarqueeLabel7 lastBaselineAnchor];
        v147 = [bottomAnchor7 constraintEqualToAnchor:lastBaselineAnchor];
        v191[2] = v147;
        v148 = [NSArray arrayWithObjects:v191 count:3];
        [v171 addObjectsFromArray:v148];

        participantMarqueeLabel3 = firstBaselineAnchor2;
        topAnchor = participantMarqueeLabel6;
        v77 = v174;
      }

      [NSLayoutConstraint activateConstraints:v171];
      v149 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"participantLabelWasTapped:"];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView addGestureRecognizer:v149];
    }

    [(PHCallParticipantsView *)self updateParticipantAtIndex:0 animated:animatedCopy];
    [(PHCallParticipantsView *)self updateParticipantAtIndex:1 animated:animatedCopy];
    singleCallLabelView3 = [(PHCallParticipantsView *)self singleCallLabelView];
    if (singleCallLabelView3)
    {
    }

    else
    {
      nameOverrideLabel = [(PHCallParticipantsView *)self nameOverrideLabel];

      if (!nameOverrideLabel)
      {
LABEL_67:
        delegate5 = [(PHCallParticipantsView *)self delegate];
        -[PHCallParticipantsView setShouldShowSingleDurationLabel:](self, "setShouldShowSingleDurationLabel:", [delegate5 shouldShowSingleDurationLabelInParticipantsView:self]);

        goto LABEL_9;
      }
    }

    if (animatedCopy)
    {
      topMultipleCallLabelView2 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
      [topMultipleCallLabelView2 setAlpha:0.0];

      bottomMultipleCallLabelView2 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
      [bottomMultipleCallLabelView2 setAlpha:0.0];

      singleCallLabelView4 = [(PHCallParticipantsView *)self singleCallLabelView];
      nameOverrideLabel2 = [(PHCallParticipantsView *)self nameOverrideLabel];
      v178[0] = _NSConcreteStackBlock;
      v178[1] = 3221225472;
      v178[2] = sub_100060C48;
      v178[3] = &unk_100357318;
      v179 = singleCallLabelView4;
      v180 = nameOverrideLabel2;
      selfCopy = self;
      v175[0] = _NSConcreteStackBlock;
      v175[1] = 3221225472;
      v175[2] = sub_100060CD0;
      v175[3] = &unk_100356D10;
      v176 = v179;
      v177 = v180;
      v156 = v180;
      nameOverrideLabel3 = v179;
      [UIView animateWithDuration:v178 animations:v175 completion:0.5];
    }

    else
    {
      singleCallLabelView5 = [(PHCallParticipantsView *)self singleCallLabelView];
      [singleCallLabelView5 removeFromSuperview];

      nameOverrideLabel3 = [(PHCallParticipantsView *)self nameOverrideLabel];
      [nameOverrideLabel3 removeFromSuperview];
    }

    [(PHCallParticipantsView *)self setSingleCallLabelView:0];
    [(PHCallParticipantsView *)self setNameOverrideLabel:0];
    goto LABEL_67;
  }

  if (v8 != 1)
  {
    goto LABEL_9;
  }

  v35 = sub_100004F84(v11);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Configuring the call participants view for a single participant", buf, 2u);
  }

  singleCallLabelView6 = [(PHCallParticipantsView *)self singleCallLabelView];

  if (!singleCallLabelView6)
  {
    v37 = [PHSingleCallParticipantLabelView alloc];
    callDisplayStyleManager10 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    v39 = [(PHSingleCallParticipantLabelView *)v37 initWithCallDisplayStyleManager:callDisplayStyleManager10 delegate:self];
    singleCallLabelView = self->_singleCallLabelView;
    self->_singleCallLabelView = v39;

    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setPreservesSuperviewLayoutMargins:1];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = sub_100004F84([(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setOverrideUserInterfaceStyle:2]);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = self->_singleCallLabelView;
      *buf = 138412290;
      v199 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Adding a new single-participant view to the view hierarchy: %@", buf, 0xCu);
    }

    [(PHCallParticipantsView *)self addSubview:self->_singleCallLabelView];
    leadingSideLayoutGuide = [(PHCallParticipantsView *)self leadingSideLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setLeadingSideLayoutGuide:leadingSideLayoutGuide];

    trailingSideLayoutGuide = [(PHCallParticipantsView *)self trailingSideLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTrailingSideLayoutGuide:trailingSideLayoutGuide];

    v45 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v45];

    v46 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v46];

    v47 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:4 relatedBy:-1 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v47];

    LODWORD(v48) = 1132068864;
    v49 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0 priority:v48];
    [(PHCallParticipantsView *)self addConstraint:v49];

    v50 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v50];
  }

  delegate6 = [(PHCallParticipantsView *)self delegate];
  v52 = objc_opt_respondsToSelector();

  if (v52)
  {
    v53 = self->_singleCallLabelView;
    delegate7 = [(PHCallParticipantsView *)self delegate];
    v55 = [delegate7 colorForStatusLabelForParticipantAtIndex:0 inParticipantsView:self];
    [(PHSingleCallParticipantLabelView *)v53 setStatusLabelTextColor:v55];
  }

  delegate8 = [(PHCallParticipantsView *)self delegate];
  v57 = objc_opt_respondsToSelector();

  if (v57)
  {
    v58 = self->_singleCallLabelView;
    delegate9 = [(PHCallParticipantsView *)self delegate];
    v60 = [delegate9 colorForParticipantLabelView:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v58 setParticipantMarqueeLabelTextColor:v60];
  }

  delegate10 = [(PHCallParticipantsView *)self delegate];
  v62 = objc_opt_respondsToSelector();

  v63 = self->_singleCallLabelView;
  if (v62)
  {
    delegate11 = [(PHCallParticipantsView *)self delegate];
    v65 = [delegate11 fontForParticipantLabelView:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v63 setParticipantMarqueeLabelFont:v65];
  }

  else
  {
    delegate11 = [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView updatedParticipantMarqueeLabelFont];
    [(PHSingleCallParticipantLabelView *)v63 setParticipantMarqueeLabelFont:delegate11];
  }

  [(PHCallParticipantsView *)self updateParticipantAtIndex:0 animated:animatedCopy];
  delegate12 = [(PHCallParticipantsView *)self delegate];
  v79 = objc_opt_respondsToSelector();

  if (v79)
  {
    v80 = self->_singleCallLabelView;
    delegate13 = [(PHCallParticipantsView *)self delegate];
    v82 = [delegate13 fontForParticipantLabelViewStatusLabel:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v80 setStatusLabelTextFont:v82];
  }

  topMultipleCallLabelView3 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
  if (topMultipleCallLabelView3 || ([(PHCallParticipantsView *)self bottomMultipleCallLabelView], (topMultipleCallLabelView3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    nameOverrideLabel4 = [(PHCallParticipantsView *)self nameOverrideLabel];

    if (!nameOverrideLabel4)
    {
      goto LABEL_9;
    }
  }

  topMultipleCallLabelView4 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
  v85 = topMultipleCallLabelView4;
  if (animatedCopy)
  {
    bottomMultipleCallLabelView3 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    nameOverrideLabel5 = [(PHCallParticipantsView *)self nameOverrideLabel];
    singleCallLabelView7 = [(PHCallParticipantsView *)self singleCallLabelView];
    [singleCallLabelView7 setAlpha:0.0];

    v186[0] = _NSConcreteStackBlock;
    v186[1] = 3221225472;
    v186[2] = sub_100060B8C;
    v186[3] = &unk_1003572C8;
    v187 = v85;
    v188 = bottomMultipleCallLabelView3;
    v189 = nameOverrideLabel5;
    selfCopy2 = self;
    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_100060C04;
    v182[3] = &unk_1003572F0;
    v183 = v187;
    v184 = v188;
    v185 = v189;
    v89 = v189;
    v90 = v188;
    nameOverrideLabel6 = v187;
    [UIView animateWithDuration:v186 animations:v182 completion:0.5];
  }

  else
  {
    [topMultipleCallLabelView4 removeFromSuperview];

    bottomMultipleCallLabelView4 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [bottomMultipleCallLabelView4 removeFromSuperview];

    nameOverrideLabel6 = [(PHCallParticipantsView *)self nameOverrideLabel];
    [nameOverrideLabel6 removeFromSuperview];
  }

  [(PHCallParticipantsView *)self setShouldShowSingleDurationLabel:0];
  [(PHCallParticipantsView *)self setTopMultipleCallLabelView:0];
  [(PHCallParticipantsView *)self setBottomMultipleCallLabelView:0];
  [(PHCallParticipantsView *)self setNameOverrideLabel:0];
LABEL_9:
  singleDurationTimerLabel = [(PHCallParticipantsView *)self singleDurationTimerLabel];

  if (singleDurationTimerLabel)
  {
    [(PHCallParticipantsView *)self updateSingleDurationTimerLabelText];
  }
}

- (void)gameControllerDidChangeContext
{
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  [singleCallLabelView gameControllerDidChangeContext];
}

- (void)updateParticipantAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  shouldIgnoreUpdates = [(PHCallParticipantsView *)self shouldIgnoreUpdates];
  if (!shouldIgnoreUpdates)
  {
    delegate = [(PHCallParticipantsView *)self delegate];
    v10 = [delegate numberOfParticipantsForParticipantsView:self];

    delegate2 = [(PHCallParticipantsView *)self delegate];
    v12 = [delegate2 callForParticipantAtIndex:index inParticipantsView:self];

    objc_storeStrong(&self->_currentCall, v12);
    if (v10 == 2)
    {
      v37 = &OBJC_IVAR___PHCallParticipantsView__bottomMultipleCallLabelView;
      if (!index)
      {
        v37 = &OBJC_IVAR___PHCallParticipantsView__topMultipleCallLabelView;
      }

      p_super = *(&self->super.super.super.isa + *v37);
      previousURL = self->_previousURL;
      self->_previousURL = 0;

      if (p_super)
      {
LABEL_7:
        delegate3 = [(PHCallParticipantsView *)self delegate];
        v15 = [delegate3 nameForParticipantAtIndex:index inParticipantsView:self];

        displayContext = [v12 displayContext];

        if (displayContext)
        {
          displayContext2 = [v12 displayContext];
          callDirectoryLabel = [displayContext2 callDirectoryLabel];
          if (callDirectoryLabel)
          {
            v19 = callDirectoryLabel;
            isOutgoing = [v12 isOutgoing];

            if (isOutgoing)
            {
              callDirectoryLabel2 = [displayContext2 callDirectoryLabel];

              v15 = callDirectoryLabel2;
            }
          }
        }

        delegate4 = [(PHCallParticipantsView *)self delegate];
        v23 = [delegate4 labelForParticipantAtIndex:index inParticipantsView:self allowsDuration:1];

        delegate5 = [(PHCallParticipantsView *)self delegate];
        v25 = [delegate5 supplementalParticipantLabelFormatStringAtIndex:index inParticipantsView:self];

        v26 = +[CNKFeatures sharedInstance];
        isHeroImageEnabled = [v26 isHeroImageEnabled];

        objc_opt_class();
        v109 = v25;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([v25 length])
          {
            [NSString stringWithFormat:v25, v15];
            v15 = v39 = v15;
          }

          else
          {
            delegate6 = [(PHCallParticipantsView *)self delegate];
            v43 = objc_opt_respondsToSelector();

            if ((v43 & 1) == 0)
            {
              goto LABEL_53;
            }

            delegate7 = [(PHCallParticipantsView *)self delegate];
            v39 = [delegate7 localizedSenderIdentityForParticipantAtIndex:index inParticipantsView:self];

            if ([v39 length])
            {
              [v23 setLocalizedSenderIdentity:v39];
            }
          }

LABEL_53:
          [p_super setParticipantName:v15];
          [p_super setLabelDescriptor:v23];
          goto LABEL_54;
        }

        delegate8 = [(PHCallParticipantsView *)self delegate];
        v29 = objc_opt_respondsToSelector();

        if (v29)
        {
          delegate9 = [(PHCallParticipantsView *)self delegate];
          v31 = [delegate9 iconInParticipantsView:self];
          [p_super setIcon:v31];
        }

        delegate10 = [(PHCallParticipantsView *)self delegate];
        v33 = objc_opt_respondsToSelector();

        if (v33)
        {
          delegate11 = [(PHCallParticipantsView *)self delegate];
          v35 = [delegate11 linkNameForCall:v12];

          isTelephonyProvider = v35 != 0;
          if (v35)
          {
            v36 = v35;

            v15 = v36;
          }
        }

        else
        {
          isTelephonyProvider = 0;
        }

        v40 = p_super;
        v108 = v40;
        if (![v12 isIncoming])
        {
LABEL_39:
          if ((isHeroImageEnabled & 1) != 0 || (-[PHCallParticipantsView callDisplayStyleManager](self, "callDisplayStyleManager"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 callDisplayStyle], v52, v53 == 3))
          {
            delegate12 = [(PHCallParticipantsView *)self delegate];
            v55 = [delegate12 contactForParticipantAtIndex:0 inParticipantsView:self];
            [v108 setContact:v55];
          }

          v51 = v109;
          if (!v109)
          {
LABEL_47:
            delegate13 = [(PHCallParticipantsView *)self delegate];
            v62 = objc_opt_respondsToSelector();

            if (v62)
            {
              delegate14 = [(PHCallParticipantsView *)self delegate];
              v64 = [delegate14 localizedSenderIdentityForParticipantAtIndex:index inParticipantsView:self];

              if ([v64 length])
              {
                [v23 setLocalizedSenderIdentity:v64];
              }
            }

            if (isTelephonyProvider)
            {
              strings = [v23 strings];
              firstObject = [strings firstObject];
              [v108 setParticipantName:firstObject];

              labelDescriptorFactory = self->_labelDescriptorFactory;
              secondaryString = [v23 secondaryString];
              v69 = -[CNKCallParticipantLabelDescriptorFactory makeLabelWithString:secondaryString:layoutState:](labelDescriptorFactory, "makeLabelWithString:secondaryString:layoutState:", v15, secondaryString, [v23 layoutState]);

              sourceString = [v23 sourceString];
              [v69 setSourceString:sourceString];

              localizedSenderIdentity = [v23 localizedSenderIdentity];
              [v69 setLocalizedSenderIdentity:localizedSenderIdentity];

              [v108 setLabelDescriptor:v69];
LABEL_54:
              delegate15 = [(PHCallParticipantsView *)self delegate];
              -[NSObject setActivityState:animated:](p_super, "setActivityState:animated:", [delegate15 activityStateForParticipantAtIndex:index inParticipantsView:self], animatedCopy);

              delegate16 = [(PHCallParticipantsView *)self delegate];
              v74 = [delegate16 shouldShowInfoButtonForParticipantAtIndex:index inParticipantsView:self];

              [p_super setShowsConferenceParticipantsButton:v74];
              if (v74)
              {
                [p_super setShowsCallDetailsViewButton:0];
              }

              else
              {
                delegate17 = [(PHCallParticipantsView *)self delegate];
                -[NSObject setShowsCallDetailsViewButton:](p_super, "setShowsCallDetailsViewButton:", [delegate17 shouldShowCallDetailsViewButton]);
              }

LABEL_58:
              goto LABEL_59;
            }

            goto LABEL_53;
          }

LABEL_43:
          if (isTelephonyProvider)
          {
            [NSString stringWithFormat:v51, v15];
            v15 = v56 = v15;
          }

          else
          {
            [v23 strings];
            v105 = animatedCopy;
            v57 = v23;
            v59 = v58 = v51;
            firstObject2 = [v59 firstObject];
            v56 = [NSString stringWithFormat:v58, firstObject2];

            v23 = [(CNKCallParticipantLabelDescriptorFactory *)self->_labelDescriptorFactory makeLabelWithString:v56];

            animatedCopy = v105;
          }

          goto LABEL_47;
        }

        contact = [v40 contact];
        if (contact)
        {

          goto LABEL_39;
        }

        delegate18 = [(PHCallParticipantsView *)self delegate];
        v46 = [delegate18 shouldShowParticipantImageAtIndex:0 inParticipantsView:self];

        if (!v46)
        {
          goto LABEL_39;
        }

        delegate19 = [(PHCallParticipantsView *)self delegate];
        suggestedDisplayName = [delegate19 contactForParticipantAtIndex:0 inParticipantsView:self];
        [v108 setContact:suggestedDisplayName];

        contact2 = [v108 contact];
        if (contact2)
        {
          suggestedDisplayName = contact2;
          contact3 = [v108 contact];
          v51 = v109;
          if ([contact3 imageDataAvailable])
          {

            goto LABEL_97;
          }

          if (!v12)
          {
LABEL_97:
            [v108 updateLabelsOrderAndText];
            if (!v51)
            {
              goto LABEL_47;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v51 = v109;
          if (!v12)
          {
            goto LABEL_97;
          }
        }

        if (![v12 isScreening] || (objc_msgSend(v12, "smartHoldingSession"), v76 = objc_claimAutoreleasedReturnValue(), v76, v76))
        {
          callDirectoryName = [v12 callDirectoryName];
          if (callDirectoryName || ([v12 imageURL], (suggestedDisplayName = objc_claimAutoreleasedReturnValue()) != 0))
          {
            provider = [v12 provider];
            isTelephonyProvider = [provider isTelephonyProvider];

            if (callDirectoryName)
            {
LABEL_80:

              goto LABEL_81;
            }
          }

          else
          {
            isTelephonyProvider = 0;
          }

LABEL_79:

          goto LABEL_80;
        }

        v79 = +[CNKFeatures sharedInstance];
        if ([v79 isHeroImageEnabled])
        {
          imageURL = [v12 imageURL];
          if (imageURL)
          {
            v81 = imageURL;
            provider2 = [v12 provider];
            if ([provider2 isTelephonyProvider])
            {
              [v12 localizedLabel];
              v83 = v106 = provider2;

              if (v83)
              {
LABEL_81:
                imageURL2 = [v12 imageURL];

                v86 = &selRef_numberOfSectionsInTableView_;
                if (imageURL2)
                {
                  imageURL3 = [v12 imageURL];
                  relativePath = [imageURL3 relativePath];
                  v89 = [relativePath isEqualToString:@"/stock"];

                  v91 = sub_100004F84(v90);
                  v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT);
                  if (v89)
                  {
                    if (v92)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Attempting to display generic business logo", buf, 2u);
                    }

                    v93 = +[UIImage genericBusinessLogo];
                  }

                  else
                  {
                    if (v92)
                    {
                      imageURL4 = [v12 imageURL];
                      relativePath2 = [imageURL4 relativePath];
                      *buf = 138412290;
                      indexCopy = relativePath2;
                      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Attempting to display call imageURL: %@", buf, 0xCu);
                    }

                    v97 = [UIImage alloc];
                    imageURL5 = [v12 imageURL];
                    relativePath3 = [imageURL5 relativePath];
                    v93 = [v97 initWithContentsOfFile:relativePath3];
                  }

                  v86 = &selRef_numberOfSectionsInTableView_;
                  if (v93)
                  {
                    v100 = self->_previousURL;
                    imageURL6 = [v12 imageURL];
                    LOBYTE(v100) = [(NSURL *)v100 isEqual:imageURL6];

                    v86 = &selRef_numberOfSectionsInTableView_;
                    if ((v100 & 1) == 0)
                    {
                      -[NSObject setBusinessLogo:isPerson:](v108, "setBusinessLogo:isPerson:", v93, [v12 callDirectoryIdentityType] == 1);
                    }
                  }
                }

                else
                {
                  v94 = sub_100004F84(v85);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100254664(v94);
                  }

                  [v108 setBusinessLogo:0 isPerson:0];
                }

                v51 = v109;
                imageURL7 = [v12 imageURL];
                v103 = *(v86 + 645);
                v104 = *(&self->super.super.super.isa + v103);
                *(&self->super.super.super.isa + v103) = imageURL7;

                goto LABEL_97;
              }

              goto LABEL_77;
            }
          }
        }

LABEL_77:
        callDirectoryName = [v12 suggestedDisplayName];
        if (!callDirectoryName)
        {
          isTelephonyProvider = 0;
          goto LABEL_80;
        }

        suggestedDisplayName = [v12 suggestedDisplayName];
        isTelephonyProvider = [suggestedDisplayName length] != 0;
        goto LABEL_79;
      }
    }

    else if (v10 == 1)
    {
      v13 = self->_singleCallLabelView;
      p_super = &v13->super.super.super.super;
      if (v13)
      {
        goto LABEL_7;
      }
    }

    v15 = sub_100004F84(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participants because there's no participantLabelView", buf, 2u);
    }

    p_super = 0;
    goto LABEL_58;
  }

  p_super = sub_100004F84(shouldIgnoreUpdates);
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participant at index %lu because updates to the call participants view are disabled", buf, 0xCu);
  }

LABEL_59:
}

- (BOOL)_statusLabelStringWillFit:(id)fit
{
  fitCopy = fit;
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];

  if (singleCallLabelView)
  {
    singleCallLabelView2 = [(PHCallParticipantsView *)self singleCallLabelView];
    v7 = [singleCallLabelView2 _statusLabelStringWillFit:fitCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setLeadingSideLayoutGuide:(id)guide
{
  guideCopy = guide;
  objc_storeWeak(&self->_leadingSideLayoutGuide, guideCopy);
  singleCallLabelView = self->_singleCallLabelView;
  if (singleCallLabelView)
  {
    superview = [(PHSingleCallParticipantLabelView *)singleCallLabelView superview];

    if (superview)
    {
      [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setLeadingSideLayoutGuide:guideCopy];
    }
  }
}

- (void)setTrailingSideLayoutGuide:(id)guide
{
  guideCopy = guide;
  objc_storeWeak(&self->_trailingSideLayoutGuide, guideCopy);
  singleCallLabelView = self->_singleCallLabelView;
  if (singleCallLabelView)
  {
    superview = [(PHSingleCallParticipantLabelView *)singleCallLabelView superview];

    if (superview)
    {
      [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTrailingSideLayoutGuide:guideCopy];
    }
  }
}

- (void)setTextColor:(id)color
{
  singleCallLabelView = self->_singleCallLabelView;
  colorCopy = color;
  [(PHSingleCallParticipantLabelView *)singleCallLabelView setTextColor:colorCopy];
  [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setTextColor:colorCopy];
  [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setTextColor:colorCopy];
}

- (void)participantLabelWasTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = tappedCopy;
  if (v5)
  {
    view = [tappedCopy view];
    v8 = [(PHCallParticipantsView *)self indexForParticipantLabel:view];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      delegate2 = [(PHCallParticipantsView *)self delegate];
      [delegate2 participantTappedAtIndex:v9 inParticipantsView:self];
    }

    v6 = tappedCopy;
  }
}

- (void)setShouldShowSingleDurationLabel:(BOOL)label
{
  if (self->_shouldShowSingleDurationLabel != label)
  {
    labelCopy = label;
    topMultipleCallLabelView = [(PHCallParticipantsView *)self topMultipleCallLabelView];
    [topMultipleCallLabelView setHidesLabel:labelCopy];

    bottomMultipleCallLabelView = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [bottomMultipleCallLabelView setHidesLabel:labelCopy];

    if (labelCopy)
    {
      v7 = objc_alloc_init(UILabel);
      singleDurationTimerLabel = self->_singleDurationTimerLabel;
      self->_singleDurationTimerLabel = v7;

      v9 = +[PHUIConfiguration multipleCallStatusLabelFont];
      [(UILabel *)self->_singleDurationTimerLabel setFont:v9];

      v10 = [UIColor colorWithWhite:1.0 alpha:1.0];
      [(UILabel *)self->_singleDurationTimerLabel setTextColor:v10];

      [(UILabel *)self->_singleDurationTimerLabel setTextAlignment:2];
      [(UILabel *)self->_singleDurationTimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHCallParticipantsView *)self updateSingleDurationTimerLabelText];
      [(PHCallParticipantsView *)self addSubview:self->_singleDurationTimerLabel];
      v11 = self->_singleDurationTimerLabel;
      callDisplayStyleManager = [(PHCallParticipantsView *)self callDisplayStyleManager];
      usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];
      v14 = 0.0;
      if (!usesLargeFormatUI)
      {
        v14 = -24.0;
      }

      v15 = [NSLayoutConstraint constraintWithItem:v11 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:v14];
      [(PHCallParticipantsView *)self addConstraint:v15];

      topMultipleCallLabelView = self->_topMultipleCallLabelView;
      if (topMultipleCallLabelView)
      {
        v17 = [NSLayoutConstraint constraintWithItem:self->_singleDurationTimerLabel attribute:10 relatedBy:0 toItem:topMultipleCallLabelView attribute:4 multiplier:1.0 constant:3.0];
        [(PHCallParticipantsView *)self addConstraint:v17];
      }
    }

    else
    {
      singleDurationTimerLabel = [(PHCallParticipantsView *)self singleDurationTimerLabel];
      [singleDurationTimerLabel removeFromSuperview];

      [(PHCallParticipantsView *)self setSingleDurationTimerLabel:0];
    }

    self->_shouldShowSingleDurationLabel = labelCopy;

    [(PHCallParticipantsView *)self updateParticipants];
  }
}

- (id)identificationCategoryDisplayString:(int64_t)string
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if ((string - 3) > 0x10)
  {
    v6 = @"MAYBE_JUNK";
  }

  else
  {
    v6 = off_100357338[string - 3];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100361FD0 table:@"InCallService"];

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsView;
  changeCopy = change;
  [(PHCallParticipantsView *)&v8 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHCallParticipantsView *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    [(PHCallParticipantsView *)self updateParticipants];
  }
}

- (void)updateSingleDurationTimerLabelText
{
  traitCollection = [(PHCallParticipantsView *)self traitCollection];
  v4 = [traitCollection _backlightLuminance] != 1;

  delegate = [(PHCallParticipantsView *)self delegate];
  v9 = [delegate labelForParticipantAtIndex:0 inParticipantsView:self allowsDuration:v4];

  singleDurationTimerLabel = [(PHCallParticipantsView *)self singleDurationTimerLabel];
  strings = [v9 strings];
  firstObject = [strings firstObject];
  [singleDurationTimerLabel setAttributedOrPlainText:firstObject];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PHCallParticipantsView;
  [(PHCallParticipantsView *)&v5 setUserInteractionEnabled:?];
  [(PHAbstractCallParticipantLabelView *)self->_singleCallLabelView setUserInteractionEnabled:enabledCopy];
  [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView setUserInteractionEnabled:enabledCopy];
  [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView setUserInteractionEnabled:enabledCopy];
}

- (void)setBannerButtonsState:(unint64_t)state
{
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  [singleCallLabelView setBannerButtonsState:state];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)selected
{
  selectedCopy = selected;
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  [singleCallLabelView setBannerAudioRouteButtonSelected:selectedCopy];
}

- (unint64_t)indexForParticipantLabel:(id)label
{
  labelCopy = label;
  if (self->_singleCallLabelView == labelCopy || (topMultipleCallLabelView = self->_topMultipleCallLabelView, topMultipleCallLabelView == labelCopy) || ([(PHMultipleCallParticipantLabelView *)topMultipleCallLabelView swapButton], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == labelCopy))
  {
    v9 = 0;
  }

  else
  {
    bottomMultipleCallLabelView = self->_bottomMultipleCallLabelView;
    if (bottomMultipleCallLabelView == labelCopy || ([(PHMultipleCallParticipantLabelView *)bottomMultipleCallLabelView swapButton], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == labelCopy))
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v9;
}

- (void)callLabelInfoLabelWasTappedForLabel:(id)label
{
  labelCopy = label;
  delegate = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHCallParticipantsView *)self indexForParticipantLabel:labelCopy];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      delegate2 = [(PHCallParticipantsView *)self delegate];
      [delegate2 participantViewInfoButtonTappedAtIndex:v7 inParticipantsView:self];
    }
  }
}

- (void)callLabelDetailsGestureRecognizerTappedForLabel:(id)label
{
  delegate = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PHCallParticipantsView *)self delegate];
    [delegate2 participantViewCallDetailsGestureRecognizerTapped];
  }
}

- (id)compactLabelTextForParticipantLabel:(id)label
{
  labelCopy = label;
  delegate = [(PHCallParticipantsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && (v7 = [(PHCallParticipantsView *)self indexForParticipantLabel:labelCopy], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    delegate2 = [(PHCallParticipantsView *)self delegate];
    v8 = [delegate2 compactLabelTextForParticipantAtIndex:v9 inParticipantsView:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)participantLabelView:(id)view didPerformActionType:(int64_t)type
{
  delegate = [(PHCallParticipantsView *)self delegate];
  [delegate participantsView:self didPerformActionType:type];
}

- (BOOL)isCallRinging
{
  delegate = [(PHCallParticipantsView *)self delegate];
  isCallRinging = [delegate isCallRinging];

  return isCallRinging;
}

- (BOOL)shouldShowParticipantLabel
{
  delegate = [(PHCallParticipantsView *)self delegate];
  shouldShowParticipantLabel = [delegate shouldShowParticipantLabel];

  return shouldShowParticipantLabel;
}

- (id)customFontForParticipantLabel
{
  delegate = [(PHCallParticipantsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PHCallParticipantsView *)self delegate];
    customFontForParticipantLabel = [delegate2 customFontForParticipantLabel];
  }

  else
  {
    customFontForParticipantLabel = 0;
  }

  return customFontForParticipantLabel;
}

- (BOOL)isKnownCaller
{
  currentCall = [(PHCallParticipantsView *)self currentCall];
  contactIdentifier = [currentCall contactIdentifier];
  v4 = contactIdentifier != 0;

  return v4;
}

- (void)setAllowsFieldModeSendButton:(BOOL)button
{
  buttonCopy = button;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (buttonCopy)
    {
      v6 = @"YES";
    }

    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCallParticipantsView: setAllowsFieldModeSendButton:%@", &v15, 0xCu);
  }

  if (self->_allowsFieldModeSendButton != buttonCopy)
  {
    if (buttonCopy)
    {
      fieldModeSendButton = [(PHCallParticipantsView *)self fieldModeSendButton];

      if (!fieldModeSendButton)
      {
        v8 = [UIButton buttonWithType:1];
        fieldModeSendButton = self->_fieldModeSendButton;
        self->_fieldModeSendButton = v8;

        [(UIButton *)self->_fieldModeSendButton setTranslatesAutoresizingMaskIntoConstraints:0];
        v10 = self->_fieldModeSendButton;
        v11 = +[NSBundle conversationKit];
        v12 = [v11 localizedStringForKey:@"FIELD_MODE_SEND" value:&stru_100361FD0 table:@"CallStatus"];
        [(UIButton *)v10 setTitle:v12 forState:0];

        [(UIButton *)self->_fieldModeSendButton sizeToFit];
        [(UIButton *)self->_fieldModeSendButton addTarget:self action:"fieldModeButtonTapped:" forControlEvents:64];
        [(PHCallParticipantsView *)self addSubview:self->_fieldModeSendButton];
        [(UIButton *)self->_fieldModeSendButton setHidden:1];
        v13 = [NSLayoutConstraint constraintWithItem:self->_fieldModeSendButton attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-24.0];
        [(PHCallParticipantsView *)self addConstraint:v13];

        v14 = [NSLayoutConstraint constraintWithItem:self->_fieldModeSendButton attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:3.0];
        [(PHCallParticipantsView *)self addConstraint:v14];
      }
    }

    else
    {
      [(UIButton *)self->_fieldModeSendButton removeFromSuperview];
      [(PHCallParticipantsView *)self setFieldModeSendButton:0];
    }

    self->_allowsFieldModeSendButton = buttonCopy;
  }
}

- (void)fieldModeButtonTapped:(id)tapped
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Field mode button tapped", v8, 2u);
  }

  delegate = [(PHCallParticipantsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PHCallParticipantsView *)self delegate];
    [delegate2 fieldModeSendButtonTappedInParticipantsView:self];
  }
}

- (void)showSendButtonGestureRecognizer:(id)recognizer
{
  v4 = sub_100004F84(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing send button", v6, 2u);
  }

  fieldModeSendButton = [(PHCallParticipantsView *)self fieldModeSendButton];
  [fieldModeSendButton setHidden:0];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  [(PHCallParticipantsView *)self invalidateIntrinsicContentSize];
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  if (singleCallLabelView)
  {
    v8 = singleCallLabelView;
    singleCallLabelView2 = [(PHCallParticipantsView *)self singleCallLabelView];
    v10 = [singleCallLabelView2 conformsToProtocol:&OBJC_PROTOCOL___ICSCallDisplayStyleHandler];

    if (v10)
    {
      singleCallLabelView3 = [(PHCallParticipantsView *)self singleCallLabelView];
      [singleCallLabelView3 callDisplayStyleDidChangeFromStyle:style toStyle:toStyle];
    }
  }
}

- (UILayoutGuide)leadingSideLayoutGuide
{
  WeakRetained = objc_loadWeakRetained(&self->_leadingSideLayoutGuide);

  return WeakRetained;
}

- (UILayoutGuide)trailingSideLayoutGuide
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingSideLayoutGuide);

  return WeakRetained;
}

@end