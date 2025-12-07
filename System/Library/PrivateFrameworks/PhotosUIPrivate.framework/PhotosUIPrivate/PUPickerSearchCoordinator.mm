@interface PUPickerSearchCoordinator
- (BOOL)isCompact;
- (BOOL)isEditing;
- (NSAttributedString)searchText;
- (PUPickerSearchCoordinator)initWithPhotoLibrary:(id)library configuration:(id)configuration isCompact:(BOOL)compact searchHandler:(id)handler contextualVideoThumbnailsHandler:(id)thumbnailsHandler scopeHandler:(id)scopeHandler editingHandler:(id)editingHandler;
- (UIBarButtonItem)compactSearchBarButtonItem;
- (UIViewController)suggestionViewContainerController;
- (void)setContainerFromPickerConfiguration:(id)configuration;
- (void)setContainerFromSuggestion:(id)suggestion;
- (void)setIsCompact:(BOOL)compact;
- (void)setIsEditing:(BOOL)editing;
- (void)setIsVisible:(BOOL)visible;
- (void)setSearchText:(id)text;
- (void)setSuggestionViewContainerController:(id)controller;
@end

@implementation PUPickerSearchCoordinator

- (PUPickerSearchCoordinator)initWithPhotoLibrary:(id)library configuration:(id)configuration isCompact:(BOOL)compact searchHandler:(id)handler contextualVideoThumbnailsHandler:(id)thumbnailsHandler scopeHandler:(id)scopeHandler editingHandler:(id)editingHandler
{
  v14 = _Block_copy(handler);
  v15 = _Block_copy(thumbnailsHandler);
  v16 = _Block_copy(scopeHandler);
  v17 = _Block_copy(editingHandler);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  return sub_1B380E600(library, configuration, compact, sub_1B3811C48, v18, sub_1B3811C4C, v19, sub_1B3811C50, v20, sub_1B3811C50, v21);
}

- (UIBarButtonItem)compactSearchBarButtonItem
{
  selfCopy = self;
  v3 = sub_1B380ED54();

  return v3;
}

- (UIViewController)suggestionViewContainerController
{
  selfCopy = self;
  v3 = sub_1B380EF48();

  return v3;
}

- (void)setSuggestionViewContainerController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1B380EFD0();
}

- (void)setIsVisible:(BOOL)visible
{
  selfCopy = self;
  sub_1B380F088(visible);
}

- (BOOL)isCompact
{
  selfCopy = self;
  v3 = sub_1B380F0CC();

  return v3;
}

- (void)setIsCompact:(BOOL)compact
{
  selfCopy = self;
  sub_1B380F244(compact);
}

- (BOOL)isEditing
{
  selfCopy = self;
  v3 = sub_1B380F374();

  return v3 & 1;
}

- (void)setIsEditing:(BOOL)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1B380F3F8(editingCopy);
}

- (NSAttributedString)searchText
{
  selfCopy = self;
  v3 = sub_1B380F468();

  return v3;
}

- (void)setSearchText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_1B380F4F0(textCopy);
}

- (void)setContainerFromSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  sub_1B380F51C(suggestionCopy);
}

- (void)setContainerFromPickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1B380F5DC(configurationCopy);
}

@end