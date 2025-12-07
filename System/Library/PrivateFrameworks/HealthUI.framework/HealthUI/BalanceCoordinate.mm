@interface BalanceCoordinate
- (HKGraphSeriesBlockCoordinateInfo)userInfo;
- (_TtC8HealthUI17BalanceCoordinate)init;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation BalanceCoordinate

- (HKGraphSeriesBlockCoordinateInfo)userInfo
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC8HealthUI17BalanceCoordinate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  v4 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v4;
  v9[2] = *&transform->tx;
  selfCopy = self;
  sub_1C3CD898C(v9);
  v7 = v6;

  return v7;
}

@end