@interface MedicationChartPoint
- (_TtC19HealthMedicationsUI20MedicationChartPoint)init;
- (id)allYValues;
- (id)minYValue;
- (id)userInfo;
- (id)yValueForKey:(id)key;
@end

@implementation MedicationChartPoint

- (id)yValueForKey:(id)key
{
  selfCopy = self;
  if (sub_2282325DC())
  {
    sub_2282329D8();
  }

  v4 = sub_228393480();

  return v4;
}

- (id)allYValues
{
  selfCopy = self;
  sub_228232F18();

  v3 = sub_228392190();

  return v3;
}

- (id)minYValue
{
  selfCopy = self;
  sub_228233054(v10);

  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x28223BE20](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_228393450();
    (*(v5 + 8))(v7, v3);
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
  v3 = sub_228233294();

  return v3;
}

- (_TtC19HealthMedicationsUI20MedicationChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end