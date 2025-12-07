@interface MUTransitLineItemViewController
- (MUTransitLineItemViewController)initWithTransitLineItem:(id)item;
- (MUTransitLineItemViewControllerDelegate)delegate;
- (UIScrollViewDelegate)scrollViewDelegate;
- (id)_footerSectionController;
- (void)_attachLoadingOverlayIfNeeded;
- (void)_fetchNearestStation;
- (void)_openAttributionURLStrings:(id)strings usingAttribution:(id)attribution;
- (void)_setupContentView;
- (void)_updatePocketInsets;
- (void)_updateSectionControllers;
- (void)headerButtonsSectionController:(id)controller didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options;
- (void)headerButtonsSectionControllerDidUpdateContent:(id)content;
- (void)incidentsSectionController:(id)controller didSelectDetailsForIncidents:(id)incidents;
- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1;
- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0;
- (void)lineItemManager:(id)manager didSelectReportAProblemWithEnvironment:(id)environment;
- (void)nearestStationSectionController:(id)controller didSelectStationAttributionURL:(id)l;
- (void)nearestStationSectionController:(id)controller didTapStationItem:(id)item;
- (void)placeDescriptionSectionControllerDidTapAttribution:(id)attribution;
- (void)resetNearestStation;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setAutomobileOptions:(id)options;
- (void)setCyclingOptions:(id)options;
- (void)setTransitLineItem:(id)item;
- (void)setTransitLineItem:(id)item loading:(BOOL)loading;
- (void)setTransitOptions:(id)options;
- (void)setWalkingOptions:(id)options;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MUTransitLineItemViewController

- (MUTransitLineItemViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1
{
  v14 = *&target;
  v15 = *&action;
  v24[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  lCopy = l;
  dCopy = d;
  metadataCopy = metadata;
  classificationCopy = classification;
  if (metadataCopy)
  {
    v24[0] = metadataCopy;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
  LODWORD(v23) = 6;
  [mEMORY[0x1E696F298] capturePlaceCardUserAction:v15 onTarget:v14 eventValue:valueCopy mapItem:0 timestamp:0xFFFFFFFFLL resultIndex:0 targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:0 actionURL:lCopy photoID:dCopy placeCardType:v23 localizedMapItemCategory:0 availableActions:0 unactionableUIElements:0 modules:v21 commingledPhotoProviderIDs:0 actionRichProviderId:0 classification:classificationCopy];
}

- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0
{
  v15 = *&action;
  v16 = MEMORY[0x1E696F298];
  incidentCopy = incident;
  sequenceCopy = sequence;
  systemCopy = system;
  sharedService = [v16 sharedService];
  LODWORD(v20) = category;
  [sharedService captureTransitPlaceCardUserAction:v15 onTarget:201 eventValue:0 mapItem:0 timestamp:index resultIndex:d targetID:CFAbsoluteTimeGetCurrent() providerID:0 animationID:-1 transitCardCategory:v20 transitSystem:systemCopy transitDepartureSequence:sequenceCopy transitIncident:incidentCopy];
}

- (void)incidentsSectionController:(id)controller didSelectDetailsForIncidents:(id)incidents
{
  incidentsCopy = incidents;
  delegate = [(MUTransitLineItemViewController *)self delegate];
  [delegate lineItemViewController:self didSelectDetailsForIncidents:incidentsCopy];
}

- (void)nearestStationSectionController:(id)controller didSelectStationAttributionURL:(id)l
{
  lCopy = l;
  delegate = [(MUTransitLineItemViewController *)self delegate];
  [delegate lineItemViewController:self openURL:lCopy];
}

- (void)nearestStationSectionController:(id)controller didTapStationItem:(id)item
{
  itemCopy = item;
  delegate = [(MUTransitLineItemViewController *)self delegate];
  [delegate lineItemViewController:self didSelectNearestStation:itemCopy];
}

- (void)headerButtonsSectionController:(id)controller didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options
{
  if (type == 1)
  {
    v9 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation:controller];
    if (v9)
    {
      delegate = [(MUTransitLineItemViewController *)self delegate];
      transportTypePreferenceNumber = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
      [delegate lineItemViewController:self didSelectDirectionsToNearestStation:v9 withTransportTypePreference:transportTypePreferenceNumber];

      [(MUTransitLineItemViewController *)self infoCardAnalyticsDidSelectAction:6003 eventValue:0 feedbackDelegateSelector:0 classification:0];
    }
  }
}

- (void)headerButtonsSectionControllerDidUpdateContent:(id)content
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (self->_headerView)
  {
    [v4 addObject:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_sectionControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 hasContent])
        {
          sectionView = [v11 sectionView];

          if (sectionView)
          {
            sectionView2 = [v11 sectionView];
            [v5 addObject:sectionView2];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  contentStackView = self->_contentStackView;
  v15 = [v5 copy];
  [(MUScrollableStackView *)contentStackView setArrangedSubviews:v15];
}

- (void)setCyclingOptions:(id)options
{
  optionsCopy = options;
  if (self->_cyclingOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_cyclingOptions, options);
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    optionsCopy = v6;
  }
}

- (void)setTransitOptions:(id)options
{
  optionsCopy = options;
  if (self->_transitOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_transitOptions, options);
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    optionsCopy = v6;
  }
}

- (void)setWalkingOptions:(id)options
{
  optionsCopy = options;
  if (self->_walkingOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_walkingOptions, options);
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    optionsCopy = v6;
  }
}

