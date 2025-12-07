@interface PRWidgetSuggestionsViewController
- (PRWidgetSuggestionsViewController)initWithSuggestionSets:(id)sets listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider widgetDragHandler:(id)handler usingSidebarLayout:(BOOL)layout;
- (PRWidgetSuggestionsViewControllerDelegate)delegate;
- (id)_galleryItemForComplicationDescriptor:(id)descriptor iconImageHidden:(BOOL)hidden;
- (id)complicationDescriptorForItemAtIndexPath:(id)path;
- (void)_configureWidgetCell:(id)cell forItem:(id)item atIndexPath:(id)path;
- (void)iconTapped:(id)tapped;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation PRWidgetSuggestionsViewController

- (PRWidgetSuggestionsViewController)initWithSuggestionSets:(id)sets listLayoutProvider:(id)provider iconViewProvider:(id)viewProvider widgetDragHandler:(id)handler usingSidebarLayout:(BOOL)layout
{
  setsCopy = sets;
  providerCopy = provider;
  viewProviderCopy = viewProvider;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = PRWidgetSuggestionsViewController;
  v16 = [(PRWidgetSuggestionsViewController *)&v20 init];
  if (v16)
  {
    v17 = [setsCopy bs_compactMap:&__block_literal_global_3];
    suggestionSets = v16->_suggestionSets;
    v16->_suggestionSets = v17;

    objc_storeStrong(&v16->_listLayoutProvider, provider);
    objc_storeStrong(&v16->_iconViewProvider, viewProvider);
    objc_storeStrong(&v16->_widgetDragHandler, handler);
    v16->_usingSidebarLayout = layout;
  }

  return v16;
}

