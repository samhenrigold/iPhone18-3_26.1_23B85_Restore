@interface MUPlaceActionBarConfiguration
- (BOOL)hasContent;
- (MUPlaceActionBarConfiguration)init;
@end

@implementation MUPlaceActionBarConfiguration

- (BOOL)hasContent
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = self + OBJC_IVAR___MUPlaceActionBarConfiguration_layout;
  sub_1C57045AC(self + OBJC_IVAR___MUPlaceActionBarConfiguration_layout, &v12 - v5);
  v8 = type metadata accessor for PlaceActionBarLayoutItem(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    selfCopy = self;
    sub_1C570461C(v6);
    v10 = *(*&v7[*(type metadata accessor for PlaceActionBarLayout(0) + 20)] + 16);

    return v10 != 0;
  }

  else
  {
    sub_1C570461C(v6);
    return 1;
  }
}

- (MUPlaceActionBarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end