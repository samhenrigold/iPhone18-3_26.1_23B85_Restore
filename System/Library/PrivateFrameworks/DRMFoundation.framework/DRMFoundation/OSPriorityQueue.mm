@interface OSPriorityQueue
@end

@implementation OSPriorityQueue

void __28___OSPriorityQueue_popFirst__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = v6;
  if (!*(*(*(a1 + 32) + 8) + 40) || [v6 count] && objc_msgSend(v11, "compare:", *(*(*(a1 + 40) + 8) + 40)) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = [v7 firstObject];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __27___OSPriorityQueue_popLast__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = v6;
  if (!*(*(*(a1 + 32) + 8) + 40) || [v6 count] && objc_msgSend(v11, "compare:", *(*(*(a1 + 40) + 8) + 40)) == -1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = [v7 lastObject];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __30___OSPriorityQueue_allObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end