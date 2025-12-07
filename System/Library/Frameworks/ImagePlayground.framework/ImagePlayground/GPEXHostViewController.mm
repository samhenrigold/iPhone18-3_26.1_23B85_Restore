@interface GPEXHostViewController
- (_TtC15ImagePlayground22GPEXHostViewController)initWithCoder:(id)coder;
- (_TtC15ImagePlayground22GPEXHostViewController)initWithConfiguration:(id)configuration;
- (_TtC15ImagePlayground22GPEXHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GPEXHostViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GPEXHostViewController();
  v4 = v9.receiver;
  [(_EXHostViewController *)&v9 viewWillAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    [view setNeedsLayout];

    view2 = [v4 view];
    if (view2)
    {
      v8 = view2;
      [view2 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC15ImagePlayground22GPEXHostViewController)initWithConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for GPEXHostViewController();
  return [(_EXHostViewController *)&v5 initWithConfiguration:configuration];
}

- (_TtC15ImagePlayground22GPEXHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D2AC6C24();
    bundleCopy = bundle;
    v7 = sub_1D2AC6BF4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GPEXHostViewController();
  v9 = [(GPEXHostViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC15ImagePlayground22GPEXHostViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GPEXHostViewController();
  coderCopy = coder;
  v5 = [(GPEXHostViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end