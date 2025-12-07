@interface CRSUIClusterWindow
- (id)_clusterSettings;
- (unint64_t)compassSetting;
- (unint64_t)etaSetting;
- (unint64_t)itemType;
- (unint64_t)layoutJustification;
- (unint64_t)speedLimitSetting;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)addClusterSettingsObserver:(id)observer;
- (void)commonInit;
- (void)handleZoomInDirection:(int64_t)direction;
- (void)removeClusterSettingsObserver:(id)observer;
@end

@implementation CRSUIClusterWindow

- (void)commonInit
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = CRSUIClusterWindow;
  [(CRSUIWindow *)&v28 commonInit];
  v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285609190];
  observers = self->_observers;
  self->_observers = v3;

  windowScene = [(CRSUIClusterWindow *)self windowScene];
  v6 = [[CRSUIClusterZoomBSActionsHandler alloc] initWithDelegate:self];
  v30[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [windowScene _registerSceneActionsHandlerArray:v7 forKey:@"zoomActions"];

  v8 = objc_alloc_init(CRSUIInstrumentClusterSettingsDiffInspector);
  clusterSettingsDiffInspector = self->_clusterSettingsDiffInspector;
  self->_clusterSettingsDiffInspector = v8;

  objc_initWeak(&location, self);
  v10 = self->_clusterSettingsDiffInspector;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __32__CRSUIClusterWindow_commonInit__block_invoke;
  v25[3] = &unk_278DA12D0;
  objc_copyWeak(&v26, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v10 observeShowETAWithBlock:v25];
  v11 = self->_clusterSettingsDiffInspector;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_2;
  v23[3] = &unk_278DA12D0;
  objc_copyWeak(&v24, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v11 observeShowCompassWithBlock:v23];
  v12 = self->_clusterSettingsDiffInspector;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_3;
  v21[3] = &unk_278DA12D0;
  objc_copyWeak(&v22, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v12 observeShowSpeedLimitWithBlock:v21];
  v13 = self->_clusterSettingsDiffInspector;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_4;
  v19[3] = &unk_278DA12D0;
  objc_copyWeak(&v20, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v13 observeItemTypeWithBlock:v19];
  v14 = self->_clusterSettingsDiffInspector;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_5;
  v17[3] = &unk_278DA12D0;
  objc_copyWeak(&v18, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v14 observeLayoutSpecificationWithBlock:v17];
  windowScene2 = [(CRSUIClusterWindow *)self windowScene];
  selfCopy = self;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
  [windowScene2 _registerSettingsDiffActionArray:v16 forKey:@"clusterSettings"];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __32__CRSUIClusterWindow_commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeETASetting:{objc_msgSend(WeakRetained, "etaSetting")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeCompassSetting:{objc_msgSend(WeakRetained, "compassSetting")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeSpeedLimitSetting:{objc_msgSend(WeakRetained, "speedLimitSetting")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeItemType:{objc_msgSend(WeakRetained, "itemType")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeLayoutJustification:{objc_msgSend(WeakRetained, "layoutJustification")}];
}

- (void)addClusterSettingsObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIClusterWindow *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeClusterSettingsObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIClusterWindow *)self observers];
  [observers removeObserver:observerCopy];
}

- (unint64_t)etaSetting
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  showsETA = [_clusterSettings showsETA];

  return showsETA;
}

- (unint64_t)compassSetting
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  showsCompass = [_clusterSettings showsCompass];

  return showsCompass;
}

- (unint64_t)speedLimitSetting
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  showsSpeedLimit = [_clusterSettings showsSpeedLimit];

  return showsSpeedLimit;
}

- (unint64_t)itemType
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  itemType = [_clusterSettings itemType];

  return itemType;
}

- (unint64_t)layoutJustification
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  layoutJustification = [_clusterSettings layoutJustification];

  return layoutJustification;
}

- (void)handleZoomInDirection:(int64_t)direction
{
  observers = [(CRSUIClusterWindow *)self observers];
  [observers clusterWindow:self didZoomInDirection:direction];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v8 = *&type;
  v16.receiver = self;
  v16.super_class = CRSUIClusterWindow;
  diffCopy = diff;
  [(CRSUIWindow *)&v16 _performActionsForUIScene:scene withUpdatedFBSScene:sScene settingsDiff:diffCopy fromSettings:settings transitionContext:context lifecycleActionType:v8];
  v15 = [(CRSUIClusterWindow *)self clusterSettingsDiffInspector:v16.receiver];
  [v15 inspectDiff:diffCopy withContext:0];
}

- (id)_clusterSettings
{
  objc_opt_class();
  windowScene = [(CRSUIClusterWindow *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = settings;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end