@interface ApplyBinaryFilter
@end

@implementation ApplyBinaryFilter

uint64_t __mt_ApplyBinaryFilter_block_invoke(uint64_t a1, unsigned __int8 *a2, size_t a3, unsigned int a4)
{
  kdebug_trace();
  mt_ApplyBinaryFilter(*(a1 + 32), (*(a1 + 40) + 1), a2, a3, a4, 0);

  return kdebug_trace();
}

@end