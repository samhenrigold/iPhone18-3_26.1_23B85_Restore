@interface MindComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (NSNumber)legacyNTKComplicationType;
+ (NSString)appIdentifier;
+ (NSString)localizedAppName;
- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)init;
- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation MindComplicationDataSource

- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)descriptor family:(int64_t)family completion:(id)completion
{
  sub_33E0(&qword_10508, "<\v");
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = descriptor;
  v12[3] = family;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_68BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_6F00;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_6F10;
  v15[5] = v14;
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_2784(0, 0, v10, &unk_6F20, v15);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v5 = sub_2E7C(deviceCopy);

  return v5 & 1;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  LOBYTE(family) = sub_30AC(family, deviceCopy);

  return family & 1;
}

+ (NSString)appIdentifier
{
  v2 = sub_67EC();

  return v2;
}

+ (NSNumber)legacyNTKComplicationType
{
  v2.super.super.isa = sub_68EC().super.super.isa;

  return v2.super.super.isa;
}

+ (NSString)localizedAppName
{
  swift_getObjCClassMetadata();
  sub_1E3C();
  if (v2)
  {
    v3 = sub_67EC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_324C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MindComplicationDataSource();
  return [(MindComplicationDataSource *)&v9 initWithComplication:complication family:family forDevice:device];
}

- (_TtC31MindComplicationBundleCompanion26MindComplicationDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MindComplicationDataSource();
  return [(MindComplicationDataSource *)&v3 init];
}

@end