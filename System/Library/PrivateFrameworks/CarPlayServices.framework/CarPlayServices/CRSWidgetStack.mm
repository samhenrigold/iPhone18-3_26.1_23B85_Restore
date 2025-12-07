@interface CRSWidgetStack
- (BOOL)isEqual:(id)equal;
- (CRSWidgetStack)init;
- (CRSWidgetStack)initWithID:(id)d widgets:(id)widgets;
- (NSArray)_widgets;
- (NSArray)widgets;
- (NSString)description;
- (NSUUID)id;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)set_widgets:(id)set_widgets;
@end

@implementation CRSWidgetStack

- (NSUUID)id
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, *(self + OBJC_IVAR___CRSWidgetStack__id) + *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR___CRSWidgetStack__id)) + 0x58), v3);
  v7 = sub_242FCB28C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSArray)widgets
{
  _widgets = [(CRSWidgetStack *)self _widgets];

  return _widgets;
}

- (NSArray)_widgets
{
  type metadata accessor for CRSWidget(0);

  v2 = sub_242FCB31C();

  return v2;
}

- (void)set_widgets:(id)set_widgets
{
  type metadata accessor for CRSWidget(0);
  *(self + OBJC_IVAR___CRSWidgetStack__widgets) = sub_242FCB32C();
}

- (CRSWidgetStack)initWithID:(id)d widgets:(id)widgets
{
  v5 = sub_242FCB2CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_242FCB2AC();
  type metadata accessor for CRSWidget(0);
  v12 = sub_242FCB32C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DB28, &unk_242FCCFD0);
  (*(v6 + 16))(v9, v11, v5);
  *(self + OBJC_IVAR___CRSWidgetStack__id) = sub_242FC87E0(v9);
  *(self + OBJC_IVAR___CRSWidgetStack__widgets) = v12;
  v15.receiver = self;
  v15.super_class = CRSWidgetStack;
  v13 = [(CRSWidgetStack *)&v15 init];
  (*(v6 + 8))(v11, v5);
  return v13;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_242FC6CA0(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRSWidgetStack.encode(with:)(coderCopy);
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

  v6 = CRSWidgetStack.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v8 = [(CRSWidgetStack *)selfCopy id];
  sub_242FCB2AC();

  v9 = sub_242FCB2BC();
  (*(v4 + 8))(v6, v3);
  widgets = [(CRSWidgetStack *)selfCopy widgets];
  type metadata accessor for CRSWidget(0);
  sub_242FCB32C();

  sub_242FC8498(&qword_27ED5DB60, type metadata accessor for CRSWidget, MEMORY[0x277D85378]);
  v11 = sub_242FCB34C();

  return v11 ^ v9;
}

- (NSString)description
{
  selfCopy = self;
  CRSWidgetStack.description.getter();

  v3 = sub_242FCB2DC();

  return v3;
}

- (CRSWidgetStack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end