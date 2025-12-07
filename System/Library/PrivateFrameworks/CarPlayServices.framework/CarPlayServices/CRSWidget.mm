@interface CRSWidget
- (BOOL)isEqual:(id)equal;
- (CRSWidget)init;
- (CRSWidget)initWithID:(id)d chsWidget:(id)widget suggestionSource:(int64_t)source;
- (NSString)description;
- (NSUUID)id;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSWidget

- (NSUUID)id
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, *(&self->super.isa + OBJC_IVAR___CRSWidget__id) + *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR___CRSWidget__id)) + 0x58), v3);
  v7 = sub_242FCB28C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (CRSWidget)initWithID:(id)d chsWidget:(id)widget suggestionSource:(int64_t)source
{
  sourceCopy = source;
  v7 = sub_242FCB2CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  sub_242FCB2AC();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DB28, &unk_242FCCFD0);
  v16 = objc_allocWithZone(v15);
  v14(&v16[*((*MEMORY[0x277D85000] & *v16) + 0x58)], v11, v7);
  v25.receiver = v16;
  v25.super_class = v15;
  widgetCopy = widget;
  v18 = [(CRSWidget *)&v25 init];
  v19 = *(v8 + 8);
  v19(v11, v7);
  *(&self->super.isa + OBJC_IVAR___CRSWidget__id) = v18;
  *(&self->super.isa + OBJC_IVAR___CRSWidget_chsWidget) = widgetCopy;
  *(&self->super.isa + OBJC_IVAR___CRSWidget_suggestionSource) = sourceCopy;
  v24.receiver = self;
  v24.super_class = CRSWidget;
  v20 = [(CRSWidget *)&v24 init];
  v19(v13, v7);
  return v20;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_242FC90C4(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRSWidget.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_242FCB3BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRSWidget.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CRSWidget.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  CRSWidget.description.getter();

  v3 = sub_242FCB2DC();

  return v3;
}

- (CRSWidget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end