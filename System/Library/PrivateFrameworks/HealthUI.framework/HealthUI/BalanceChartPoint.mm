@interface BalanceChartPoint
- (_TtC8HealthUI17BalanceChartPoint)init;
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
- (id)yValueForKey:(id)key;
@end

@implementation BalanceChartPoint

- (id)minYValue
{
  v1 = sub_1C3D20A84();

  return v1;
}

- (_TtC8HealthUI17BalanceChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)yValueForKey:(id)key
{
  sub_1C3D20104();
  selfCopy = self;
  sub_1C3C4F898(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C3D20A44();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allYValues
{
  selfCopy = self;
  sub_1C3C4FBC8();

  v3 = sub_1C3D202A4();

  return v3;
}

- (id)maxYValue
{
  v2 = sub_1C3D20A84();

  return v2;
}

@end