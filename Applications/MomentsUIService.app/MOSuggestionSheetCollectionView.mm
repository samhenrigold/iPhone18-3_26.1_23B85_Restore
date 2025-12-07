@interface MOSuggestionSheetCollectionView
- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)layoutSubviews;
@end

@implementation MOSuggestionSheetCollectionView

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  v2 = v9.receiver;
  layoutSubviews = [(MOSuggestionSheetCollectionView *)&v9 layoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x58))(layoutSubviews);
  if (v4)
  {
    v7 = v5;
    v8 = v4;
    v4(v4, v5);
    v6.n128_f64[0] = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v7);
  }

  (*((swift_isaMask & *v2) + 0x60))(0, 0, v6);
}

- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  v11 = type metadata accessor for MOSuggestionSheetCollectionView();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = v11;
  return [(MOSuggestionSheetCollectionView *)&v13 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  coderCopy = coder;
  v6 = [(MOSuggestionSheetCollectionView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end