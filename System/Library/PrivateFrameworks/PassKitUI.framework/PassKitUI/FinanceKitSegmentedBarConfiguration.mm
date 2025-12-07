@interface FinanceKitSegmentedBarConfiguration
- (_TtC9PassKitUI35FinanceKitSegmentedBarConfiguration)init;
- (double)valueForSegmentAtIndex:(int64_t)index;
- (id)colorForSegmentAtIndex:(int64_t)index;
@end

@implementation FinanceKitSegmentedBarConfiguration

- (double)valueForSegmentAtIndex:(int64_t)index
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v7;
  if (index < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_spending);
    if (*(v10 + 16) > index)
    {
      sub_1BD5A0764(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * index, &v13 - v7);
      v11 = *&v9[*(v5 + 48)];
      v12 = sub_1BE049B04();
      (*(*(v12 - 8) + 8))(v9, v12);
      return v11;
    }
  }

  __break(1u);
  return result;
}

- (id)colorForSegmentAtIndex:(int64_t)index
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  if (index < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_spending);
  if (*(v10 + 16) <= index)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BD5A0764(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * index, &v13 - v8);
  selfCopy = self;
  MEMORY[0x1BFB3FF90](v9);
  result = PKBrightColorForFKCategory();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = result;

  return v12;
}

- (_TtC9PassKitUI35FinanceKitSegmentedBarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end