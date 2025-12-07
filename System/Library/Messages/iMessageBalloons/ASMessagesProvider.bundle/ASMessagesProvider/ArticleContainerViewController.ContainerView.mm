@interface ArticleContainerViewController.ContainerView
- (CGRect)frame;
- (_TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView)initWithCoder:(id)coder;
- (_TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation ArticleContainerViewController.ContainerView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  [(ArticleContainerViewController.ContainerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for ArticleContainerViewController.ContainerView();
  v26.receiver = self;
  v26.super_class = v8;
  selfCopy = self;
  [(ArticleContainerViewController.ContainerView *)&v26 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v25.receiver = selfCopy;
  v25.super_class = v8;
  [(ArticleContainerViewController.ContainerView *)&v25 setFrame:x, y, width, height];
  [(ArticleContainerViewController.ContainerView *)selfCopy frame];
  v28.origin.x = v18;
  v28.origin.y = v19;
  v28.size.width = v20;
  v28.size.height = v21;
  v27.origin.x = v11;
  v27.origin.y = v13;
  v27.size.width = v15;
  v27.size.height = v17;
  if (!CGRectEqualToRect(v27, v28))
  {
    v22 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback);
    if (v22)
    {
      v23 = *&selfCopy->frameUpdatedCallback[OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback];

      v22(v24);
      sub_F704(v22, v23);
    }
  }
}

- (_TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback);
  v9 = type metadata accessor for ArticleContainerViewController.ContainerView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(ArticleContainerViewController.ContainerView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  coderCopy = coder;
  v6 = [(ArticleContainerViewController.ContainerView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end