@interface CNPosterSetupAvatarPreviewViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)init;
- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type delegate:(id)delegate;
- (void)setCropRect:(CGRect)rect;
- (void)setHostingController:(id)controller;
- (void)setImageData:(id)data;
- (void)setImageType:(unint64_t)type;
@end

@implementation CNPosterSetupAvatarPreviewViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)initWithImageData:(id)data cropRect:(CGRect)rect imageType:(unint64_t)type delegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  swift_unknownObjectRetain();
  v13 = sub_199DF71FC();
  v15 = v14;

  v16 = sub_199AD4FF0(v13, v15, type, delegate, x, y, width, height);
  swift_unknownObjectRelease();
  sub_199A9EF34(v13, v15);
  return v16;
}

- (void)setImageData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v6 = sub_199DF71FC();
  v8 = v7;

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_199AA7630(v6, v8);
  sub_199DF842C();
  sub_199AD1CA8();

  sub_199A9EF34(v6, v8);
}

- (void)setCropRect:(CGRect)rect
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF842C();
}

- (void)setImageType:(unint64_t)type
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199DF842C();
}

- (_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end