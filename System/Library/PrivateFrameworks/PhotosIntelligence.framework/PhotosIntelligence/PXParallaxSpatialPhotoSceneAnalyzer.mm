@interface PXParallaxSpatialPhotoSceneAnalyzer
- (BOOL)analyzeTimeOcclusionForSpatialPhotoScene:(id)scene portraitNormalizedTimeRect:(CGRect)rect landscapeNormalizedTimeRect:(CGRect)timeRect isInteractive:(BOOL)interactive error:(id *)error;
@end

@implementation PXParallaxSpatialPhotoSceneAnalyzer

- (BOOL)analyzeTimeOcclusionForSpatialPhotoScene:(id)scene portraitNormalizedTimeRect:(CGRect)rect landscapeNormalizedTimeRect:(CGRect)timeRect isInteractive:(BOOL)interactive error:(id *)error
{
  height = timeRect.size.height;
  width = timeRect.size.width;
  y = timeRect.origin.y;
  x = timeRect.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C75515CC();
  swift_unknownObjectRelease();
  sub_1C6FF3788(v19, interactive, v15, v14, v13, v12, x, y, width, height);
  __swift_destroy_boxed_opaque_existential_1(v19);

  return 1;
}

@end