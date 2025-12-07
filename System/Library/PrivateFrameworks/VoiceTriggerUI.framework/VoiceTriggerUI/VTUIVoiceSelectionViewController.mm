@interface VTUIVoiceSelectionViewController
- (VTUIVoiceSelectionViewController)initWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection barButtonItemForContinue:(id)continue customVoicePreviewer:(id)previewer delegate:(id)delegate;
- (VTUIVoiceSelectionViewController)initWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection barButtonItemForContinue:(id)continue dataManager:(id)manager customVoicePreviewer:(id)previewer delegate:(id)delegate;
- (VTUIVoiceSelectionViewControllerDelegate)delegate;
- (id)_getDetailedText;
- (id)_getTitle;
- (id)_initWithTitle:(id)title detailText:(id)text recognitionLanguage:(id)language compact:(BOOL)compact allowsRandomSelection:(BOOL)selection forSelectionStyle:(int64_t)style barButtonItemForContinue:(id)continue dataManager:(id)self0 customVoicePreviewer:(id)self1 delegate:(id)self2;
- (id)initCompactWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection customVoicePreviewer:(id)previewer delegate:(id)delegate;
- (id)initCompactWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection dataManager:(id)manager customVoicePreviewer:(id)previewer delegate:(id)delegate;
- (id)initCompactWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection dataManager:(id)manager customVoicePreviewer:(id)previewer forSelectionStyle:(int64_t)style delegate:(id)delegate;
- (void)_chooseForMeButtonClicked;
- (void)_continueButtonClicked;
- (void)_dismissButtonClicked;
- (void)_informDelegateVoiceWasSelected:(id)selected randomlySelected:(BOOL)randomlySelected;
- (void)_setupButtons;
- (void)_setupContentForRecognitionLanguage:(id)language dataManager:(id)manager customVoicePreviewer:(id)previewer;
- (void)_setupWithTitle:(id)title detailText:(id)text allowsRandomSelection:(BOOL)selection compact:(BOOL)compact forSelectionStyle:(int64_t)style;
- (void)presenter:(id)presenter didChangeVoiceSelection:(id)selection;
- (void)setShouldHideCompactBackgroundCardView:(BOOL)view;
- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)size;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation VTUIVoiceSelectionViewController

- (id)_initWithTitle:(id)title detailText:(id)text recognitionLanguage:(id)language compact:(BOOL)compact allowsRandomSelection:(BOOL)selection forSelectionStyle:(int64_t)style barButtonItemForContinue:(id)continue dataManager:(id)self0 customVoicePreviewer:(id)self1 delegate:(id)self2
{
  selectionCopy = selection;
  compactCopy = compact;
  titleCopy = title;
  textCopy = text;
  languageCopy = language;
  continueCopy = continue;
  managerCopy = manager;
  previewerCopy = previewer;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = VTUIVoiceSelectionViewController;
  v23 = [(VTUIVoiceSelectionViewController *)&v30 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_continueBarButton, continue);
    v24->_allowsRandomSelection = selectionCopy;
    objc_storeWeak(&v24->_delegate, delegateCopy);
    [(VTUIVoiceSelectionViewController *)v24 _setupWithTitle:titleCopy detailText:textCopy allowsRandomSelection:selectionCopy compact:compactCopy forSelectionStyle:style];
    [(VTUIVoiceSelectionViewController *)v24 _setupContentForRecognitionLanguage:languageCopy dataManager:managerCopy customVoicePreviewer:previewerCopy];
    [(VTUIVoiceSelectionViewController *)v24 _setupButtons];
    if (compactCopy)
    {
      view = [(VTUIVoiceSelectionViewController *)v24 view];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [view setBackgroundColor:clearColor];
    }
  }

  return v24;
}

- (VTUIVoiceSelectionViewController)initWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection barButtonItemForContinue:(id)continue customVoicePreviewer:(id)previewer delegate:(id)delegate
{
  selectionCopy = selection;
  v12 = MEMORY[0x277D61A88];
  delegateCopy = delegate;
  previewerCopy = previewer;
  continueCopy = continue;
  languageCopy = language;
  v17 = objc_alloc_init(v12);
  v18 = [(VTUIVoiceSelectionViewController *)self initWithRecognitionLanguage:languageCopy allowsRandomSelection:selectionCopy barButtonItemForContinue:continueCopy dataManager:v17 customVoicePreviewer:previewerCopy delegate:delegateCopy];

  return v18;
}

