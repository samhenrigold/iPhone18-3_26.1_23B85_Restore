@interface NSMutableData
@end

@implementation NSMutableData

void *__84__NSMutableData_NSMutableDataCompression___compressUsingCompressionAlgorithm_error___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 5) + 8) + 24) = 1;
    return [*(result + 4) setData:a2];
  }

  return result;
}

void *__86__NSMutableData_NSMutableDataCompression___decompressUsingCompressionAlgorithm_error___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 5) + 8) + 24) = 1;
    return [*(result + 4) setData:a2];
  }

  return result;
}

@end