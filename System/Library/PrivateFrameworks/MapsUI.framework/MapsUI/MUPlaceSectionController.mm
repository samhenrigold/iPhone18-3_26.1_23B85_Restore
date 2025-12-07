@interface MUPlaceSectionController
- (BOOL)hasContent;
- (CGRect)impressionsFrame;
- (GEORevealedPlaceCardModule)revealedAnalyticsModule;
- (MUImpressionElement)impressionElement;
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (MUPersonalizedSuggestionSectionArbiterDelegate)personalizedSuggestionsArbiterDelegate;
- (MUPlaceSectionController)initWithMapItem:(id)item;
- (MUPlaceSectionControllerDelegate)delegate;
- (NSArray)sectionViews;
- (UIView)sectionView;
- (id)_placeCardImpressionsMetadata;
- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options;
- (int)analyticsTargetForAction:(int)action presentationOptions:(id)options;
- (void)captureInfoCardAction:(int)action eventValue:(id)value feedbackType:(int)type actionRichProviderId:(id)id presentationOptions:(id)options classification:(id)classification;
- (void)captureInfoCardAction:(int)action eventValue:(id)value feedbackType:(int)type presentationOptions:(id)options classification:(id)classification;
- (void)captureInfoCardAction:(int)action eventValue:(id)value presentationOptions:(id)options classification:(id)classification;
- (void)captureInfoCardAction:(int)action target:(int)target eventValue:(id)value presentationOptions:(id)options classification:(id)classification;
- (void)captureInfoCardPartnerAction:(int)action eventValue:(id)value sharedStateButtonList:(id)list presentationOptions:(id)options classification:(id)classification;
- (void)captureInfoCardPartnerAction:(int)action target:(int)target eventValue:(id)value sharedStateButtonList:(id)list presentationOptions:(id)options classification:(id)classification;
@end

@implementation MUPlaceSectionController

- (MUPersonalizedSuggestionSectionArbiterDelegate)personalizedSuggestionsArbiterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_personalizedSuggestionsArbiterDelegate);

  return WeakRetained;
}

- (MUPlaceSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (CGRect)impressionsFrame
{
  v31 = *MEMORY[0x1E69E9840];
  sectionViews = [(MUPlaceSectionController *)self sectionViews];
  v3 = [sectionViews count];
  firstObject = [sectionViews firstObject];
  [firstObject frame];
  x = v5;
  y = v7;
  width = v9;
  height = v11;

  if (v3 != 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = sectionViews;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v26 + 1) + 8 * v17) frame];
          v35.origin.x = v18;
          v35.origin.y = v19;
          v35.size.width = v20;
          v35.size.height = v21;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)_placeCardImpressionsMetadata
{
  v3 = objc_alloc_init(MUPlaceCardImpressionsMetadata);
  mapItem = [(MUPlaceSectionController *)self mapItem];
  -[MUPlaceCardImpressionsMetadata setBusinessId:](v3, "setBusinessId:", [mapItem _muid]);

  mapItem2 = [(MUPlaceSectionController *)self mapItem];
  place = [mapItem2 place];
  -[MUPlaceCardImpressionsMetadata setLocalSearchProviderId:](v3, "setLocalSearchProviderId:", [place localSearchProviderID]);

  [(MUPlaceSectionController *)self analyticsModuleTypeForAction:0 presentationOptions:0];
  [(MUPlaceCardImpressionsMetadata *)v3 setModuleType:GEOPDPlaceDataLayoutConfigurationFromGEOModuleType()];

  return v3;
}

