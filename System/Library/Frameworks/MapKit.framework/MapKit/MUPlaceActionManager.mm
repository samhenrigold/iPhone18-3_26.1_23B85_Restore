@interface MUPlaceActionManager
- (BOOL)_showWebsite;
- (id)createFooterActions;
- (id)createMenuActions;
- (void)_addAddressFooterActions:(id)actions;
- (void)_addBasicFooterActions:(id)actions;
- (void)_addDeveloperPlaceCardFooterActions:(id)actions;
- (void)_addDroppedPinFooterActions:(id)actions;
- (void)_addHomeActionIfNeeded:(id)needed;
- (void)_addItemIfInMapsApp:(id)app actions:(id)actions;
- (void)_addMyLocationFooterActions:(id)actions;
- (void)_addReportAProblemActionIfNeed:(id)need;
@end

@implementation MUPlaceActionManager

- (BOOL)_showWebsite
{
  contact = [(MKPlaceActionManager *)self contact];
  urlAddresses = [contact urlAddresses];
  if ([urlAddresses count])
  {
    placeItem = [(MKPlaceActionManager *)self placeItem];
    v6 = (objc_msgSend_options(placeItem) & 8) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addHomeActionIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(MKPlaceActionManager *)self _showHomeShortcutItem])
  {
    homeActionItem = [(MKPlaceActionManager *)self homeActionItem];
    [neededCopy addObject:homeActionItem];
  }
}

- (void)_addReportAProblemActionIfNeed:(id)need
{
  needCopy = need;
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  countryCode = [mEMORY[0x1E69A1CD8] countryCode];
  v6 = [countryCode isEqualToString:@"KR"];

  if (!v6 || (objc_msgSend_options(self) & 0x80000) == 0 && (objc_msgSend_options(self) & 0x40000) == 0)
  {
    reportAProblemFooterAction = [(MKPlaceActionManager *)self reportAProblemFooterAction];
    [needCopy addObject:reportAProblemFooterAction];
  }
}