- (VTUIVoiceSelectionViewController)initWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection barButtonItemForContinue:(id)continue dataManager:(id)manager customVoicePreviewer:(id)previewer delegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  previewerCopy = previewer;
  managerCopy = manager;
  continueCopy = continue;
  languageCopy = language;
  _getTitle = [(VTUIVoiceSelectionViewController *)self _getTitle];
  _getDetailedText = [(VTUIVoiceSelectionViewController *)self _getDetailedText];
  v21 = [(VTUIVoiceSelectionViewController *)self _initWithTitle:_getTitle detailText:_getDetailedText recognitionLanguage:languageCopy compact:0 allowsRandomSelection:selectionCopy forSelectionStyle:0 barButtonItemForContinue:continueCopy dataManager:managerCopy customVoicePreviewer:previewerCopy delegate:delegateCopy];

  return v21;
}

- (id)initCompactWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection customVoicePreviewer:(id)previewer delegate:(id)delegate
{
  selectionCopy = selection;
  v10 = MEMORY[0x277D61A88];
  delegateCopy = delegate;
  previewerCopy = previewer;
  languageCopy = language;
  v14 = objc_alloc_init(v10);
  v15 = [(VTUIVoiceSelectionViewController *)self initCompactWithRecognitionLanguage:languageCopy allowsRandomSelection:selectionCopy dataManager:v14 customVoicePreviewer:previewerCopy delegate:delegateCopy];

  return v15;
}

- (id)initCompactWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection dataManager:(id)manager customVoicePreviewer:(id)previewer delegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  previewerCopy = previewer;
  managerCopy = manager;
  languageCopy = language;
  _getTitle = [(VTUIVoiceSelectionViewController *)self _getTitle];
  _getDetailedText = [(VTUIVoiceSelectionViewController *)self _getDetailedText];
  v18 = [(VTUIVoiceSelectionViewController *)self _initWithTitle:_getTitle detailText:_getDetailedText recognitionLanguage:languageCopy compact:1 allowsRandomSelection:selectionCopy forSelectionStyle:0 barButtonItemForContinue:0 dataManager:managerCopy customVoicePreviewer:previewerCopy delegate:delegateCopy];

  return v18;
}

- (id)initCompactWithRecognitionLanguage:(id)language allowsRandomSelection:(BOOL)selection dataManager:(id)manager customVoicePreviewer:(id)previewer forSelectionStyle:(int64_t)style delegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  previewerCopy = previewer;
  managerCopy = manager;
  languageCopy = language;
  _getTitle = [(VTUIVoiceSelectionViewController *)self _getTitle];
  _getDetailedText = [(VTUIVoiceSelectionViewController *)self _getDetailedText];
  v20 = [(VTUIVoiceSelectionViewController *)self _initWithTitle:_getTitle detailText:_getDetailedText recognitionLanguage:languageCopy compact:1 allowsRandomSelection:selectionCopy forSelectionStyle:style barButtonItemForContinue:0 dataManager:managerCopy customVoicePreviewer:previewerCopy delegate:delegateCopy];

  return v20;
}

- (void)_setupWithTitle:(id)title detailText:(id)text allowsRandomSelection:(BOOL)selection compact:(BOOL)compact forSelectionStyle:(int64_t)style
{
  selectionCopy = selection;
  titleCopy = title;
  textCopy = text;
  if (compact)
  {
    v13 = [[VTUIVoiceSelectionProximityView alloc] initWithTitle:titleCopy allowsRandomVoiceSelection:selectionCopy forSelectionStyle:style];
    voiceSelectionContainer = self->_voiceSelectionContainer;
    self->_voiceSelectionContainer = v13;
  }

  else
  {
    v15 = [[VTUIVoiceSelectionView alloc] initWithAllowsRandomVoiceSelection:selectionCopy showContinueButton:self->_continueBarButton == 0];
    [(VTUIEnrollmentBaseView *)v15 setTitle:titleCopy];
    if (textCopy)
    {
      [(VTUIEnrollmentBaseView *)v15 setSubtitle:textCopy];
    }

    [(VTUIEnrollmentBaseView *)v15 setTitle:titleCopy];
    [(VTUIEnrollmentBaseView *)v15 setSubtitle:textCopy];
    objc_storeStrong(&self->_voiceSelectionContainer, v15);
    v16 = MEMORY[0x277D75348];
    v13 = v15;
    voiceSelectionContainer = [v16 systemBackgroundColor];
    [(VTUIVoiceSelectionProximityView *)v13 setBackgroundColor:voiceSelectionContainer];
  }

  [(VTUIVoiceSelectionViewController *)self setView:v13];
}

- (id)_getTitle
{
  v2 = +[VTUIStyle sharedStyle];
  v3 = [v2 VTUIDeviceSpecificString:@"SELECT_VOICE"];

  return v3;
}

- (id)_getDetailedText
{
  v2 = +[_TtC14VoiceTriggerUI23GMAvailabilityViewModel shouldShowGM];
  v3 = @"DESCRIPTION_VOICE_SELECTION";
  if (v2)
  {
    v3 = @"GM_DESCRIPTION_VOICE_SELECTION";
  }

  v4 = v3;
  v5 = +[VTUIStyle sharedStyle];
  v6 = [v5 VTUIDeviceSpecificString:v4];

  return v6;
}