- (MUImpressionElement)impressionElement
{
  if ([(MUPlaceSectionController *)self isImpressionable])
  {
    impressionElement = self->_impressionElement;
    if (!impressionElement)
    {
      [MUPlaceModuleVisibilityConfigStore visibilityThresholdForModuleType:[(MUPlaceSectionController *)self analyticsModuleTypeForAction:0 presentationOptions:0]];
      v5 = v4;
      v6 = [MUImpressionElement alloc];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v8 = [(MUImpressionElement *)v6 initWithElementIdentifier:uUID visibilityThreshold:v5];
      v9 = self->_impressionElement;
      self->_impressionElement = v8;

      _placeCardImpressionsMetadata = [(MUPlaceSectionController *)self _placeCardImpressionsMetadata];
      [(MUImpressionElement *)self->_impressionElement setCustomData:_placeCardImpressionsMetadata];

      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [(MUImpressionElement *)self->_impressionElement setDebugString:v12];

      impressionElement = self->_impressionElement;
    }

    v13 = impressionElement;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (GEORevealedPlaceCardModule)revealedAnalyticsModule
{
  if ([(MUPlaceSectionController *)self isImpressionable])
  {
    v3 = [MEMORY[0x1E69A24A8] moduleWithType:{-[MUPlaceSectionController analyticsModuleTypeForAction:presentationOptions:](self, "analyticsModuleTypeForAction:presentationOptions:", 0, 0)}];
    [(MUPlaceSectionController *)self _populateRevealedAnalyticsModule:v3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options
{
  v5 = [MEMORY[0x1E69A1B10] moduleFromModuleType:{-[MUPlaceSectionController analyticsModuleTypeForAction:presentationOptions:](self, "analyticsModuleTypeForAction:presentationOptions:", *&action, options)}];
  [(MUPlaceSectionController *)self _populateAnalyticsModule:v5];

  return v5;
}

- (void)captureInfoCardAction:(int)action eventValue:(id)value presentationOptions:(id)options classification:(id)classification
{
  v8 = *&action;
  classificationCopy = classification;
  optionsCopy = options;
  valueCopy = value;
  [(MUPlaceSectionController *)self captureInfoCardAction:v8 target:[(MUPlaceSectionController *)self analyticsTargetForAction:v8 presentationOptions:optionsCopy] eventValue:valueCopy presentationOptions:optionsCopy classification:classificationCopy];
}

- (void)captureInfoCardPartnerAction:(int)action eventValue:(id)value sharedStateButtonList:(id)list presentationOptions:(id)options classification:(id)classification
{
  v10 = *&action;
  valueCopy = value;
  listCopy = list;
  optionsCopy = options;
  classificationCopy = classification;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    analyticsDelegate2 = [(MUPlaceSectionController *)self analyticsDelegate];
    [analyticsDelegate2 infoCardAnalyticsPopulateSharedStateWithButtonList:listCopy];
  }

  [(MUPlaceSectionController *)self captureInfoCardAction:v10 eventValue:valueCopy presentationOptions:optionsCopy classification:classificationCopy];
}

- (void)captureInfoCardPartnerAction:(int)action target:(int)target eventValue:(id)value sharedStateButtonList:(id)list presentationOptions:(id)options classification:(id)classification
{
  v11 = *&target;
  v12 = *&action;
  valueCopy = value;
  listCopy = list;
  optionsCopy = options;
  classificationCopy = classification;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    analyticsDelegate2 = [(MUPlaceSectionController *)self analyticsDelegate];
    [analyticsDelegate2 infoCardAnalyticsPopulateSharedStateWithButtonList:listCopy];
  }

  [(MUPlaceSectionController *)self captureInfoCardAction:v12 target:v11 eventValue:valueCopy presentationOptions:optionsCopy classification:classificationCopy];
}

- (void)captureInfoCardAction:(int)action target:(int)target eventValue:(id)value presentationOptions:(id)options classification:(id)classification
{
  v9 = *&target;
  v10 = *&action;
  classificationCopy = classification;
  optionsCopy = options;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  v15 = [(MUPlaceSectionController *)self analyticsModuleForAction:v10 presentationOptions:optionsCopy];

  LODWORD(v16) = 0;
  [analyticsDelegate infoCardAnalyticsDidSelectAction:v10 target:v9 eventValue:valueCopy actionURL:0 photoID:0 moduleMetadata:v15 feedbackDelegateSelector:v16 actionRichProviderId:0 classification:classificationCopy];
}

- (void)captureInfoCardAction:(int)action eventValue:(id)value feedbackType:(int)type actionRichProviderId:(id)id presentationOptions:(id)options classification:(id)classification
{
  v10 = *&type;
  v12 = *&action;
  classificationCopy = classification;
  optionsCopy = options;
  idCopy = id;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  v18 = [(MUPlaceSectionController *)self analyticsTargetForAction:v12 presentationOptions:optionsCopy];
  v19 = [(MUPlaceSectionController *)self analyticsModuleForAction:v12 presentationOptions:optionsCopy];

  [analyticsDelegate infoCardAnalyticsDidSelectAction:v12 target:v18 eventValue:valueCopy moduleMetadata:v19 feedbackDelegateSelector:v10 actionRichProviderId:idCopy classification:classificationCopy];
}

- (void)captureInfoCardAction:(int)action eventValue:(id)value feedbackType:(int)type presentationOptions:(id)options classification:(id)classification
{
  v8 = *&type;
  v10 = *&action;
  classificationCopy = classification;
  optionsCopy = options;
  valueCopy = value;
  analyticsDelegate = [(MUPlaceSectionController *)self analyticsDelegate];
  v15 = [(MUPlaceSectionController *)self analyticsTargetForAction:v10 presentationOptions:optionsCopy];
  v16 = [(MUPlaceSectionController *)self analyticsModuleForAction:v10 presentationOptions:optionsCopy];

  [analyticsDelegate infoCardAnalyticsDidSelectAction:v10 target:v15 eventValue:valueCopy moduleMetadata:v16 feedbackDelegateSelector:v8 actionRichProviderId:0 classification:classificationCopy];
}

- (int)analyticsTargetForAction:(int)action presentationOptions:(id)options
{
  if ([options isForActionBarMoreMenu])
  {
    return 203;
  }

  else
  {
    return 201;
  }
}

- (BOOL)hasContent
{
  sectionViews = [(MUPlaceSectionController *)self sectionViews];
  v3 = [sectionViews count] != 0;

  return v3;
}

- (NSArray)sectionViews
{
  v7[1] = *MEMORY[0x1E69E9840];
  sectionView = [(MUPlaceSectionController *)self sectionView];

  if (sectionView)
  {
    sectionView2 = [(MUPlaceSectionController *)self sectionView];
    v7[0] = sectionView2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_sectionView;
    self->_sectionView = v5;

    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (MUPlaceSectionController)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MUPlaceSectionController;
  v6 = [(MUPlaceSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end