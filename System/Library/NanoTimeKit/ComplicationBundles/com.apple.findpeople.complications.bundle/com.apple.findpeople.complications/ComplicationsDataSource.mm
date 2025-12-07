@interface ComplicationsDataSource
+ (NSString)appIdentifier;
+ (NSString)bundleIdentifier;
+ (NSString)localizedAppName;
- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)init;
- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)currentSwitcherTemplate;
- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation ComplicationsDataSource

- (void)fetchWidgetMigrationForDescriptor:(CLKComplicationDescriptor *)descriptor family:(int64_t)family completion:(id)completion
{
  sub_3260(&qword_C378, &qword_4320);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = descriptor;
  v12[3] = family;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_3960();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_4330;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_4340;
  v15[5] = v14;
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_1F84(0, 0, v10, &unk_4350, v15);
}

+ (NSString)bundleIdentifier
{
  v2 = sub_38F0();

  return v2;
}

+ (NSString)appIdentifier
{
  v2 = sub_38F0();

  return v2;
}

+ (NSString)localizedAppName
{
  type metadata accessor for ComplicationsDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = 0x454D414E5F505041;
  v9._object = 0xE800000000000000;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v4.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_3890(v9, v10, v4, v11, 0, v7);

  v5 = sub_38F0();

  return v5;
}

- (id)currentSwitcherTemplate
{
  selfCopy = self;
  v3 = sub_2F0C([(ComplicationsDataSource *)selfCopy family]);

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  v5 = sub_38C0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(handler);
  selfCopy = self;
  v11 = sub_2F0C([(ComplicationsDataSource *)selfCopy family]);
  sub_38B0();
  v12 = v11;
  isa = sub_38A0().super.isa;
  v14 = [objc_opt_self() entryWithDate:isa complicationTemplate:v12];

  (*(v6 + 8))(v8, v5);
  v9[2](v9, v14);

  _Block_release(v9);
}

- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ComplicationsDataSource();
  return [(ComplicationsDataSource *)&v9 initWithComplication:complication family:family forDevice:device];
}

- (_TtC34com_apple_findpeople_complications23ComplicationsDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ComplicationsDataSource();
  return [(ComplicationsDataSource *)&v3 init];
}

@end