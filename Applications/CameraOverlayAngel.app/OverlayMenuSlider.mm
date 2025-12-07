@interface OverlayMenuSlider
- (BOOL)isDisabledAtIndex:(int64_t)index;
- (CGAffineTransform)orientationTransform;
- (CGSize)sizeForImageAtIndex:(int64_t)index;
- (NSArray)imageNames;
- (NSIndexSet)disabledMenuItemsIndices;
- (_TtP18CameraOverlayAngel25OverlayMenuSliderDelegate_)delegate;
- (id)imageForTickMarkAtIndex:(int64_t)index;
- (void)discreteSliderDidChangeValue:(id)value;
- (void)layoutSubviews;
- (void)setAlignment:(unint64_t)alignment;
- (void)setDisabledMenuItemsIndices:(id)indices;
- (void)setImageNames:(id)names;
- (void)setOrientation:(int64_t)orientation;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setSelectedControlIndex:(int64_t)index animated:(BOOL)animated;
@end

@implementation OverlayMenuSlider

- (_TtP18CameraOverlayAngel25OverlayMenuSliderDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedControlIndex:(int64_t)index animated:(BOOL)animated
{
  selfCopy = self;
  sub_10001D740(index, animated);
}

- (NSArray)imageNames
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setImageNames:(id)names
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames);
  *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_imageNames) = v4;
  selfCopy = self;
  sub_10001D9A0(v5);
}

- (NSIndexSet)disabledMenuItemsIndices
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_disabledMenuItemsIndices;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  IndexSet._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (void)setDisabledMenuItemsIndices:(id)indices
{
  v4 = type metadata accessor for IndexSet();
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001DFB4(v6, v8);
}

- (void)discreteSliderDidChangeValue:(id)value
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    valueCopy = value;
    selfCopy = self;
    [v6 overlayMenuSlider:selfCopy didSelectControlAt:{objc_msgSend(valueCopy, "selectedIndex")}];
    swift_unknownObjectRelease();
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10001E5C8();
}

- (id)imageForTickMarkAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_10001E924(index);

  return v5;
}

- (CGSize)sizeForImageAtIndex:(int64_t)index
{
  selfCopy = self;
  sub_10001DC5C(index);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isDisabledAtIndex:(int64_t)index
{
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_disabledMenuItemsIndices;
  swift_beginAccess();
  (*(v6 + 16))(v8, self + v9, v5);
  LOBYTE(index) = IndexSet.contains(_:)(index);
  (*(v6 + 8))(v8, v5);
  return index & 1;
}

- (void)setOrientation:(int64_t)orientation
{
  selfCopy = self;
  sub_10001EC94(orientation);
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  selfCopy = self;
  sub_10001ED30(orientation, animated);
}

- (CGAffineTransform)orientationTransform
{
  selfCopy = self;
  sub_10001E7AC(v8);

  v6 = v8[1];
  v7 = v8[2];
  *&retstr->a = v8[0];
  *&retstr->c = v6;
  *&retstr->tx = v7;
  return result;
}

- (void)setAlignment:(unint64_t)alignment
{
  v3 = *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment);
  *(self + OBJC_IVAR____TtC18CameraOverlayAngel17OverlayMenuSlider_alignment) = alignment;
  if (v3 != alignment)
  {
    [(OverlayMenuSlider *)self setNeedsLayout];
  }
}

@end