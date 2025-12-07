@interface CSUIBindable
- (CSUIBindable)init;
- (CSUIBindable)initWithDocumentProxy:(id)proxy;
- (CSUIBindable)initWithType:(id)type;
- (CSUIBindable)initWithURL:(id)l;
- (NSString)description;
@end

@implementation CSUIBindable

- (CSUIBindable)initWithDocumentProxy:(id)proxy
{
  v5 = (&self->super.isa + OBJC_IVAR___CSUIBindable_rawBindable);
  *&self->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16] = &type metadata for DocumentProxyBindable;
  v5[4] = sub_2478BCB84();
  *v5 = proxy;
  v8.receiver = self;
  v8.super_class = CSUIBindable;
  proxyCopy = proxy;
  return [(CSUIBindable *)&v8 init];
}

- (CSUIBindable)initWithType:(id)type
{
  v5 = sub_2478D88FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  typeCopy = type;
  sub_2478D88EC();

  v10 = sub_2478D88CC();
  v12 = v11;
  v13 = (self + OBJC_IVAR___CSUIBindable_rawBindable);
  *&self->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16] = &type metadata for TypeIdentifierBindable;
  v13[4] = sub_2478BCBD8();
  *v13 = v10;
  v13[1] = v12;
  v16.receiver = self;
  v16.super_class = CSUIBindable;
  v14 = [(CSUIBindable *)&v16 init];
  (*(v6 + 8))(v8, v5);
  return v14;
}

- (CSUIBindable)initWithURL:(id)l
{
  v4 = sub_2478D889C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2478D887C();
  v8 = (self + OBJC_IVAR___CSUIBindable_rawBindable);
  v8[3] = type metadata accessor for URLBindable(0);
  v8[4] = sub_2478BCA20(&qword_27EE54B18, 255, type metadata accessor for URLBindable, &unk_2478DAA80);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v8);
  (*(v5 + 16))(boxed_opaque_existential_0Tm, v7, v4);
  v12.receiver = self;
  v12.super_class = CSUIBindable;
  v10 = [(CSUIBindable *)&v12 init];
  (*(v5 + 8))(v7, v4);
  return v10;
}

- (NSString)description
{
  selfCopy = self;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0x6E6942495553433CLL, 0xEF203A656C626164);
  __swift_project_boxed_opaque_existential_0Tm((&selfCopy->super.isa + OBJC_IVAR___CSUIBindable_rawBindable), *&selfCopy->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16]);
  sub_2478D8E3C();
  MEMORY[0x24C1AD190](62, 0xE100000000000000);

  v3 = sub_2478D89BC();

  return v3;
}

- (CSUIBindable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end