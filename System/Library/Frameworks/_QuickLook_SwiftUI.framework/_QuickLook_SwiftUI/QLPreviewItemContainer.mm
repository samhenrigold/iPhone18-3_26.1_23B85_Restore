@interface QLPreviewItemContainer
- (BOOL)isEqual:(id)equal;
- (NSURL)previewItemURL;
- (_TtC18_QuickLook_SwiftUI22QLPreviewItemContainer)init;
- (int64_t)hash;
- (void)dealloc;
@end

@implementation QLPreviewItemContainer

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_23B8217EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(&self->super.isa + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource) == 1)
  {
    (*(v5 + 16))(v7, self + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v4);
    selfCopy = self;
    sub_23B8217CC();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    selfCopy2 = self;
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  [(QLPreviewItemContainer *)&v10 dealloc];
}

- (NSURL)previewItemURL
{
  v3 = sub_23B8217EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  if (*(&self->super.isa + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource) == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy2 = self;
    *(&self->super.isa + v7) = sub_23B8217DC() & 1;
  }

  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v3);

  v10 = sub_23B8217BC();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23B821A9C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23B81E9E4(v8);

  sub_23B8206D8(v8, &qword_27E189400, &qword_23B822200);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_23B81F020();

  return v3;
}

- (_TtC18_QuickLook_SwiftUI22QLPreviewItemContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end