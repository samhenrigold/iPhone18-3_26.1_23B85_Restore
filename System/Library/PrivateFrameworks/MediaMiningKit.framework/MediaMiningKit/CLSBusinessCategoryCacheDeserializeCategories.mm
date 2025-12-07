@interface CLSBusinessCategoryCacheDeserializeCategories
@end

@implementation CLSBusinessCategoryCacheDeserializeCategories

id *___CLSBusinessCategoryCacheDeserializeCategories_block_invoke(id *result, uint64_t a2, char a3)
{
  if ((*(result + 10) >> a3))
  {
    return [result[4] addObject:a2];
  }

  return result;
}

@end