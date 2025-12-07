@interface ShapeContainer
+ (Class)layerClass;
- (_TtC14MentalHealthUI14ShapeContainer)initWithCoder:(id)coder;
- (_TtC14MentalHealthUI14ShapeContainer)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation ShapeContainer

+ (Class)layerClass
{
  sub_258AFD0A4();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ShapeContainer *)&v3 layoutSubviews];
  sub_258AFB04C();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_258AFD58C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer);
  sub_258B02D24();
  v9 = v8;
  selfCopy = self;
  v11 = sub_258B02D14();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  sub_258A8F398(0, 0, v6, &unk_258B35800, v12);

  v14.receiver = selfCopy;
  v14.super_class = ObjectType;
  [(ShapeContainer *)&v14 dealloc];
}

- (_TtC14MentalHealthUI14ShapeContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer) = 0;
  v9 = (self + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds);
  *v9 = 0u;
  v9[1] = 0u;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(ShapeContainer *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC14MentalHealthUI14ShapeContainer)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_renderer) = 0;
  v6 = (self + OBJC_IVAR____TtC14MentalHealthUI14ShapeContainer_lastBounds);
  *v6 = 0u;
  v6[1] = 0u;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(ShapeContainer *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end