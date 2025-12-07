@interface PKTileContextWeatherView
+ (id)createWithWeatherInformation:(id)information;
- (PKTileContextWeatherView)init;
@end

@implementation PKTileContextWeatherView

+ (id)createWithWeatherInformation:(id)information
{
  v4 = type metadata accessor for TileContextWeatherView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  *(&v15 - v8) = information;
  v11 = *(v10 + 28);
  *&v9[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD483C8, &qword_1BE0DBEE8));
  sub_1BD4E70A4(v9, v6);
  informationCopy = information;
  v13 = sub_1BE04EAC4();
  sub_1BD4E7108(v9);
  [v13 setUserInteractionEnabled_];

  return v13;
}

- (PKTileContextWeatherView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileContextWeatherViewHost();
  return [(PKTileContextWeatherView *)&v3 init];
}

@end