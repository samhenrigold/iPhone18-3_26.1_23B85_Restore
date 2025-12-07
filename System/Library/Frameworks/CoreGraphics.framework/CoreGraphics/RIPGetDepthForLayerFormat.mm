@interface RIPGetDepthForLayerFormat
@end

@implementation RIPGetDepthForLayerFormat

const char **__RIPGetDepthForLayerFormat_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    v2 = 0;
  }

  else
  {
    if (v1 >= 0x1B)
    {
      _CGHandleAssert("RIPGetEncodingForLayerFormat", 81, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPLayerFormat.c", "format >= 0 && format < kRIPLayerFormat_Max", "invalid format %d", v1);
    }

    v2 = encoding[v1];
  }

  result = CGBlt_depth(v2);
  v4 = (&RIPGetDepthForLayerFormat_blt_depth + 16 * v1);
  *v4 = result;
  if (!result || !result[4])
  {
    *v4 = -1;
  }

  return result;
}

@end