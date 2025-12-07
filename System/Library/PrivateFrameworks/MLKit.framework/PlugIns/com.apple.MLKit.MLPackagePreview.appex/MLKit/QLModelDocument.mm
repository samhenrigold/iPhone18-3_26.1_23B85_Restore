@interface QLModelDocument
- (BOOL)loadFromContents:(id)contents ofType:(id)type error:(id *)error;
- (_TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument)initWithFileURL:(id)l;
- (id)contentsForType:(id)type error:(id *)error;
- (void)handleError:(id)error userInteractionPermitted:(BOOL)permitted;
@end

@implementation QLModelDocument

- (id)contentsForType:(id)type error:(id *)error
{
  v4 = sub_100019F98();

  return v4;
}

- (BOOL)loadFromContents:(id)contents ofType:(id)type error:(id *)error
{
  swift_unknownObjectRetain();
  sub_100019E58();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (void)handleError:(id)error userInteractionPermitted:(BOOL)permitted
{
  permittedCopy = permitted;
  *(&self->super.super.isa + OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument_error) = error;
  errorCopy = error;
  selfCopy = self;

  v8 = sub_1000198C8();
  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for QLModelDocument();
  [(QLModelDocument *)&v9 handleError:v8 userInteractionPermitted:permittedCopy];
}

- (_TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument)initWithFileURL:(id)l
{
  v4 = sub_100019958();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019938();
  v8 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument_error;
  *(&self->super.super.isa + OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview15QLModelDocument_error) = 0;
  sub_100019928(v8);
  v10 = v9;
  v11 = type metadata accessor for QLModelDocument();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(QLModelDocument *)&v14 initWithFileURL:v10];

  (*(v5 + 8))(v7, v4);
  return v12;
}

@end