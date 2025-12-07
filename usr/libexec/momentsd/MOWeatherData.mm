@interface MOWeatherData
- (_TtC8momentsd13MOWeatherData)init;
- (_TtC8momentsd13MOWeatherData)initWithTemperature:(id)temperature windSpeed:(id)speed weatherSummry:(id)summry symbolName:(id)name;
- (id)getSymbolName;
- (id)getTemperature;
- (id)getWeatherSummary;
- (id)getWinSpeed;
- (void)setTemperature:(id)temperature;
- (void)setWindSpeed:(id)speed;
@end

@implementation MOWeatherData

- (void)setTemperature:(id)temperature
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - v7;
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitTemperature, NSUnitTemperature_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR____TtC8momentsd13MOWeatherData_temperature;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (void)setWindSpeed:(id)speed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12 - v7;
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitSpeed, NSUnitSpeed_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR____TtC8momentsd13MOWeatherData_windSpeed;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (_TtC8momentsd13MOWeatherData)initWithTemperature:(id)temperature windSpeed:(id)speed weatherSummry:(id)summry symbolName:(id)name
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v7 = *(v29 - 8);
  __chkstk_darwin(v29, v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v28 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v28 - v14;
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitTemperature, NSUnitTemperature_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitSpeed, NSUnitSpeed_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  (*(v12 + 16))(self + OBJC_IVAR____TtC8momentsd13MOWeatherData_temperature, v15, v11);
  v22 = v29;
  (*(v7 + 16))(self + OBJC_IVAR____TtC8momentsd13MOWeatherData_windSpeed, v10, v29);
  v23 = (self + OBJC_IVAR____TtC8momentsd13MOWeatherData_weatherSummary);
  *v23 = v16;
  v23[1] = v18;
  v24 = (self + OBJC_IVAR____TtC8momentsd13MOWeatherData_symbolName);
  *v24 = v19;
  v24[1] = v21;
  v25 = type metadata accessor for MOWeatherData(0);
  v30.receiver = self;
  v30.super_class = v25;
  v26 = [(MOWeatherData *)&v30 init];
  (*(v7 + 8))(v10, v22);
  (*(v12 + 8))(v15, v28);
  return v26;
}

- (id)getTemperature
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12 - v6;
  v8 = *((swift_isaMask & *self) + 0x70);
  selfCopy = self;
  v8();

  v14 = Measurement._bridgeToObjectiveC()();
  isa = v14.super.isa;
  (*(v4 + 8))(v7, v3, *&v14._doubleValue);

  return isa;
}

- (id)getWinSpeed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12 - v6;
  v8 = *((swift_isaMask & *self) + 0x88);
  selfCopy = self;
  v8();

  v14 = Measurement._bridgeToObjectiveC()();
  isa = v14.super.isa;
  (*(v4 + 8))(v7, v3, *&v14._doubleValue);

  return isa;
}

- (id)getWeatherSummary
{
  v2 = *((swift_isaMask & *self) + 0xA0);
  selfCopy = self;
  v2();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)getSymbolName
{
  v2 = *((swift_isaMask & *self) + 0xB8);
  selfCopy = self;
  v2();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC8momentsd13MOWeatherData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end