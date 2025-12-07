@interface NSSetEnumerate
@end

@implementation NSSetEnumerate

void *____NSSetEnumerate_block_invoke(void *result)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(result[6] + 8) + 24));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    v3 = &v8 - ((8 * result[7] + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = _CFAutoreleasePoolPush();
    pthread_mutex_lock(v2[8]);
    if (v2[7])
    {
      v5 = 0;
      do
      {
        v6 = [v2[4] nextObject];
        *&v3[8 * v5] = v6;
        if (!v6)
        {
          break;
        }

        ++v5;
      }

      while (v5 < v2[7]);
    }

    pthread_mutex_unlock(v2[8]);
    HIBYTE(v8) = 0;
    if (v2[7])
    {
      v7 = 0;
      while (*&v3[8 * v7])
      {
        __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(v2[5]);
        if (HIBYTE(v8) == 1)
        {
          atomic_store(1u, (*(v2[6] + 8) + 24));
          return _CFAutoreleasePoolPop(v4);
        }

        if (++v7 >= v2[7])
        {
          return _CFAutoreleasePoolPop(v4);
        }
      }
    }

    return _CFAutoreleasePoolPop(v4);
  }

  return result;
}

@end