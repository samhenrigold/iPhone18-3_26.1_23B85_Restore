@interface ImageEditingViewController
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithCoder:(id)coder;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithRootViewController:(id)controller;
@end

@implementation ImageEditingViewController

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImageEditingViewController(self, a2);
  return [(ImageEditingViewController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ImageEditingViewController(self, a2);
  return [(ImageEditingViewController *)&v5 initWithRootViewController:controller];
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1004BBE64();
    bundleCopy = bundle;
    v7 = sub_1004BBE24();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for ImageEditingViewController(bundleCopy2, v9);
  v10 = [(ImageEditingViewController *)&v12 initWithNibName:v7 bundle:bundle];

  return v10;
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImageEditingViewController(self, a2);
  coderCopy = coder;
  v5 = [(ImageEditingViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end