@interface ShareSheetViewModel
- (NSArray)metadataValues;
- (NSArray)urlSandboxExtensions;
- (NSDictionary)activitiesByUUID;
- (_TtC16SharingUIService19ShareSheetViewModel)init;
- (void)setActivitiesByUUID:(id)d;
- (void)setCollaborationFooterViewModel:(id)model;
- (void)setCustomHeaderButtonColor:(id)color;
- (void)setCustomHeaderButtonTitle:(id)title;
- (void)setCustomViewController:(id)controller;
- (void)setCustomViewControllerSectionHeightWrapper:(id)wrapper;
- (void)setCustomViewControllerVerticalInsetWrapper:(id)wrapper;
- (void)setMetadataValues:(id)values;
- (void)setNearbyCountSlotID:(id)d;
- (void)setUrlSandboxExtensions:(id)extensions;
@end

@implementation ShareSheetViewModel

- (NSArray)metadataValues
{
  sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setMetadataValues:(id)values
{
  sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_metadataValues) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (NSArray)urlSandboxExtensions
{
  if (*(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions))
  {

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setUrlSandboxExtensions:(id)extensions
{
  if (extensions)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions) = v4;
}

- (void)setCustomHeaderButtonTitle:(id)title
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonTitle);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonTitle) = title;
  titleCopy = title;
}

- (void)setCustomHeaderButtonColor:(id)color
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonColor);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonColor) = color;
  colorCopy = color;
}

- (void)setCollaborationFooterViewModel:(id)model
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationFooterViewModel);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationFooterViewModel) = model;
  modelCopy = model;
}

- (void)setCustomViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController) = controller;
  controllerCopy = controller;
}

- (void)setCustomViewControllerVerticalInsetWrapper:(id)wrapper
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerVerticalInsetWrapper);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerVerticalInsetWrapper) = wrapper;
  wrapperCopy = wrapper;
}

- (void)setCustomViewControllerSectionHeightWrapper:(id)wrapper
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerSectionHeightWrapper);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerSectionHeightWrapper) = wrapper;
  wrapperCopy = wrapper;
}

- (void)setNearbyCountSlotID:(id)d
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_nearbyCountSlotID);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_nearbyCountSlotID) = d;
  dCopy = d;
}

- (NSDictionary)activitiesByUUID
{
  type metadata accessor for UUID();
  sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
  sub_1000129E4();

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setActivitiesByUUID:(id)d
{
  type metadata accessor for UUID();
  sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
  sub_1000129E4();
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_activitiesByUUID) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC16SharingUIService19ShareSheetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end