- (void)_setupButtons
{
  if (self->_allowsRandomSelection)
  {
    chooseForMeButton = [(VTUIVoiceSelectionViewController *)self chooseForMeButton];
    [chooseForMeButton addTarget:self action:sel__chooseForMeButtonClicked forControlEvents:64];
  }

  dismissButton = [(VTUIVoiceSelectionContaining *)self->_voiceSelectionContainer dismissButton];
  [dismissButton addTarget:self action:sel__dismissButtonClicked forControlEvents:64];

  continueBarButton = self->_continueBarButton;
  if (continueBarButton)
  {
    [(UIBarButtonItem *)continueBarButton setTarget:self];
    [(UIBarButtonItem *)self->_continueBarButton setAction:sel__continueButtonClicked];
    v6 = self->_continueBarButton;

    [(UIBarButtonItem *)v6 setEnabled:0];
  }

  else
  {
    continueButton = [(VTUIVoiceSelectionViewController *)self continueButton];
    [continueButton addTarget:self action:sel__continueButtonClicked forControlEvents:64];
  }
}

- (void)_setupContentForRecognitionLanguage:(id)language dataManager:(id)manager customVoicePreviewer:(id)previewer
{
  previewerCopy = previewer;
  managerCopy = manager;
  languageCopy = language;
  v10 = objc_alloc_init(VTUIVoiceSelectionOptionsView);
  if (previewerCopy)
  {
    v11 = previewerCopy;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D61A40]);
  }

  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x277D61A90]) initWithDataManaging:managerCopy view:v10 delegate:self voicePreviewing:v11 recognitionLanguage:languageCopy];

  voiceSelectionPresenter = self->_voiceSelectionPresenter;
  self->_voiceSelectionPresenter = v13;

  voiceOptionsView = self->_voiceOptionsView;
  self->_voiceOptionsView = v10;
  v16 = v10;

  [(VTUIVoiceSelectionContaining *)self->_voiceSelectionContainer setContentView:v16];
}

- (void)viewWillLayoutSubviews
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = VTUIVoiceSelectionViewController;
  [(VTUIVoiceSelectionViewController *)&v11 viewWillLayoutSubviews];
  if (self->_voiceOptionsViewHeightConstraint)
  {
    v3 = MEMORY[0x277CCAAD0];
    v13[0] = self->_voiceOptionsViewHeightConstraint;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v3 deactivateConstraints:v4];
  }

  heightAnchor = [(VTUIVoiceSelectionOptionsView *)self->_voiceOptionsView heightAnchor];
  [(VTUIVoiceSelectionOptionsView *)self->_voiceOptionsView sizeThatFits:1.79769313e308, 1.79769313e308];
  v7 = [heightAnchor constraintEqualToConstant:v6];
  voiceOptionsViewHeightConstraint = self->_voiceOptionsViewHeightConstraint;
  self->_voiceOptionsViewHeightConstraint = v7;

  v9 = MEMORY[0x277CCAAD0];
  v12 = self->_voiceOptionsViewHeightConstraint;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v9 activateConstraints:v10];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = VTUIVoiceSelectionViewController;
  [(VTUIVoiceSelectionViewController *)&v7 viewWillAppear:appear];
  chooseForMeButton = [(VTUIVoiceSelectionViewController *)self chooseForMeButton];
  chooseForMeButton2 = [(VTUIVoiceSelectionViewController *)self chooseForMeButton];
  tintColor = [chooseForMeButton2 tintColor];
  [chooseForMeButton setTitleColor:tintColor forState:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VTUIVoiceSelectionViewController;
  [(VTUIVoiceSelectionViewController *)&v4 viewWillDisappear:disappear];
  [(SUICVoiceSelectionPresenter *)self->_voiceSelectionPresenter stopVoicePreview];
}

- (void)_continueButtonClicked
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[VTUIVoiceSelectionViewController _continueButtonClicked]";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s voice selection nil when continue button was enabled", &v1, 0xCu);
}

- (void)_chooseForMeButtonClicked
{
  self->shouldReportSelectionOnRandomVoicePlayBackCompletion = 1;
  objc_initWeak(&location, self);
  voiceSelectionPresenter = self->_voiceSelectionPresenter;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke;
  v4[3] = &unk_279E54AF8;
  objc_copyWeak(&v5, &location);
  [(SUICVoiceSelectionPresenter *)voiceSelectionPresenter selectRandomVoiceWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (WeakRetained[1056] == 1)
      {
        [WeakRetained _informDelegateVoiceWasSelected:v3 randomlySelected:1];
      }

      else
      {
        v7 = VTUILogContextFacility;
        if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315394;
          v9 = "[VTUIVoiceSelectionViewController _chooseForMeButtonClicked]_block_invoke";
          v10 = 2112;
          v11 = v3;
          _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ voice already reported due to continue press before playback completion", &v8, 0x16u);
        }
      }
    }

    else
    {
      v6 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
      {
        __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke_cold_1(v6);
      }
    }

    v5[1056] = 0;
  }
}

