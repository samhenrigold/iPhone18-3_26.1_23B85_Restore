@interface MUTransitDeparturesSectionController
- (BOOL)sectionViewProvider:(id)provider canSelect:(id)select using:(id)using;
- (MUTransitDeparturesSectionController)initWithMapItem:(id)item allowTransitLineSelection:(BOOL)selection departuresDelegate:(id)delegate;
- (MUTransitDeparturesSectionControllerDelegate)departuresDelegate;
- (id)traitsForDeparturesDataSource:(id)source;
- (void)_setupSections;
- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification;
- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector classification:(id)classification;
- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1;
- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification;
- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification;
- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0;
- (void)sectionViewProvider:(id)provider didSelect:(id)select using:(id)using;
- (void)sectionViewProvider:(id)provider didSelectAttribution:(id)attribution;
- (void)sectionViewProvider:(id)provider didSelectConnectionInfo:(id)info;
- (void)sectionViewProvider:(id)provider didSelectDepartureSequence:(id)sequence using:(id)using;
- (void)sectionViewProvider:(id)provider didSelectIncidents:(id)incidents;
- (void)setActive:(BOOL)active;
- (void)transitDeparturesDataSourceWantsReload:(id)reload;
@end

@implementation MUTransitDeparturesSectionController

- (MUTransitDeparturesSectionControllerDelegate)departuresDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_departuresDelegate);

  return WeakRetained;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(MUTransitDeparturesDataSource *)self->_dataSource setIsActive:?];
  }
}

- (void)transitDeparturesDataSourceWantsReload:(id)reload
{
  [(MUTransitDeparturesSectionViewProvider *)self->_viewProvider setNeedsRebuild:1];
  delegate = [(MUPlaceSectionController *)self delegate];
  [delegate placeSectionControllerDidUpdateContent:self];
}

- (id)traitsForDeparturesDataSource:(id)source
{
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  v5 = [departuresDelegate traitsForTransitDeparturesSectionController:self];

  return v5;
}

- (void)sectionViewProvider:(id)provider didSelectIncidents:(id)incidents
{
  incidentsCopy = incidents;
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [departuresDelegate transitDeparturesSectionController:self showIncidents:incidentsCopy];
}

- (void)sectionViewProvider:(id)provider didSelect:(id)select using:(id)using
{
  usingCopy = using;
  selectCopy = select;
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [departuresDelegate transitDeparturesSectionController:self didSelectTransitLine:selectCopy usingPresentationOptions:usingCopy completion:&__block_literal_global_16135];
}

- (void)sectionViewProvider:(id)provider didSelectDepartureSequence:(id)sequence using:(id)using
{
  usingCopy = using;
  sequenceCopy = sequence;
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [departuresDelegate transitDeparturesSectionController:self didSelectDepartureSequence:sequenceCopy usingMapItem:usingCopy];
}

- (void)sectionViewProvider:(id)provider didSelectConnectionInfo:(id)info
{
  infoCopy = info;
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [departuresDelegate transitDeparturesSectionController:self didSelectConnectionInformation:infoCopy];
}

- (void)sectionViewProvider:(id)provider didSelectAttribution:(id)attribution
{
  attributionCopy = attribution;
  [(MUPlaceSectionController *)self captureInfoCardAction:7006 eventValue:0 feedbackType:0 actionRichProviderId:0 classification:0];
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [departuresDelegate transitDeparturesSectionController:self didSelectAttribution:attributionCopy];
}

- (BOOL)sectionViewProvider:(id)provider canSelect:(id)select using:(id)using
{
  usingCopy = using;
  selectCopy = select;
  departuresDelegate = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  LOBYTE(self) = [departuresDelegate transitDeparturesSectionController:self canSelectDepartureSequence:selectCopy usingMapItem:usingCopy];

  return self;
}

- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification
{
  v10 = *&selector;
  v13 = *&target;
  v14 = *&action;
  classificationCopy = classification;
  idCopy = id;
  metadataCopy = metadata;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:v14 target:v13 eventValue:valueCopy moduleMetadata:metadataCopy feedbackDelegateSelector:v10 actionRichProviderId:idCopy classification:classificationCopy];
}

- (void)infoCardTransitAnalyticsDidSelectionAction:(int)action resultIndex:(int64_t)index targetID:(unint64_t)d transitSystem:(id)system transitDepartureSequence:(id)sequence transitCardCategory:(int)category transitIncident:(id)incident feedbackDelegateSelector:(int)self0
{
  v10 = *&category;
  v15 = *&action;
  incidentCopy = incident;
  sequenceCopy = sequence;
  systemCopy = system;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  LODWORD(v20) = selector;
  [analyticsDelegate infoCardTransitAnalyticsDidSelectionAction:v15 resultIndex:index targetID:d transitSystem:systemCopy transitDepartureSequence:sequenceCopy transitCardCategory:v10 transitIncident:incidentCopy feedbackDelegateSelector:v20];
}

- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value actionURL:(id)l photoID:(id)d moduleMetadata:(id)metadata feedbackDelegateSelector:(int)selector actionRichProviderId:(id)self0 classification:(id)self1
{
  v15 = *&target;
  v16 = *&action;
  classificationCopy = classification;
  idCopy = id;
  metadataCopy = metadata;
  dCopy = d;
  lCopy = l;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  LODWORD(v24) = selector;
  [analyticsDelegate infoCardAnalyticsDidSelectAction:v16 target:v15 eventValue:valueCopy actionURL:lCopy photoID:dCopy moduleMetadata:metadataCopy feedbackDelegateSelector:v24 actionRichProviderId:idCopy classification:classificationCopy];
}

- (void)infoCardAnalyticsDidSelectAction:(int)action target:(int)target eventValue:(id)value feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification
{
  v9 = *&selector;
  v11 = *&target;
  v12 = *&action;
  classificationCopy = classification;
  idCopy = id;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:v12 target:v11 eventValue:valueCopy feedbackDelegateSelector:v9 actionRichProviderId:idCopy classification:classificationCopy];
}

- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector actionRichProviderId:(id)id classification:(id)classification
{
  v8 = *&selector;
  v10 = *&action;
  classificationCopy = classification;
  idCopy = id;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:v10 eventValue:valueCopy feedbackDelegateSelector:v8 actionRichProviderId:idCopy classification:classificationCopy];
}

- (void)infoCardAnalyticsDidSelectAction:(int)action eventValue:(id)value feedbackDelegateSelector:(int)selector classification:(id)classification
{
  v6 = *&selector;
  v8 = *&action;
  classificationCopy = classification;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:v8 eventValue:valueCopy feedbackDelegateSelector:v6 classification:classificationCopy];
}

- (void)_setupSections
{
  v3 = [MUTransitDeparturesDataSource alloc];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  v5 = [(MUTransitDeparturesDataSource *)v3 initWithMapItem:mapItem];
  dataSource = self->_dataSource;
  self->_dataSource = v5;

  [(MUTransitDeparturesDataSource *)self->_dataSource setDelegate:self];
  v7 = [[MUTransitDeparturesSectionViewProvider alloc] initWithDataSource:self->_dataSource userInteractionDelegate:self];
  viewProvider = self->_viewProvider;
  self->_viewProvider = v7;

  MEMORY[0x1EEE66BB8](v7, viewProvider);
}

- (MUTransitDeparturesSectionController)initWithMapItem:(id)item allowTransitLineSelection:(BOOL)selection departuresDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MUTransitDeparturesSectionController;
  v8 = [(MUPlaceSectionController *)&v11 initWithMapItem:item];
  v9 = v8;
  if (v8)
  {
    [(MUTransitDeparturesSectionController *)v8 setDeparturesDelegate:delegateCopy];
    [(MUTransitDeparturesSectionController *)v9 _setupSections];
  }

  return v9;
}

@end