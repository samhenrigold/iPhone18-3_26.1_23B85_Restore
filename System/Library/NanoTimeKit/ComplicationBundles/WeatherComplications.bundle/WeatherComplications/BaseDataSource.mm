@interface BaseDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (NSString)appIdentifier;
+ (NSString)localizedAppName;
+ (NSString)localizedComplicationName;
- (_TtC20WeatherComplications14BaseDataSource)init;
- (id)currentSwitcherTemplate;
- (id)sampleTemplate;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)getTimelineEntriesAfterDate:(id)date limit:(int64_t)limit withHandler:(id)handler;
@end

@implementation BaseDataSource

+ (NSString)appIdentifier
{
  v2 = sub_23BDC66C0();

  return v2;
}

+ (NSString)localizedAppName
{
  sub_23BDB522C();
  if (v2)
  {
    v3 = sub_23BDC66C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = (*(ObjCClassMetadata + 296))();
  LOBYTE(family) = sub_23BDA8A20(family, v6);

  return family & 1;
}

+ (NSString)localizedComplicationName
{
  swift_getObjCClassMetadata();
  sub_23BDB2EB8();
  if (v2)
  {
    v3 = sub_23BDC66C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)currentSwitcherTemplate
{
  sampleTemplate = [(BaseDataSource *)self sampleTemplate];

  return sampleTemplate;
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  v6 = sub_23BD9628C(&qword_27E1C5958, &unk_23BDC8E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_23BDC6010();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC5FF0();
  if (travelDate)
  {
    sub_23BDC5FF0();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v10 + 8))(v12, v9);
  (*(v10 + 56))(v8, v13, 1, v9);
  sub_23BD962D4(v8, &qword_27E1C5958, &unk_23BDC8E10);
}

- (void)getTimelineEntriesAfterDate:(id)date limit:(int64_t)limit withHandler:(id)handler
{
  v7 = sub_23BDC6010();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_23BDC5FF0();
  _Block_copy(v11);
  selfCopy = self;
  sub_23BDB5B84(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

- (id)sampleTemplate
{
  v3 = sub_23BDC6010();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_23BDC6000();
  (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x120))(v6);
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 48))([(CLKCComplicationDataSource *)selfCopy family], ObjectType, v9);
  [v11 finalize];

  swift_unknownObjectRelease();

  return v11;
}

- (_TtC20WeatherComplications14BaseDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end