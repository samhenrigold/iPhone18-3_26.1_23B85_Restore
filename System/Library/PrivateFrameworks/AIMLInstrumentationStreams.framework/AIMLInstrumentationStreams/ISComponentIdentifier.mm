@interface ISComponentIdentifier
- (ISComponentIdentifier)init;
- (ISComponentIdentifier)initWithName:(int)name uuid:(id)uuid;
- (NSUUID)uuid;
- (int)componentName;
@end

@implementation ISComponentIdentifier

- (ISComponentIdentifier)initWithName:(int)name uuid:(id)uuid
{
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_23C870B54();
  (*(v6 + 16))(v9, v11, v5);
  v12 = objc_allocWithZone(sub_23C870E34());
  *(&self->super.isa + OBJC_IVAR___ISComponentIdentifier_componentIdentifier) = sub_23C870E14();
  v13 = type metadata accessor for ComponentIdentifierBridge();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(ISComponentIdentifier *)&v16 init];
  (*(v6 + 8))(v11, v5);
  return v14;
}

- (int)componentName
{
  selfCopy = self;
  v3 = sub_23C870DF4();

  return v3;
}

- (NSUUID)uuid
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_23C870E24();

  v8 = sub_23C870B24();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (ISComponentIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end