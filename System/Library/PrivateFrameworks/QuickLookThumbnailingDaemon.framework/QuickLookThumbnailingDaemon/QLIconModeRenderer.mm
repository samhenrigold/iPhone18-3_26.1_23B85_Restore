@interface QLIconModeRenderer
+ (id)renderIconWithImage:(id)image size:(CGSize)size scale:(double)scale flavor:(int)flavor variant:(int64_t)variant;
+ (id)renderIconWithImages:(id)images size:(CGSize)size scale:(double)scale flavor:(int)flavor variant:(int64_t)variant;
- (QLIconModeRenderer)init;
@end

@implementation QLIconModeRenderer

+ (id)renderIconWithImage:(id)image size:(CGSize)size scale:(double)scale flavor:(int)flavor variant:(int64_t)variant
{
  v8 = *&flavor;
  height = size.height;
  width = size.width;
  swift_getObjCClassMetadata();
  imageCopy = image;
  v14 = static QLIconModeRenderer.renderIcon(image:size:scale:flavor:variant:)(imageCopy, v8, variant, width, height, scale);

  return v14;
}

+ (id)renderIconWithImages:(id)images size:(CGSize)size scale:(double)scale flavor:(int)flavor variant:(int64_t)variant
{
  height = size.height;
  width = size.width;
  sub_261618454(0, &qword_281368628, 0x277D43EA8);
  v12 = sub_26162B95C();
  v13 = _sSo18QLIconModeRendererC27QuickLookThumbnailingDaemonE10renderIcon6images4size5scale6flavor7variantSo011QLTRenderedI0CSgSaySo15QLPlatformImageCG_So6CGSizeV12CoreGraphics7CGFloatVs5Int32VSo021QLThumbnailGenerationI7VariantVtFZ_0(v12, flavor, variant, width, height, scale);

  return v13;
}

- (QLIconModeRenderer)init
{
  v3.receiver = self;
  v3.super_class = QLIconModeRenderer;
  return [(QLIconModeRenderer *)&v3 init];
}

@end