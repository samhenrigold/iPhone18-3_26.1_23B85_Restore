@interface REBookReaderHostLayoutController
- (CGRect)frame;
- (NSString)description;
- (REBookReaderHostLayoutController)init;
- (REBookReaderHostLayoutController)initWithView:(id)view;
- (REBookReaderHostLayoutController)initWithViewController:(id)controller;
- (UIEdgeInsets)safeAreaInsets;
- (UITraitCollection)traitCollection;
- (double)defaultStatusBarHeight;
- (void)setFrame:(CGRect)frame;
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setTraitCollection:(id)collection;
- (void)willEnterForeground;
@end

@implementation REBookReaderHostLayoutController

- (CGRect)frame
{
  selfCopy = self;
  sub_10079B904();

  v3 = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  BookReaderHostLayoutController.frame.setter(x, y, width, height);
}

- (UIEdgeInsets)safeAreaInsets
{
  selfCopy = self;
  sub_10079B904();

  v3 = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  BookReaderHostLayoutController.safeAreaInsets.setter(top, left, bottom, right);
}

- (UITraitCollection)traitCollection
{
  selfCopy = self;
  sub_10079B904();

  return v4;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  BookReaderHostLayoutController.traitCollection.setter(collectionCopy);
}

- (double)defaultStatusBarHeight
{
  selfCopy = self;
  v3 = BookReaderHostLayoutController.defaultStatusBarHeight.getter();

  return v3;
}

- (REBookReaderHostLayoutController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  result = [controllerCopy view];
  if (result)
  {
    v6 = result;
    v7 = [(REBookReaderHostLayoutController *)self initWithView:result];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (REBookReaderHostLayoutController)initWithView:(id)view
{
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  bottom = UIEdgeInsetsZero.bottom;
  viewCopy = view;
  [viewCopy frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [viewCopy safeAreaInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  traitCollection = [viewCopy traitCollection];
  v21 = objc_allocWithZone(type metadata accessor for BookReaderHostLayoutController());
  *&v30 = v17;
  *(&v30 + 1) = v19;
  *&v29 = v13;
  *(&v29 + 1) = v15;
  v27 = sub_100545708(traitCollection, viewCopy, UIEdgeInsetsZero.top, left, bottom, right, v5, v7, v9, v11, v21, v22, v23, v24, v25, v26, v29, v30);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v27;
}

- (void)willEnterForeground
{
  selfCopy = self;
  BookReaderHostLayoutController.willEnterForeground()();
}

- (REBookReaderHostLayoutController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  BookReaderHostLayoutController.description.getter();

  v3 = sub_1007A2214();

  return v3;
}

@end