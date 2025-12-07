@interface SecondPassConfig
- (BOOL)useEndpointer;
- (BOOL)waitForFinal;
- (NSString)description;
- (SecondPassConfig)init;
- (void)setUseEndpointer:(BOOL)endpointer;
- (void)setWaitForFinal:(BOOL)final;
@end

@implementation SecondPassConfig

- (BOOL)waitForFinal
{
  v3 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWaitForFinal:(BOOL)final
{
  v5 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  swift_beginAccess();
  *(&self->super.isa + v5) = final;
}

- (BOOL)useEndpointer
{
  v3 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUseEndpointer:(BOOL)endpointer
{
  v5 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  swift_beginAccess();
  *(&self->super.isa + v5) = endpointer;
}

- (SecondPassConfig)init
{
  *(&self->super.isa + OBJC_IVAR___SecondPassConfig_waitForFinal) = 1;
  *(&self->super.isa + OBJC_IVAR___SecondPassConfig_useEndpointer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecondPassConfig();
  return [(SecondPassConfig *)&v3 init];
}

- (NSString)description
{
  v3 = sub_27237788C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_272376B3C();
  swift_allocObject();
  selfCopy = self;
  sub_272376B2C();
  type metadata accessor for SecondPassConfig();
  sub_27227DA80(&qword_280882260, v5, type metadata accessor for SecondPassConfig, &protocol conformance descriptor for SecondPassConfig);
  v6 = sub_272376B1C();
  v8 = v7;

  sub_27237787C();
  sub_27237784C();
  if (v9)
  {
    sub_2721F05C8(v6, v8);

    v10 = sub_2723777FC();

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

@end