- (void)_informDelegateVoiceWasSelected:(id)selected randomlySelected:(BOOL)randomlySelected
{
  randomlySelectedCopy = randomlySelected;
  selectedCopy = selected;
  delegate = [(VTUIVoiceSelectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    continueBarButton = self->_continueBarButton;
    v10 = continueBarButton == 0;
    if (continueBarButton)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      continueButton = [(VTUIVoiceSelectionViewController *)self continueButton];
      [continueButton setEnabled:0];

      v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      continueButton2 = [(VTUIVoiceSelectionViewController *)self continueButton];
      [continueButton2 bounds];
      v20 = v19 * 0.5;
      continueButton3 = [(VTUIVoiceSelectionViewController *)self continueButton];
      [continueButton3 bounds];
      [v12 setCenter:{v20, v22 * 0.5}];

      continueButton4 = [(VTUIVoiceSelectionViewController *)self continueButton];
      [continueButton4 addSubview:v12];

      continueButton5 = [(VTUIVoiceSelectionViewController *)self continueButton];
      v11 = [continueButton5 attributedTitleForState:2];

      continueButton6 = [(VTUIVoiceSelectionViewController *)self continueButton];
      [continueButton6 setTitle:&stru_2881E5778 forState:2];

      [v12 startAnimating];
    }

    objc_initWeak(&location, self);
    delegate2 = [(VTUIVoiceSelectionViewController *)self delegate];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __85__VTUIVoiceSelectionViewController__informDelegateVoiceWasSelected_randomlySelected___block_invoke;
    v28[3] = &unk_279E54B20;
    objc_copyWeak(&v32, &location);
    v33 = v10;
    v16 = v12;
    v29 = v16;
    selfCopy = self;
    v27 = v11;
    v31 = v27;
    [delegate2 voiceSelectionController:self didSelectVoice:selectedCopy randomlySelected:randomlySelectedCopy completion:v28];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  else
  {
    delegate3 = [(VTUIVoiceSelectionViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    delegate4 = [(VTUIVoiceSelectionViewController *)self delegate];
    v16 = delegate4;
    if (v14)
    {
      [delegate4 voiceSelectionController:self didSelectVoice:selectedCopy randomlySelected:randomlySelectedCopy];
    }

    else
    {
      [delegate4 voiceSelectionController:self didSelectVoice:selectedCopy];
    }
  }
}

void __85__VTUIVoiceSelectionViewController__informDelegateVoiceWasSelected_randomlySelected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(a1 + 64) == 1)
  {
    v5 = WeakRetained;
    [*(a1 + 32) removeFromSuperview];
    v3 = [*(a1 + 40) continueButton];
    [v3 setAttributedTitle:*(a1 + 48) forState:2];

    v4 = [*(a1 + 40) continueButton];
    [v4 setEnabled:1];

    WeakRetained = v5;
  }
}

- (void)_dismissButtonClicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 voiceSelectionControllerRequestsDismissal:self];
  }
}

- (void)updateContainerConstraintsForOrientationChangeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (objc_opt_respondsToSelector())
  {
    voiceSelectionContainer = self->_voiceSelectionContainer;

    [(VTUIVoiceSelectionContaining *)voiceSelectionContainer updateContainerConstraintsForOrientationChangeToSize:width, height];
  }
}

- (void)presenter:(id)presenter didChangeVoiceSelection:(id)selection
{
  selectionCopy = selection;
  continueBarButton = self->_continueBarButton;
  if (continueBarButton)
  {
    [(UIBarButtonItem *)continueBarButton setEnabled:selectionCopy != 0];
  }

  else
  {
    continueButton = [(VTUIVoiceSelectionViewController *)self continueButton];
    [continueButton setEnabled:selectionCopy != 0];
  }

  currentVoiceSelection = self->_currentVoiceSelection;
  self->_currentVoiceSelection = selectionCopy;
}

- (void)setShouldHideCompactBackgroundCardView:(BOOL)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    voiceSelectionContainer = self->_voiceSelectionContainer;

    [(VTUIVoiceSelectionContaining *)voiceSelectionContainer setShouldHideCompactBackgroundCardView:viewCopy];
  }
}

- (VTUIVoiceSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__VTUIVoiceSelectionViewController__chooseForMeButtonClicked__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[VTUIVoiceSelectionViewController _chooseForMeButtonClicked]_block_invoke";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s Random voice was nil", &v1, 0xCu);
}

@end