PRComplicationSuggestionSet *__133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 complications];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v2 complications];
    v6 = [v5 bs_compactMap:&__block_literal_global_4_0];

    v7 = [v2 localizedTitle];
    v8 = [[PRComplicationSuggestionSet alloc] initWithDescriptors:v6 localizedTitle:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

PRComplicationDescriptor *__133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PRSharedWidgetExtensionProvider(v2);
  v4 = [v3 widgetDescriptorForIdentifiable:v2];

  if (v4)
  {
    v6 = [v4 supportedFamilies];
    [v2 widgetFamily];
    v7 = CHSWidgetFamilyMaskFromWidgetFamily();
    if ((v7 & v6) != 0)
    {
      v8 = [v2 widgetFamily];
      v9 = [v2 intent];
      v10 = [v4 widgetForFamily:v8 intent:v9];

      v11 = [PRComplicationDescriptor alloc];
      v12 = [MEMORY[0x1E696AFB0] UUID];
      v13 = [v12 UUIDString];
      v14 = [(PRComplicationDescriptor *)v11 initWithUniqueIdentifier:v13 widget:v10];

      [(PRComplicationDescriptor *)v14 setSuggestedComplication:v2];
      goto LABEL_9;
    }

    v15 = PRLogCommon(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2_cold_1(v4, v2, v15);
    }
  }

  else
  {
    v15 = PRLogCommon(v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2_cold_2(v15);
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)loadView
{
  v3 = [[PRWidgetSuggestionsView alloc] initWithLayoutDelegate:self usingSidebarLayout:self->_usingSidebarLayout];
  widgetSuggestionsView = self->_widgetSuggestionsView;
  self->_widgetSuggestionsView = v3;

  v5 = self->_widgetSuggestionsView;

  [(PRWidgetSuggestionsViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v24[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__PRWidgetSuggestionsViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_1E78432B0;
  objc_copyWeak(&v22, &location);
  v5 = [v3 registrationWithCellClass:v4 configurationHandler:v21];
  collectionView = [(PRWidgetSuggestionsView *)self->_widgetSuggestionsView collectionView];
  [collectionView setDelegate:self];
  v7 = objc_alloc(MEMORY[0x1E69DC820]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__PRWidgetSuggestionsViewController_viewDidLoad__block_invoke_2;
  v18[3] = &unk_1E78432D8;
  v8 = collectionView;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v10 = [v7 initWithCollectionView:v8 cellProvider:v18];
  dataSource = self->_dataSource;
  self->_dataSource = v10;

  v12 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v13 = [(NSArray *)self->_suggestionSets bs_map:&__block_literal_global_17];
  bs_flatten = [v13 bs_flatten];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__PRWidgetSuggestionsViewController_viewDidLoad__block_invoke_4;
  v17[3] = &unk_1E7843320;
  v17[4] = self;
  v15 = [bs_flatten bs_map:v17];

  v24[0] = @"PRWidgetSuggestionsSectionIdentifier";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v12 appendSectionsWithIdentifiers:v16];

  [v12 appendItemsWithIdentifiers:v15];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v12 animatingDifferences:0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __48__PRWidgetSuggestionsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureWidgetCell:v9 forItem:v7 atIndexPath:v8];
}

id __48__PRWidgetSuggestionsViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = v6;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [*(a1 + 32) dequeueConfiguredReusableCellWithRegistration:*(a1 + 40) forIndexPath:v7 item:v11];

  return v12;
}

- (id)_galleryItemForComplicationDescriptor:(id)descriptor iconImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  descriptorCopy = descriptor;
  widget = [descriptorCopy widget];
  v7 = [PRComplicationDescriptor alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [(PRComplicationDescriptor *)v7 initWithUniqueIdentifier:uUIDString widget:widget];

  suggestedComplication = [descriptorCopy suggestedComplication];

  [(PRComplicationDescriptor *)v10 setSuggestedComplication:suggestedComplication];
  v12 = [PRComplicationGalleryWidgetItem alloc];
  v13 = PRSharedWidgetExtensionProvider(v12);
  v14 = [v13 widgetDescriptorForWidget:widget];
  displayName = [v14 displayName];
  v16 = [(PRComplicationGalleryWidgetItem *)v12 initWithDisplayName:displayName selected:0 iconImageHidden:hiddenCopy descriptor:v10];

  return v16;
}

- (void)_configureWidgetCell:(id)cell forItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  descriptor = [item descriptor];
  widget = [descriptor widget];

  v13 = PRSharedWidgetExtensionProvider(v12);
  v33 = [v13 widgetDescriptorForWidget:widget];

  v14 = objc_alloc(MEMORY[0x1E69D40F0]);
  listLayoutProvider = [(PRWidgetSuggestionsViewController *)self listLayoutProvider];
  iconViewProvider = [(PRWidgetSuggestionsViewController *)self iconViewProvider];
  v17 = [v14 initWithGalleryItem:v33 titleAndSubtitleVisible:0 listLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider];

  [v17 setSelectedSizeClass:{objc_msgSend(widget, "family")}];
  [v17 setDelegate:self];
  [v17 setUsesAmbientScaleFactorForRemovableBackgroundItems:0];
  wrapperView = [v17 wrapperView];
  [wrapperView setBackgroundType:0];

  wrapperView2 = [v17 wrapperView];
  [wrapperView2 setCornerRadius:PRWidgetPlatterCornerRadius()];

  [cellCopy setWidgetWrapperViewController:v17];
  v20 = +[PRWidgetMetricsProvider sharedInstance];
  v21 = [v20 systemMetricsForWidget:widget];

  traitCollection = [(PRWidgetSuggestionsViewController *)self traitCollection];
  [traitCollection displayScale];
  v24 = v23;

  [v21 _effectiveSizePixelAlignedForDisplayScale:v24];
  [cellCopy setContentSize:?];
  collectionView = [(PRWidgetSuggestionsView *)self->_widgetSuggestionsView collectionView];
  extensionIdentity = [widget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __78__PRWidgetSuggestionsViewController__configureWidgetCell_forItem_atIndexPath___block_invoke;
  v34[3] = &unk_1E7843348;
  v35 = collectionView;
  v36 = cellCopy;
  v37 = pathCopy;
  v28 = pathCopy;
  v29 = cellCopy;
  v30 = collectionView;
  [PRComplicationGalleryIconProvider loadIconImageForExtensionBundleIdentifier:extensionBundleIdentifier atWidth:v34 completion:20.0];

  view = [v17 view];
  superview = [view superview];
  [(PRWidgetSuggestionsViewController *)self bs_addChildViewController:v17 withSuperview:superview];
}

void __78__PRWidgetSuggestionsViewController__configureWidgetCell_forItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v4 = [v3 isEqual:*(a1 + 48)];

  if (v4)
  {
    [*(a1 + 40) setIconImage:v5];
  }
}

- (id)complicationDescriptorForItemAtIndexPath:(id)path
{
  v3 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  descriptor = [v3 descriptor];

  return descriptor;
}

- (void)iconTapped:(id)tapped
{
  wrapperView = [tapped wrapperView];
  contentView = [wrapperView contentView];

  if (contentView)
  {
    delegate = [(PRWidgetSuggestionsViewController *)self delegate];
    [delegate widgetSuggestionsViewController:self didSelectWidgetIconView:contentView];
  }
}

- (PRWidgetSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  [a2 widgetFamily];
  v5 = NSStringFromWidgetFamily();
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A8AA7000, a3, OS_LOG_TYPE_ERROR, "Suggested complication %@ does not support provided widget family %@", &v6, 0x16u);
}

void __133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Suggested complication %@ not found in set of descriptors", &v1, 0xCu);
}

@end