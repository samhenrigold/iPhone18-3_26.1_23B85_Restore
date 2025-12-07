@interface VTPixelBlitterColorHandlingOptimized
@end

@implementation VTPixelBlitterColorHandlingOptimized

uint64_t __VTPixelBlitterColorHandlingOptimized_setup_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  CGColorTRCGetFunction();
  *(a1[10] + (*(*(a1[4] + 8) + 24) << 7)) = 0;
  v7 = a1[10];
  *(v7 + (*(*(a1[4] + 8) + 24) << 7) + 24) = 0;
  *(v7 + (*(*(a1[4] + 8) + 24) << 7) + 32) = 0;
  *(v7 + (*(*(a1[4] + 8) + 24) << 7) + 36) = 0;
  *(v7 + (*(*(a1[4] + 8) + 24) << 7) + 44) = 0;
  *(v7 + (*(*(a1[4] + 8) + 24) << 7) + 48) = 0;
  if (a3)
  {
    v8 = 8;
    if (*(*(a1[6] + 8) + 24) - 1 == a3)
    {
      v8 = 7;
    }
  }

  else
  {
    v8 = 5;
  }

  *(*(a1[v8] + 8) + 24) = 1;
  *(a1[10] + ((*(*(a1[4] + 8) + 24))++ << 7)) = vtptsPixelOpTrcType0;
  return 1;
}

uint64_t __VTPixelBlitterColorHandlingOptimized_setup_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CGColorMatrixGetMatrix();
  if (!*(a1 + 56))
  {
    v5 = *(a1 + 48);
    *(v5 + 72) = 0uLL;
    *(v5 + 88) = 0uLL;
    *(v5 + 104) = 0;
  }

  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = *(*(a1 + 32) + 8);
  }

  *(v6 + 24) = 1;
  return 1;
}

uint64_t __VTPixelBlitterColorHandlingOptimized_setup_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CGColorNxMTransformGetTransform();
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return 1;
}

uint64_t __VTPixelBlitterColorHandlingOptimized_setup_block_invoke_4_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPixelBlitterColorHandlingOptimized_setup_block_invoke_4_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

@end