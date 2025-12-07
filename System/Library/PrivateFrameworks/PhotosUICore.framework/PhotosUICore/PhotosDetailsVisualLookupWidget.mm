@interface PhotosDetailsVisualLookupWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)context;
@end

@implementation PhotosDetailsVisualLookupWidget

- (PXWidgetInteractionDelegate)widgetInteractionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PXPhotosDetailsContext)context
{
  selfCopy = self;
  v3 = sub_1A4110EF8();

  return v3;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1A429A2B8(contextCopy);
}

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  selfCopy = self;
  v3 = sub_1A429AA64();

  return v3;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  selfCopy = self;
  v4 = sub_1A429AFF8();

  return v4;
}

- (_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget)init
{
  v3 = swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsVisualLookupWidget_contextObservation);
  v6 = type metadata accessor for PhotosDetailsVisualLookupWidget(v3, v5);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(PXPhotosDetailsWidget *)&v8 init];
}

@end