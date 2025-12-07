@interface UIApplication
- (void)my_openURL:(id)l originatingView:(id)view options:(id)options completionHandler:(id)handler;
@end

@implementation UIApplication

- (void)my_openURL:(id)l originatingView:(id)view options:(id)options completionHandler:(id)handler
{
  v9 = sub_10000B344();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_10000B314();
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_10000B1D4;
  }

  else
  {
    v14 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  sub_100009A2C(viewCopy, v13, v14, v17);
  sub_10000ADF4(v13, v14);

  (*(v10 + 8))(v12, v9);
}

@end