@interface PXGHostedContentTextureProvider
- (PXGHostedContentTextureProvider)init;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)cancelTextureRequests:(id)requests;
@end

@implementation PXGHostedContentTextureProvider

- (PXGHostedContentTextureProvider)init
{
  v3 = OBJC_IVAR___PXGHostedContentTextureProvider_requestQueue_requestByID;
  v4 = sub_1A3C88D38(MEMORY[0x1E69E7CC0], a2);
  *(&self->super.super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HostedContentTextureProvider(v4, v5);
  return [(PXGTextureProvider *)&v7 init];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1A40370E4(*&range, geometries, styles, infos, layoutCopy);
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

- (void)cancelTextureRequests:(id)requests
{
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241444();
  selfCopy = self;
  sub_1A4037854(v7);

  (*(v5 + 8))(v7, v4);
}

@end