- (void)setAutomobileOptions:(id)options
{
  optionsCopy = options;
  if (self->_automobileOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_automobileOptions, options);
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    optionsCopy = v6;
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  scrollViewDelegate = [(MUTransitLineItemViewController *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(MUTransitLineItemViewController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(MUTransitLineItemViewController *)self scrollViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    scrollViewDelegate2 = [(MUTransitLineItemViewController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [(MUScrollableStackView *)self->_contentStackView adjustedContentInset];
  v8 = v5 - v7;
  [(MUScrollableStackView *)self->_contentStackView adjustedContentInset];
  contentStackView = self->_contentStackView;

  [(MUScrollableStackView *)contentStackView setContentOffset:animatedCopy animated:v8, v6 - v9];
}

- (void)_openAttributionURLStrings:(id)strings usingAttribution:(id)attribution
{
  v25 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  attributionCopy = attribution;
  if ([stringsCopy count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = stringsCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v18 = attributionCopy;
      v19 = stringsCopy;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v20 + 1) + 8 * i)];
          scheme = [v13 scheme];
          if ([scheme isEqualToString:@"http"])
          {

LABEL_13:
            delegate = [(MUTransitLineItemViewController *)self delegate];
            [delegate lineItemViewController:self openURL:v13];

            attributionCopy = v18;
            stringsCopy = v19;
            goto LABEL_14;
          }

          scheme2 = [v13 scheme];
          v16 = [scheme2 isEqualToString:@"https"];

          if (v16)
          {
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        attributionCopy = v18;
        stringsCopy = v19;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x1E696F198] launchAttributionURLs:v8 withAttribution:attributionCopy completionHandler:0];
  }

LABEL_14:
}

- (void)placeDescriptionSectionControllerDidTapAttribution:(id)attribution
{
  transitLineItem = [(MUTransitLineItemViewController *)self transitLineItem];
  encyclopedicInfo = [transitLineItem encyclopedicInfo];
  encyclopedicAttribution = [encyclopedicInfo encyclopedicAttribution];

  v6 = MEMORY[0x1E696F478];
  transitLineItem2 = [(MUTransitLineItemViewController *)self transitLineItem];
  encyclopedicInfo2 = [transitLineItem2 encyclopedicInfo];
  v9 = [v6 attributionFromEncyclopedicInfo:encyclopedicInfo2];

  attributionURLs = [encyclopedicAttribution attributionURLs];
  [(MUTransitLineItemViewController *)self _openAttributionURLStrings:attributionURLs usingAttribution:v9];
}

- (void)lineItemManager:(id)manager didSelectReportAProblemWithEnvironment:(id)environment
{
  [(MUTransitLineItemViewController *)self infoCardAnalyticsDidSelectAction:5013 eventValue:0 feedbackDelegateSelector:0 classification:0];
  delegate = [(MUTransitLineItemViewController *)self delegate];
  [delegate lineItemViewControllerDidSelectReportAProblem:self];
}

- (void)_attachLoadingOverlayIfNeeded
{
  if ([(MUTransitLineItemViewController *)self isLoading])
  {
    loadingOverlayController = self->_loadingOverlayController;
    if (!loadingOverlayController)
    {
      v4 = [MULoadingOverlayController alloc];
      view = [(MUTransitLineItemViewController *)self view];
      v6 = [(MULoadingOverlayController *)v4 initWithParentView:view contentView:self->_contentStackView];
      v7 = self->_loadingOverlayController;
      self->_loadingOverlayController = v6;

      loadingOverlayController = self->_loadingOverlayController;
    }

    [(MULoadingOverlayController *)loadingOverlayController attachLoadingOverlay];
  }
}

- (void)resetNearestStation
{
  [(MUNearestStationProvider *)self->_nearbyStationProvider resetNearestStation];
  [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setPrimaryButtonType:0];
  [(MKETAProvider *)self->_etaProvider configureWithNearestStationMapItem:0];
  nearestStationSectionController = self->_nearestStationSectionController;

  [(MUNearestStationSectionController *)nearestStationSectionController updateWithMapItem:0 isLoading:0];
}

- (void)_fetchNearestStation
{
  transitLineItem = [(MUTransitLineItemViewController *)self transitLineItem];
  muid = [transitLineItem muid];
  lastRequestedNearestID = [(MUNearestStationProvider *)self->_nearbyStationProvider lastRequestedNearestID];

  if (muid != lastRequestedNearestID)
  {
    goto LABEL_7;
  }

  nearestStation = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];

  headerButtonsSectionController = self->_headerButtonsSectionController;
  if (!nearestStation)
  {
    [(MUHeaderButtonsSectionController *)headerButtonsSectionController setPrimaryButtonType:0];
    [(MKETAProvider *)self->_etaProvider cancel];
LABEL_7:
    transitLineItem2 = [(MUTransitLineItemViewController *)self transitLineItem];
    v12 = MKMapItemIdentifierFromGEOTransitLine();

    objc_initWeak(&location, self);
    nearbyStationProvider = self->_nearbyStationProvider;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__MUTransitLineItemViewController__fetchNearestStation__block_invoke;
    v15[3] = &unk_1E821BAC8;
    objc_copyWeak(&v16, &location);
    [(MUNearestStationProvider *)nearbyStationProvider fetchStationForLineItemIdentifier:v12 completion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);

    return;
  }

  [(MUHeaderButtonsSectionController *)headerButtonsSectionController setPrimaryButtonType:1];
  etaProvider = self->_etaProvider;
  nearestStation2 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];
  [(MKETAProvider *)etaProvider configureWithNearestStationMapItem:nearestStation2];

  nearestStationSectionController = self->_nearestStationSectionController;
  nearestStation3 = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];
  [(MUNearestStationSectionController *)nearestStationSectionController updateWithMapItem:nearestStation3 isLoading:0];
}

