@interface SwiftUIAnnotationView
- (UIEdgeInsets)safeAreaInsets;
- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithCoder:(id)coder;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
@end

@implementation SwiftUIAnnotationView

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SwiftUIAnnotationView();
  v2 = v3.receiver;
  [(MKAnnotationView *)&v3 didMoveToSuperview];
  sub_213D8C140();
}

- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_213D9193C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  return sub_213D8C2E8(v7, v4, v6);
}

- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint);
  coderCopy = coder;
  sub_213D917CC();
  *v4 = v6;
  v4[1] = v7;
  v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint);
  sub_213D917CC();
  v10 = v9;
  v12 = v11;

  *v8 = v10;
  v8[1] = v12;

  type metadata accessor for SwiftUIAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)prepareForReuse
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView) = 0;
  selfCopy = self;

  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView) removeFromSuperview];
  [(MKAnnotationView *)selfCopy setCenterOffset:0.0, 0.0];
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for SwiftUIAnnotationView();
  [(MKAnnotationView *)&v3 prepareForReuse];
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end