- (void)_addAddressFooterActions:(id)actions
{
  actionsCopy = actions;
  reportAProblemAddPlaceFooterAction = [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
  [(MUPlaceActionManager *)self _addItemIfInMapsApp:reportAProblemAddPlaceFooterAction actions:actionsCopy];

  [(MUPlaceActionManager *)self _addReportAProblemActionIfNeed:actionsCopy];
  [(MUPlaceActionManager *)self _addHomeActionIfNeeded:actionsCopy];
}

- (void)_addMyLocationFooterActions:(id)actions
{
  actionsCopy = actions;
  if ((objc_msgSend_options(self) & 0x20000000) != 0)
  {
    [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
  }

  else
  {
    [(MKPlaceActionManager *)self reportAProblemFooterAction];
  }
  v5 = ;
  [actionsCopy addObject:v5];
}

- (void)_addDroppedPinFooterActions:(id)actions
{
  actionsCopy = actions;
  reportAProblemAddPlaceFooterAction = [(MKPlaceActionManager *)self reportAProblemAddPlaceFooterAction];
  [(MUPlaceActionManager *)self _addItemIfInMapsApp:reportAProblemAddPlaceFooterAction actions:actionsCopy];

  [(MUPlaceActionManager *)self _addHomeActionIfNeeded:actionsCopy];
  removeMarkerItem = [(MKPlaceActionManager *)self removeMarkerItem];
  [actionsCopy addObject:removeMarkerItem];
}

- (void)_addDeveloperPlaceCardFooterActions:(id)actions
{
  actionsCopy = actions;
  developerPlaceCardGetDirectionsFooterAction = [(MKPlaceActionManager *)self developerPlaceCardGetDirectionsFooterAction];
  [actionsCopy addObject:developerPlaceCardGetDirectionsFooterAction];

  developerPlaceCardOpenInMapsFooterAction = [(MKPlaceActionManager *)self developerPlaceCardOpenInMapsFooterAction];
  [actionsCopy addObject:developerPlaceCardOpenInMapsFooterAction];
}

- (void)_addBasicFooterActions:(id)actions
{
  actionsCopy = actions;
  if ([(MKPlaceActionManager *)self _showReportAProblemFooterAction])
  {
    reportAProblemFooterAction = [(MKPlaceActionManager *)self reportAProblemFooterAction];
    [actionsCopy addObject:reportAProblemFooterAction];
  }

  [(MUPlaceActionManager *)self _addHomeActionIfNeeded:actionsCopy];
  if ([(MKPlaceActionManager *)self _canShowClaimThisBusiness])
  {
    claimBusinessActionItem = [(MKPlaceActionManager *)self claimBusinessActionItem];
    [actionsCopy addObject:claimBusinessActionItem];
  }
}

- (id)createMenuActions
{
  array = [MEMORY[0x1E695DF70] array];
  flyoverActionItem = [(MKPlaceActionManager *)self flyoverActionItem];
  if (flyoverActionItem)
  {
    [array addObject:flyoverActionItem];
  }

  dataProvider = [(MKPlaceActionManager *)self dataProvider];
  supportsAddingPhotos = [dataProvider supportsAddingPhotos];

  if (supportsAddingPhotos)
  {
    v7 = [MKPlaceCardActionItem actionItemWithType:9 actionDataProvider:self enabled:1];
    [array addObject:v7];
  }

  if (GEOSupportsOfflineMaps() && (objc_msgSend_options(self) & 0x1000000000) == 0)
  {
    v8 = [MKPlaceCardActionItem actionItemWithType:34];
    [array addObject:v8];
  }

  v14.receiver = self;
  v14.super_class = MUPlaceActionManager;
  v9 = [(MKPlaceActionManager *)&v14 createRowActionsWithStyle:0];
  [array addObjectsFromArray:v9];

  v13.receiver = self;
  v13.super_class = MUPlaceActionManager;
  createFooterActions = [(MKPlaceActionManager *)&v13 createFooterActions];
  [array addObjectsFromArray:createFooterActions];

  v11 = [array copy];

  return v11;
}

- (void)_addItemIfInMapsApp:(id)app actions:(id)actions
{
  appCopy = app;
  actionsCopy = actions;
  if ((objc_msgSend_options(self) & 0x20000000) != 0)
  {
    [actionsCopy addObject:appCopy];
  }
}

- (id)createFooterActions
{
  mapItem = [(MKPlaceActionManager *)self mapItem];
  _placeDisplayStyle = [mapItem _placeDisplayStyle];

  if (_placeDisplayStyle == 2)
  {
    shortPlacecardFooterActions = [(MKPlaceActionManager *)self shortPlacecardFooterActions];
    goto LABEL_14;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_options(self);
  isCurrentLocation = [(MKPlaceActionManager *)self isCurrentLocation];
  placeItem = [(MKPlaceActionManager *)self placeItem];
  v10 = objc_msgSend_options(placeItem);

  placeItem2 = [(MKPlaceActionManager *)self placeItem];
  mapItem2 = [placeItem2 mapItem];
  _isMapItemTypeAddress = [mapItem2 _isMapItemTypeAddress];

  if ((v7 & 0x8000000000) != 0)
  {
    [(MUPlaceActionManager *)self _addDeveloperPlaceCardFooterActions:v6];
  }

  else
  {
    if (isCurrentLocation)
    {
      [(MUPlaceActionManager *)self _addMyLocationFooterActions:v6];
LABEL_12:
      [(MKPlaceActionManager *)self _addInternalOnlyActions:v6];
      goto LABEL_13;
    }

    if ((v10 & 2) != 0)
    {
      [(MUPlaceActionManager *)self _addDroppedPinFooterActions:v6];
      goto LABEL_12;
    }

    if (!_isMapItemTypeAddress)
    {
      [(MUPlaceActionManager *)self _addBasicFooterActions:v6];
      goto LABEL_12;
    }

    [(MUPlaceActionManager *)self _addAddressFooterActions:v6];
  }

LABEL_13:
  shortPlacecardFooterActions = [v6 copy];

LABEL_14:

  return shortPlacecardFooterActions;
}

@end