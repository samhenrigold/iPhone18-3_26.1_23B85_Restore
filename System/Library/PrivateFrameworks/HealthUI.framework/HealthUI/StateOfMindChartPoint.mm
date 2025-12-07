@interface StateOfMindChartPoint
- (_TtC8HealthUI21StateOfMindChartPoint)init;
- (id)allYValues;
- (id)maxYValue;
- (id)userInfo;
- (id)yValueForKey:(id)key;
@end

@implementation StateOfMindChartPoint

- (_TtC8HealthUI21StateOfMindChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)yValueForKey:(id)key
{
  sub_1C3D20104();
  selfCopy = self;
  StateOfMindChartPoint.yValue(forKey:)(v13);

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
  StateOfMindChartPoint.allYValues()();

  v3 = sub_1C3D202A4();

  return v3;
}

- (id)maxYValue
{
  StateOfMindChartPoint.maxYValue()(v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_1C3D20A44();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)userInfo
{
  selfCopy = self;
  v3 = StateOfMindChartPoint.userInfo()();

  return v3;
}

@end