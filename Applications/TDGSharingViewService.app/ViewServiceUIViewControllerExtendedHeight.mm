@interface ViewServiceUIViewControllerExtendedHeight
- (_TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
@end

@implementation ViewServiceUIViewControllerExtendedHeight

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10002A1FC(selfCopy);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  v4 = v8.receiver;
  [(ViewServiceUIViewControllerExtendedHeight *)&v8 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler + 8];

    v5(v7);

    sub_100009ED0(v5, v6);
  }

  else
  {
  }
}

- (_TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight)initWithContentView:(id)view
{
  swift_weakInit();
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler];
  v6 = type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ViewServiceUIViewControllerExtendedHeight *)&v8 initWithContentView:view];
}

@end