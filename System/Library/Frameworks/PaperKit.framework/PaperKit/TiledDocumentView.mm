@interface TiledDocumentView
- (id)attachments;
- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only;
- (void)_canvasView:(id)view didCompleteRefinementEntry:(id)entry;
- (void)didMoveToWindow;
@end

@implementation TiledDocumentView

- (void)didMoveToWindow
{
  selfCopy = self;
  TiledDocumentView.didMoveToWindow()();
}

- (id)attachments
{
  swift_beginAccess();
  selfCopy = self;

  specialized Sequence.flatMap<A>(_:)(v4);
  v6 = v5;

  specialized _arrayForceCast<A, B>(_:)(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12PKAttachment_pMd, &_sSo12PKAttachment_pMR);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)_canvasView:(id)view didCompleteRefinementEntry:(id)entry
{
  viewCopy = view;
  entryCopy = entry;
  selfCopy = self;
  specialized TiledDocumentView._canvasView(_:didCompleteRefinementEntry:)(entryCopy);
}

- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end