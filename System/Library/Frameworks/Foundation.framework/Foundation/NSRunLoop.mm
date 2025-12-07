@interface NSRunLoop
@end

@implementation NSRunLoop

id *__41__NSRunLoop_NSRunLoop___portInvalidated___block_invoke(id *result, id a2, uint64_t a3, uint64_t a4)
{
  if (result[4] == a2)
  {
    v6 = result;
    [result[5] addObject:a3];
    v7 = v6[6];

    return [v7 addIndexesInRange:{a4, 2}];
  }

  return result;
}

id *__46__NSRunLoop_NSRunLoop___containsPort_forMode___block_invoke(id *result, id a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (result[4] == a2)
  {
    v6 = result;
    result = [result[5] isEqual:{a3, a4}];
    if (result)
    {
      *(*(v6[6] + 1) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

id *__44__NSRunLoop_NSRunLoop___removePort_forMode___block_invoke(id *result, id a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (result[4] == a2)
  {
    v7 = result;
    result = [result[5] isEqual:a3];
    if (result)
    {
      v8 = *(v7[7] + 1);
      if (*(*(v7[6] + 1) + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v8 + 24) = 1;
        *(*(v7[6] + 1) + 24) = a4;
      }

      else
      {
        *(v8 + 24) = 0;
        *a5 = 1;
      }
    }
  }

  return result;
}

@end