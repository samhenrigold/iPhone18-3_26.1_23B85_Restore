@interface AudioTraitDisclosureViewController
- (_TtC5Music34AudioTraitDisclosureViewController)initWithCoder:(id)coder;
- (_TtC5Music34AudioTraitDisclosureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AudioTraitDisclosureViewController

- (_TtC5Music34AudioTraitDisclosureViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(AudioTraitDisclosureViewController *)&v8 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler + 8];

    v5(v7);

    sub_100020438(v5, v6);
  }

  else
  {
  }
}

- (_TtC5Music34AudioTraitDisclosureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end