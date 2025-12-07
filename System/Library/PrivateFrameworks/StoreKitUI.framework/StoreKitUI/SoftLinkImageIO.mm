@interface SoftLinkImageIO
@end

@implementation SoftLinkImageIO

uint64_t (*__SoftLinkImageIO_block_invoke(uint64_t a1, uint64_t a2))(void)
{
  v2 = SKUIImageIOFramework(a1, a2);
  if (!v2)
  {
    __SoftLinkImageIO_block_invoke_cold_7();
  }

  v3 = v2;
  weak_kCGImagePropertyEncoder = *SKUIWeakLinkedSymbolForString("kCGImagePropertyEncoder", v2);
  if (!weak_kCGImagePropertyEncoder)
  {
    __SoftLinkImageIO_block_invoke_cold_6();
  }

  weak_kCGImagePropertyASTCBlockSize = *SKUIWeakLinkedSymbolForString("kCGImagePropertyASTCBlockSize", v3);
  if (!weak_kCGImagePropertyASTCBlockSize)
  {
    __SoftLinkImageIO_block_invoke_cold_5();
  }

  weak_kCGImagePropertyASTCEncoder = *SKUIWeakLinkedSymbolForString("kCGImagePropertyASTCEncoder", v3);
  if (!weak_kCGImagePropertyASTCEncoder)
  {
    __SoftLinkImageIO_block_invoke_cold_4();
  }

  weak_CGImageDestinationCreateWithData = SKUIWeakLinkedSymbolForString("CGImageDestinationCreateWithData", v3);
  if (!weak_CGImageDestinationCreateWithData)
  {
    __SoftLinkImageIO_block_invoke_cold_3();
  }

  weak_CGImageDestinationAddImage = SKUIWeakLinkedSymbolForString("CGImageDestinationAddImage", v3);
  if (!weak_CGImageDestinationAddImage)
  {
    __SoftLinkImageIO_block_invoke_cold_2();
  }

  result = SKUIWeakLinkedSymbolForString("CGImageDestinationFinalize", v3);
  weak_CGImageDestinationFinalize = result;
  if (!result)
  {
    __SoftLinkImageIO_block_invoke_cold_1();
  }

  return result;
}

@end