@interface NSCollectionHandleConcurrentEnumerationIfSpecified
@end

@implementation NSCollectionHandleConcurrentEnumerationIfSpecified

void *____NSCollectionHandleConcurrentEnumerationIfSpecified_block_invoke(void *result)
{
  v1 = atomic_load((*(result[5] + 8) + 24));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    if (*(result + 48) == 1)
    {
      v3 = _CFAutoreleasePoolPush();
      (*(v2[4] + 16))();
      return _CFAutoreleasePoolPop(v3);
    }

    else
    {
      return (*(result[4] + 16))();
    }
  }

  return result;
}

@end