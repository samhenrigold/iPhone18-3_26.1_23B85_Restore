@interface HUDQRCodeCGImageFromCIImage
@end

@implementation HUDQRCodeCGImageFromCIImage

void ___HUDQRCodeCGImageFromCIImage_block_invoke(id a1)
{
  v1 = +[CIContext context];
  v2 = _HUDQRCodeCGImageFromCIImage_context;
  _HUDQRCodeCGImageFromCIImage_context = v1;

  _objc_release_x1(v1, v2);
}

@end