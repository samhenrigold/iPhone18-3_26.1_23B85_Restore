@interface SOSCircleSign
@end

@implementation SOSCircleSign

__CFData *__SOSCircleSign_block_invoke(void *a1, uint64_t a2, const uint8_t *a3)
{
  SOSCircleHashGenAndPeers(a1[5], *(a1[6] + 24), *(a1[6] + 32), a3, a1[7]);
  result = SecKeyCopyRawHashSignature(a1[5], a3, a1[8], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end