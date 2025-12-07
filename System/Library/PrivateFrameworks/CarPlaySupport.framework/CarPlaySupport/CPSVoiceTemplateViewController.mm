@interface CPSVoiceTemplateViewController
- (CPSVoiceTemplateViewController)initWithVoiceTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment;
- (id)_stateWithIdentifier:(id)identifier;
- (id)voiceTemplate;
- (void)_activateStateWithIdentifier:(id)identifier;
- (void)_backGestureFired:(id)fired;
- (void)_viewDidLoad;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSVoiceTemplateViewController

- (CPSVoiceTemplateViewController)initWithVoiceTemplate:(id)template templateDelegate:(id)delegate templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v15 = 0;
  objc_storeStrong(&v15, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v14.receiver = v5;
  v14.super_class = CPSVoiceTemplateViewController;
  v13 = [(CPSBaseTemplateViewController *)&v14 initWithTemplate:location[0] templateDelegate:v16 templateEnvironment:v15];
  selfCopy = v13;
  objc_storeStrong(&selfCopy, v13);
  if (v13)
  {
    v6 = [CPSVoiceView alloc];
    v7 = [(CPSVoiceView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleView = selfCopy->_titleView;
    selfCopy->_titleView = v7;
    MEMORY[0x277D82BD8](titleView);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (id)voiceTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)_viewDidLoad
{
  v49[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v47 = a2;
  v46.receiver = self;
  v46.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v46 _viewDidLoad];
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  view = [(CPSVoiceTemplateViewController *)selfCopy view];
  [view setBackgroundColor:tableBackgroundColor];
  MEMORY[0x277D82BD8](view);
  *&v2 = MEMORY[0x277D82BD8](tableBackgroundColor).n128_u64[0];
  view2 = [(CPSVoiceTemplateViewController *)selfCopy view];
  titleView = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](titleView);
  *&v3 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  titleView2 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  imageView = [(CPSVoiceView *)titleView2 imageView];
  [(UIImageView *)imageView sizeToFit];
  MEMORY[0x277D82BD8](imageView);
  *&v4 = MEMORY[0x277D82BD8](titleView2).n128_u64[0];
  v14 = MEMORY[0x277CCAAD0];
  titleView3 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  topAnchor = [(CPSVoiceView *)titleView3 topAnchor];
  view3 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:?];
  v49[0] = v34;
  titleView4 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  leadingAnchor = [(CPSVoiceView *)titleView4 leadingAnchor];
  view4 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:?];
  v49[1] = v28;
  titleView5 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  trailingAnchor = [(CPSVoiceView *)titleView5 trailingAnchor];
  view5 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:?];
  v49[2] = v22;
  titleView6 = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  bottomAnchor = [(CPSVoiceView *)titleView6 bottomAnchor];
  view6 = [(CPSVoiceTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:?];
  v49[3] = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  [v14 activateConstraints:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](titleView6);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](titleView5);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](titleView4);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](titleView3);
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v41 = [v5 initWithBarButtonSystemItem:1 target:selfCopy action:sel__dismissTemplateViewController];
  navigationItem = [(CPSVoiceTemplateViewController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:v41];
  MEMORY[0x277D82BD8](navigationItem);
  *&v6 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  voiceTemplate = [(CPSVoiceTemplateViewController *)selfCopy voiceTemplate];
  voiceControlStates = [voiceTemplate voiceControlStates];
  firstObject = [voiceControlStates firstObject];
  location = [firstObject identifier];
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](voiceControlStates);
  *&v7 = MEMORY[0x277D82BD8](voiceTemplate).n128_u64[0];
  if (location)
  {
    [(CPSVoiceTemplateViewController *)selfCopy _activateStateWithIdentifier:location, v7];
  }

  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v8 viewDidAppear:appear];
  v3 = objc_alloc(MEMORY[0x277D75B80]);
  v7 = [v3 initWithTarget:selfCopy action:sel__backGestureFired_];
  [v7 setAllowedPressTypes:&unk_2855C4F28];
  navigationController = [(CPSVoiceTemplateViewController *)selfCopy navigationController];
  view = [navigationController view];
  [view addGestureRecognizer:v7];
  MEMORY[0x277D82BD8](view);
  *&v4 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  [(CPSVoiceTemplateViewController *)selfCopy setBackGestureRecognizer:v7, v4];
  objc_storeStrong(&v7, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillAppear:appear];
  titleView = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  imageView = [(CPSVoiceView *)titleView imageView];
  [(UIImageView *)imageView startAnimating];
  MEMORY[0x277D82BD8](imageView);
  MEMORY[0x277D82BD8](titleView);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = CPSVoiceTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillDisappear:disappear];
  titleView = [(CPSVoiceTemplateViewController *)selfCopy titleView];
  imageView = [(CPSVoiceView *)titleView imageView];
  [(UIImageView *)imageView stopAnimating];
  MEMORY[0x277D82BD8](imageView);
  MEMORY[0x277D82BD8](titleView);
}

- (void)_backGestureFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  if ([location[0] state] == 3)
  {
    [(CPSBaseTemplateViewController *)selfCopy _dismissTemplateViewController];
  }

  objc_storeStrong(location, 0);
}

- (id)_stateWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  voiceTemplate = [(CPSVoiceTemplateViewController *)selfCopy voiceTemplate];
  voiceControlStates = [voiceTemplate voiceControlStates];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __55__CPSVoiceTemplateViewController__stateWithIdentifier___block_invoke;
  v15 = &unk_278D910B0;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v10 = [voiceControlStates indexOfObjectPassingTest:&v11];
  MEMORY[0x277D82BD8](voiceControlStates);
  *&v3 = MEMORY[0x277D82BD8](voiceTemplate).n128_u64[0];
  v17 = v10;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    voiceTemplate2 = [(CPSVoiceTemplateViewController *)selfCopy voiceTemplate];
    voiceControlStates2 = [voiceTemplate2 voiceControlStates];
    v20 = [voiceControlStates2 objectAtIndexedSubscript:v17];
    MEMORY[0x277D82BD8](voiceControlStates2);
    MEMORY[0x277D82BD8](voiceTemplate2);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v4 = v20;

  return v4;
}

uint64_t __55__CPSVoiceTemplateViewController__stateWithIdentifier___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] identifier];
  v5 = [v4 isEqualToString:a1[4]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_activateStateWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __63__CPSVoiceTemplateViewController__activateStateWithIdentifier___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __63__CPSVoiceTemplateViewController__activateStateWithIdentifier___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1 + 32) _stateWithIdentifier:*(a1 + 40)];
  if (location[0])
  {
    [*(a1 + 32) lastVoiceTemplateStateChangeTime];
    if (v1 <= 0.0 || ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v12 = v2, objc_msgSend(*(a1 + 32), "lastVoiceTemplateStateChangeTime"), v12 - v3 >= 0.5))
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [*(a1 + 32) setLastVoiceTemplateStateChangeTime:?];
      v6 = [*(a1 + 32) titleView];
      v5 = [v6 titleLabel];
      v4 = [location[0] titleVariants];
      [v5 setTextVariants:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      v9 = [*(a1 + 32) titleView];
      v8 = [v9 imageView];
      v7 = [location[0] image];
      [v8 setImage:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v11 = [*(a1 + 32) titleView];
      v10 = [v11 imageView];
      [v10 setAnimationRepeatCount:{(objc_msgSend(location[0], "repeats") & 1) == 0}];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  objc_storeStrong(location, 0);
}

@end