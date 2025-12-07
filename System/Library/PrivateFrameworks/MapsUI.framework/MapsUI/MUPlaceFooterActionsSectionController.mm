@interface MUPlaceFooterActionsSectionController
- (MUPlaceFooterActionsSectionController)initWithMapItem:(id)item actionManager:(id)manager;
- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options;
@end

@implementation MUPlaceFooterActionsSectionController

- (id)analyticsModuleForAction:(int)action presentationOptions:(id)options
{
  v4 = MEMORY[0x1E69A1B10];
  v5 = [(MUPlaceFooterActionsSectionController *)self analyticsModuleTypeForAction:*&action presentationOptions:options];

  return [v4 moduleFromModuleType:v5];
}

- (MUPlaceFooterActionsSectionController)initWithMapItem:(id)item actionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MUPlaceFooterActionsSectionController;
  v7 = [(MUPlaceSectionController *)&v11 initWithMapItem:item];
  if (v7)
  {
    v8 = [[MUFooterActionsSectionController alloc] initWithActionManager:managerCopy];
    underlyingSectionController = v7->_underlyingSectionController;
    v7->_underlyingSectionController = v8;
  }

  return v7;
}

@end