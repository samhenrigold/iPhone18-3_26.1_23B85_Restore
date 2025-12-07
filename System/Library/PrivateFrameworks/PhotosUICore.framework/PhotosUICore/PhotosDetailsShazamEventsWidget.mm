@interface PhotosDetailsShazamEventsWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore31PhotosDetailsShazamEventsWidget)init;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)context;
@end

@implementation PhotosDetailsShazamEventsWidget

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
  sub_1A4038E8C(contextCopy, selfCopy);
}

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x168);
  selfCopy = self;
  if (v3())
  {

    return 2;
  }

  else
  {
    v6 = (*((*v2 & *selfCopy) + 0x108))();
    v7 = [v6 sizeClass] != 2;

    return 2 * v7;
  }
}

- (_TtC12PhotosUICore31PhotosDetailsShazamEventsWidget)init
{
  v3 = swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsShazamEventsWidget_contextObservation);
  v6 = type metadata accessor for PhotosDetailsShazamEventsWidget(v3, v5);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(PXPhotosDetailsWidget *)&v8 init];
}

@end