@interface AdjustedImageView
- (_TtC10ProductKit17AdjustedImageView)initWithCoder:(id)coder;
- (_TtC10ProductKit17AdjustedImageView)initWithFrame:(CGRect)frame;
- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)image;
- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AdjustedImageView

- (_TtC10ProductKit17AdjustedImageView)initWithFrame:(CGRect)frame
{
  result = sub_260E69704("Fatal error", 11, 2, 0xD000000000000021, 0x8000000260E72480, "ProductKit/AdjustedImageView.swift", 34, 2, 48, 0);
  __break(1u);
  return result;
}

- (_TtC10ProductKit17AdjustedImageView)initWithCoder:(id)coder
{
  result = sub_260E69704("Fatal error", 11, 2, 0xD000000000000025, 0x8000000260E72450, "ProductKit/AdjustedImageView.swift", 34, 2, 52, 0);
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  AdjustedImageView.traitCollectionDidChange(_:)(v9);
}

- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10ProductKit17AdjustedImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end