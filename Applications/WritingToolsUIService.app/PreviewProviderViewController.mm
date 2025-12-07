@interface PreviewProviderViewController
- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithCoder:(id)coder;
- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithPreviewItems:(id)items;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
@end

@implementation PreviewProviderViewController

- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, self + OBJC_IVAR____TtC21WritingToolsUIService29PreviewProviderViewController_url, v5);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithPreviewItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end