void __55__MUTransitLineItemViewController__fetchNearestStation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 129);
    v4 = WeakRetained;
    v3 = [*(WeakRetained + 128) nearestStation];
    [v2 updateWithMapItem:v3 isLoading:0];

    WeakRetained = v4;
  }
}

- (id)_footerSectionController
{
  v3 = [MUTransitFooterActionsSectionController alloc];
  transitLineItem = [(MUTransitLineItemViewController *)self transitLineItem];
  v5 = [(MUTransitFooterActionsSectionController *)v3 initWithTransitLineItem:transitLineItem actionManager:self->_actionManager];

  return v5;
}

- (void)_updatePocketInsets
{
  [(MUTransitLineItemViewController *)self heightForContentAboveTitle];
  v4 = v3 + 72.0;
  scrollView = [(MUTransitLineItemViewController *)self scrollView];
  [scrollView _setPocketInsets:{v4, 0.0, 0.0, 0.0}];
}

- (void)_updateSectionControllers
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_transitLineItem)
  {
    [(MKETAProvider *)self->_etaProvider cancel];
    v5 = [objc_alloc(MEMORY[0x1E696F1D0]) initWithLineItem:self->_transitLineItem];
    etaProvider = self->_etaProvider;
    self->_etaProvider = v5;

    [(MKETAProvider *)self->_etaProvider setDelegate:self];
    automobileOptions = [(MUTransitLineItemViewController *)self automobileOptions];
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:automobileOptions];

    walkingOptions = [(MUTransitLineItemViewController *)self walkingOptions];
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:walkingOptions];

    transitOptions = [(MUTransitLineItemViewController *)self transitOptions];
    [(MKETAProvider *)self->_etaProvider setTransitOptions:transitOptions];

    cyclingOptions = [(MUTransitLineItemViewController *)self cyclingOptions];
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:cyclingOptions];
  }

  v11 = [MUTransitLineItemHeaderViewModel alloc];
  transitLineItem = [(MUTransitLineItemViewController *)self transitLineItem];
  v71 = [(MUTransitLineItemHeaderViewModel *)v11 initWithTransitLineItem:transitLineItem];

  objc_initWeak(&location, self);
  v13 = [MUPlaceHeaderView alloc];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke;
  v85[3] = &unk_1E821BA58;
  objc_copyWeak(&v86, &location);
  v14 = [(MUPlaceHeaderView *)v13 initWithViewModel:v71 trailingConstraintProvider:v85 paddingConstraintProvider:&__block_literal_global_25241];
  headerView = self->_headerView;
  self->_headerView = v14;

  [v4 addObject:self->_headerView];
  v16 = [MUHeaderButtonsSectionController alloc];
  v17 = self->_etaProvider;
  v18 = objc_alloc_init(MUHeaderButtonsViewConfiguration);
  v19 = [(MUHeaderButtonsSectionController *)v16 initWithETAProvider:v17 headerButtonsConfiguration:v18];
  headerButtonsSectionController = self->_headerButtonsSectionController;
  self->_headerButtonsSectionController = v19;

  [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setPrimaryButtonType:0];
  [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setDelegate:self];
  v21 = self->_headerButtonsSectionController;
  v22 = v3;
  v23 = v21;
  if (v23)
  {
    [v22 addObject:v23];
  }

  if (![(MUTransitLineItemViewController *)self isLoading])
  {
    mapRegion = [(GEOTransitLineItem *)self->_transitLineItem mapRegion];
    v25 = mapRegion == 0;

    if (!v25)
    {
      v26 = MEMORY[0x1E696F490];
      v27 = _MULocalizedStringFromThisBundle(@"View [Line Card]");
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke_3;
      v83[3] = &unk_1E821BAA0;
      objc_copyWeak(&v84, &location);
      v28 = [v26 actionButtonControllerWithTitle:v27 subTitle:0 selectedBlock:v83 disabled:0 symbolName:@"map"];

      [(MUHeaderButtonsSectionController *)self->_headerButtonsSectionController setSecondaryButtonController:v28];
      objc_destroyWeak(&v84);
    }
  }

  v29 = [MUNearestStationSectionController alloc];
  transitLineItem2 = [(MUTransitLineItemViewController *)self transitLineItem];
  v31 = [(MUNearestStationSectionController *)v29 initWithTransitLineItem:transitLineItem2 etaProvider:self->_etaProvider];

  [(MUNearestStationSectionController *)v31 setNearestStationDelegate:self];
  objc_storeStrong(&self->_nearestStationSectionController, v31);
  v32 = v22;
  v73 = v31;
  if (v73)
  {
    [v32 addObject:v73];
  }

  transitLineItem3 = [(MUTransitLineItemViewController *)self transitLineItem];
  hasEncyclopedicInfo = [transitLineItem3 hasEncyclopedicInfo];

  if (hasEncyclopedicInfo)
  {
    transitLineItem4 = [(MUTransitLineItemViewController *)self transitLineItem];
    encyclopedicInfo = [transitLineItem4 encyclopedicInfo];

    v37 = [MUPlaceDescriptionConfiguration configurationWithEncyclopedicInfo:encyclopedicInfo];
    v38 = [MUPlaceDescriptionSectionController alloc];
    nearestStation = [(MUNearestStationProvider *)self->_nearbyStationProvider nearestStation];
    v40 = [(MUPlaceDescriptionSectionController *)v38 initWithMapItem:nearestStation configuration:v37];

    [(MUPlaceDescriptionSectionController *)v40 setActionDelegate:self];
    v41 = v32;
    v42 = v40;
    if (v42)
    {
      [v41 addObject:v42];
    }
  }

  v43 = [MUTransitLineIncidentsSectionController alloc];
  transitLineItem5 = [(MUTransitLineItemViewController *)self transitLineItem];
  v45 = [(MUTransitLineIncidentsSectionController *)v43 initWithTransitLineItem:transitLineItem5];

  [(MUTransitLineIncidentsSectionController *)v45 setIncidentsDelegate:self];
  v46 = v32;
  v72 = v45;
  if (v72)
  {
    [v46 addObject:v72];
  }

  _footerSectionController = [(MUTransitLineItemViewController *)self _footerSectionController];
  v74 = v46;
  v48 = _footerSectionController;
  if (v48)
  {
    [v74 addObject:v48];
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v49 = self->_sectionControllers;
  v50 = [(NSArray *)v49 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v50)
  {
    v51 = *v80;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v80 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v79 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          sectionViewController = [v53 sectionViewController];
          v55 = sectionViewController == 0;

          if (!v55)
          {
            sectionViewController2 = [v53 sectionViewController];
            [sectionViewController2 removeFromParentViewController];
          }
        }
      }

      v50 = [(NSArray *)v49 countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v50);
  }

  v57 = [v74 copy];
  sectionControllers = self->_sectionControllers;
  self->_sectionControllers = v57;

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v59 = self->_sectionControllers;
  v60 = [(NSArray *)v59 countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v60)
  {
    v61 = *v76;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v76 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = *(*(&v75 + 1) + 8 * j);
        if ([v63 hasContent])
        {
          sectionView = [v63 sectionView];
          v65 = sectionView == 0;

          if (!v65)
          {
            sectionView2 = [v63 sectionView];
            [v4 addObject:sectionView2];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          sectionViewController3 = [v63 sectionViewController];
          v68 = sectionViewController3 == 0;

          if (!v68)
          {
            sectionViewController4 = [v63 sectionViewController];
            [(MUTransitLineItemViewController *)self addChildViewController:sectionViewController4];

            sectionViewController5 = [v63 sectionViewController];
            [sectionViewController5 didMoveToParentViewController:self];
          }
        }

        [v63 setActive:1];
      }

      v60 = [(NSArray *)v59 countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v60);
  }

  [(MUScrollableStackView *)self->_contentStackView setArrangedSubviews:v4];
  objc_destroyWeak(&v86);
  objc_destroyWeak(&location);
}

