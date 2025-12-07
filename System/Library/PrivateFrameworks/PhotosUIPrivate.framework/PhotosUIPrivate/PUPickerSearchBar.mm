@interface PUPickerSearchBar
- (CGSize)intrinsicContentSize;
- (PUPickerSearchBar)initWithPhotoLibrary:(id)library searchHandler:(id)handler searchContextualVideoThumbnailHandler:(id)thumbnailHandler scopeHandler:(id)scopeHandler;
- (void)updateContainerFromPickerConfiguration:(id)configuration;
- (void)updateContainerFromSuggestion:(id)suggestion;
- (void)updateIsEditing:(BOOL)editing;
- (void)updateSearchText:(id)text;
@end

@implementation PUPickerSearchBar

- (PUPickerSearchBar)initWithPhotoLibrary:(id)library searchHandler:(id)handler searchContextualVideoThumbnailHandler:(id)thumbnailHandler scopeHandler:(id)scopeHandler
{
  v9 = _Block_copy(handler);
  v10 = _Block_copy(thumbnailHandler);
  v11 = _Block_copy(scopeHandler);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  return sub_1B3810438(library, sub_1B3811720, v12, sub_1B3811728, v13, sub_1B3811730, v14);
}

- (void)updateSearchText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_1B3810D2C(textCopy);
}

- (void)updateContainerFromSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  sub_1B3810DC4(suggestionCopy);
}

- (void)updateContainerFromPickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1B3810E9C(configurationCopy);
}

- (void)updateIsEditing:(BOOL)editing
{
  selfCopy = self;
  sub_1B3810FA8();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1B3811110();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end