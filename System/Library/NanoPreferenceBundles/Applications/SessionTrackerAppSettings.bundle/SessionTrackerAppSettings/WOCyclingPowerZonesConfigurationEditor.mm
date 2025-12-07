@interface WOCyclingPowerZonesConfigurationEditor
+ (BOOL)isManualZonesEqualToAutomaticUsing:(id)using;
+ (id)allSupportedSizes;
+ (id)changeConfigurationTypeTo:(int64_t)to using:(id)using;
+ (id)changeFunctionalThresholdPowerTo:(double)to using:(id)using;
+ (id)changeZonesSizeTo:(int64_t)to using:(id)using;
+ (id)resetManualZonesUsing:(id)using;
- (WOCyclingPowerZonesConfigurationEditor)init;
@end

@implementation WOCyclingPowerZonesConfigurationEditor

+ (id)changeFunctionalThresholdPowerTo:(double)to using:(id)using
{
  v5 = sub_22254();
  __chkstk_darwin(v5 - 8);
  v6 = sub_22654();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22714();
  sub_225A4();
  (*(v7 + 104))(v9, enum case for FunctionalThresholdPowerSource.other(_:), v6);
  usingCopy = using;
  sub_22234();
  sub_22584();
  v11 = sub_226C4();

  v13 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v12);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v11;
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, "init");

  return v15;
}

+ (id)changeConfigurationTypeTo:(int64_t)to using:(id)using
{
  usingCopy = using;
  v6 = _s25SessionTrackerAppSettings42CyclingPowerZonesConfigurationEditorBridgeC06changeH4Type2to5usingAA0efghJ0CAA0efghlJ0O_AHtFZ_0(to, usingCopy);

  return v6;
}

+ (id)changeZonesSizeTo:(int64_t)to using:(id)using
{
  v5 = sub_224A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22714();
  usingCopy = using;
  sub_22474();
  v10 = sub_226D4();
  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v11);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v10;
  v16.receiver = v13;
  v16.super_class = v12;

  v14 = objc_msgSendSuper2(&v16, "init");

  return v14;
}

+ (id)resetManualZonesUsing:(id)using
{
  sub_22714();
  usingCopy = using;
  v5 = sub_226B4();
  v7 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v6);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v5;
  v11.receiver = v8;
  v11.super_class = v7;

  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

+ (id)allSupportedSizes
{
  _s25SessionTrackerAppSettings42CyclingPowerZonesConfigurationEditorBridgeC17allSupportedSizesSaySiGyFZ_0();
  v2.super.isa = sub_228C4().super.isa;

  return v2.super.isa;
}

+ (BOOL)isManualZonesEqualToAutomaticUsing:(id)using
{
  sub_22714();
  usingCopy = using;
  v5 = sub_226F4();

  return v5 & 1;
}

- (WOCyclingPowerZonesConfigurationEditor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CyclingPowerZonesConfigurationEditorBridge(self, a2);
  return [(WOCyclingPowerZonesConfigurationEditor *)&v3 init];
}

@end