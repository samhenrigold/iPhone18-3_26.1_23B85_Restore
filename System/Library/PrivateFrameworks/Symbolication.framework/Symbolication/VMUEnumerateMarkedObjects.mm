@interface VMUEnumerateMarkedObjects
@end

@implementation VMUEnumerateMarkedObjects

void *___VMUEnumerateMarkedObjects_block_invoke(void *result)
{
  v1 = s_currentMarkingContext;
  if (s_currentMarkingContext)
  {
    v2 = result;
    do
    {
      *(*(*(v2 + 5) + 8) + 24) += *(v1 + 28);
      if (*(v2 + 4))
      {
        v3 = *(v1 + 20);
        if (v3)
        {
          v4 = 0;
          v5 = *(v1 + 12) + v1;
          do
          {
            if (*(v5 + 8 * v4))
            {
              result = [*(v2 + 4) addObject:?];
              v3 = *(v1 + 20);
            }

            ++v4;
          }

          while (v4 < v3);
        }
      }

      v1 = *(v1 + 32);
    }

    while (v1);
  }

  return result;
}

@end