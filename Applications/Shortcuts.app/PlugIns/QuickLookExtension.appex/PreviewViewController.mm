@interface PreviewViewController
- (_TtC18QuickLookExtension21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler;
@end

@implementation PreviewViewController

- (void)loadView
{
  selfCopy = self;
  sub_100001ACC();
}

- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler
{
  v6 = sub_100004F10();
  sub_100004DDC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100004E00();
  v12 = v11 - v10;
  v13 = _Block_copy(handler);
  sub_100004F00();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  sub_100001CC4(v12, sub_100003730, v14);

  (*(v8 + 8))(v12, v6);
}

- (_TtC18QuickLookExtension21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100005170();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000207C(v5, v7, bundle);
}

@end