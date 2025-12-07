@interface SubscriptionLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)layoutMargins;
- (_TtC22SubscribePageExtension22SubscriptionLockupView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
@end

@implementation SubscriptionLockupView

- (UIEdgeInsets)layoutMargins
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(SubscriptionLockupView *)&v6 layoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  ObjectType = swift_getObjectType();
  v14.receiver = self;
  v14.super_class = ObjectType;
  selfCopy = self;
  [(SubscriptionLockupView *)&v14 setLayoutMargins:top, left, bottom, right];
  v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView);
  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(SubscriptionLockupView *)&v13 layoutMargins];
  [v10 setLayoutMargins:?];
  v11 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView);
  v12.receiver = selfCopy;
  v12.super_class = ObjectType;
  [(SubscriptionLockupView *)&v12 layoutMargins];
  [v11 setLayoutMargins:?];
}

- (_TtC22SubscribePageExtension22SubscriptionLockupView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_subscriptionLockupPresenter) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  ObjectType = swift_getObjectType();
  v7 = qword_100921A60;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_100747064();
  v10 = sub_10000D0FC(v9, qword_100982960);
  v20.receiver = selfCopy;
  v20.super_class = ObjectType;
  [(SubscriptionLockupView *)&v20 layoutMargins];
  v15 = sub_1001CF768(v10, selfCopy, width, height, v13, v14, v11, v12);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SubscriptionLockupView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
  [v2 bounds];
  [v4 setFrame:?];
}

@end