@interface NestedHorizontalShelfCollectionViewFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (_TtC20ProductPageExtension45NestedHorizontalShelfCollectionViewFlowLayout)init;
- (_TtC20ProductPageExtension45NestedHorizontalShelfCollectionViewFlowLayout)initWithCoder:(id)coder;
@end

@implementation NestedHorizontalShelfCollectionViewFlowLayout

- (_TtC20ProductPageExtension45NestedHorizontalShelfCollectionViewFlowLayout)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v2 = [(NestedHorizontalShelfCollectionViewFlowLayout *)&v4 init];
  [(NestedHorizontalShelfCollectionViewFlowLayout *)v2 setScrollDirection:1];
  return v2;
}

- (_TtC20ProductPageExtension45NestedHorizontalShelfCollectionViewFlowLayout)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  selfCopy = self;
  sub_10016A850(v7, v6, x, y, selfCopy, v9);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

@end