double __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    [v3 lineItemViewControllerHeaderTitleTrailingConstant:v2];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void __60__MUTransitLineItemViewController__updateSectionControllers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 lineItemViewControllerDidSelectViewOnMap:v3];

    WeakRetained = v3;
  }
}

- (void)setTransitLineItem:(id)item loading:(BOOL)loading
{
  loadingCopy = loading;
  itemCopy = item;
  transitLineItem = [(MUTransitLineItemViewController *)self transitLineItem];
  if (transitLineItem == itemCopy)
  {
    isLoading = [(MUTransitLineItemViewController *)self isLoading];

    if (isLoading == loadingCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(MUTransitLineItemViewController *)self setTransitLineItem:itemCopy];
  [(MUTransitLineItemViewController *)self setLoading:loadingCopy];
  if (![(MUTransitLineItemViewController *)self isLoading])
  {
    [(MUTransitLineItemViewController *)self _attachLoadingOverlayIfNeeded];
  }

  if ([(MUTransitLineItemViewController *)self isViewLoaded])
  {
    [(MUTransitLineItemViewController *)self _updateSectionControllers];
    [(MUTransitLineItemViewController *)self _fetchNearestStation];
    if ([(MUTransitLineItemViewController *)self isLoading])
    {
      [(MUTransitLineItemViewController *)self _removeLoadingOverlayIfNeeded];
    }

    [(MUTransitLineItemViewController *)self _updatePocketInsets];
  }

LABEL_10:
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MUTransitLineItemViewController;
  [(MUTransitLineItemViewController *)&v4 viewWillAppear:appear];
  [(MUTransitLineItemViewController *)self _fetchNearestStation];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MUTransitLineItemViewController;
  [(MUTransitLineItemViewController *)&v4 viewDidLoad];
  view = [(MUTransitLineItemViewController *)self view];
  [view setAccessibilityIdentifier:@"TransitLineItemView"];

  [(MUTransitLineItemViewController *)self _updateSectionControllers];
  [(MUTransitLineItemViewController *)self _updatePocketInsets];
}

- (void)setTransitLineItem:(id)item
{
  itemCopy = item;
  if (self->_transitLineItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_transitLineItem, item);
    itemCopy = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUTransitLineItemViewController;
  [(MUTransitLineItemViewController *)&v4 viewDidLayoutSubviews];
  view = [(MUTransitLineItemViewController *)self view];
  [view bounds];
  [(MUScrollableStackView *)self->_contentStackView setFrame:?];

  [(MULoadingOverlayController *)self->_loadingOverlayController updateLayoutForBoundsChange];
}

- (void)_setupContentView
{
  v3 = [MUScrollableStackView alloc];
  v4 = [(MUScrollableStackView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentStackView = self->_contentStackView;
  self->_contentStackView = v4;

  [(MUScrollableStackView *)self->_contentStackView setAxis:1];
  [(MUScrollableStackView *)self->_contentStackView setSpacing:20.0];
  [(MUScrollableStackView *)self->_contentStackView setDelegate:self];
  [(MUScrollableStackView *)self->_contentStackView setAlwaysBounceVertical:1];
  [(MUScrollableStackView *)self->_contentStackView setScrollEnabled:1];
  view = [(MUTransitLineItemViewController *)self view];
  [view addSubview:self->_contentStackView];
}

- (MUTransitLineItemViewController)initWithTransitLineItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = MUTransitLineItemViewController;
  v6 = [(MUTransitLineItemViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitLineItem, item);
    v7->_loading = 0;
    v8 = [[MUTransitLineItemActionManager alloc] initWithDelegate:v7 analyticsDelegate:v7];
    actionManager = v7->_actionManager;
    v7->_actionManager = v8;

    v10 = objc_alloc_init(MUNearestStationProvider);
    nearbyStationProvider = v7->_nearbyStationProvider;
    v7->_nearbyStationProvider = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696F1D0]);
    etaProvider = v7->_etaProvider;
    v7->_etaProvider = v12;

    [(MKETAProvider *)v7->_etaProvider setDelegate:v7];
    [(MUTransitLineItemViewController *)v7 _setupContentView];
  }

  return v7;
}

@end