@interface DecodeFrameSynchronously
@end

@implementation DecodeFrameSynchronously

uint64_t __jpeg_DecodeFrameSynchronously_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!a2 && !*(v4 + 240))
  {
    *(v4 + 240) = 1;
  }

  return VTDecoderSessionEmitDecodedFrame();
}

@end