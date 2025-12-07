@interface IETestResults
- (int)getCount:(unint64_t)count;
@end

@implementation IETestResults

- (int)getCount:(unint64_t)count
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  results = [(IETestResults *)self results];
  v5 = 0;
  v6 = [results countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(results);
        }

        if ([*(*(&v10 + 1) + 8 * i) status] == count)
        {
          ++v5;
        }
      }

      v6 = [results countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v5;
}

@end