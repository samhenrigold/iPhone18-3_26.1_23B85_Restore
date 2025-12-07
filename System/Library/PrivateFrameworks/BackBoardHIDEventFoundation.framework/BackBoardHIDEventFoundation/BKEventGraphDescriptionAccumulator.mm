@interface BKEventGraphDescriptionAccumulator
- (BKEventGraphDescriptionAccumulator)init;
- (id)build;
- (id)pushSection;
- (void)appendNode:()...;
- (void)appendSubnode:()...;
- (void)popSection:(id)section;
@end

@implementation BKEventGraphDescriptionAccumulator

- (BKEventGraphDescriptionAccumulator)init
{
  v3 = OBJC_IVAR___BKEventGraphDescriptionAccumulator_topLevel;
  type metadata accessor for _GraphNode();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 2) = 0;
  *(v4 + 3) = v5;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0xE000000000000000;
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current) = v4;
  v7.receiver = self;
  v7.super_class = BKEventGraphDescriptionAccumulator;

  return [(BKEventGraphDescriptionAccumulator *)&v7 init];
}

- (id)pushSection
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current);
  v3 = type metadata accessor for _BKGraphSectionWrapper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC27BackBoardHIDEventFoundation22_BKGraphSectionWrapper_node] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(BKEventGraphDescriptionAccumulator *)&v7 init];

  return v5;
}

- (void)popSection:(id)section
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_223CEAD90();
  swift_unknownObjectRelease();
  sub_223CC3858(v8, &v7);
  type metadata accessor for _BKGraphSectionWrapper();
  swift_dynamicCast();
  v5 = *&v6[OBJC_IVAR____TtC27BackBoardHIDEventFoundation22_BKGraphSectionWrapper_node];

  *(&selfCopy->super.isa + OBJC_IVAR___BKEventGraphDescriptionAccumulator_current) = v5;
}

- (id)build
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  v6[2] = MEMORY[0x277D84FA0];
  v6[3] = 0;
  v7 = 0;
  selfCopy = self;

  sub_223CC34CC(v3, v6, 0);

  v4 = sub_223CEACE0();

  return v4;
}

- (void)appendNode:()...
{
  va_start(va, format);
  if (self)
  {
    v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
    [self addSibling:v3];
    CFRelease(v3);
  }
}

- (void)appendSubnode:()...
{
  va_start(va, format);
  if (self)
  {
    v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
    [self addSubnode:v3];
    CFRelease(v3);
  }
}

@end