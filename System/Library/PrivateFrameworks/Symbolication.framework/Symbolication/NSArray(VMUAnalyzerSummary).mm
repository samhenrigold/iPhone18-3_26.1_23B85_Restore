@interface NSArray(VMUAnalyzerSummary)
- (unint64_t)longestKeyLength;
@end

@implementation NSArray(VMUAnalyzerSummary)

- (unint64_t)longestKeyLength
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v3 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = v9;
        if (v9 == kVMUAnalysisSummaryKey[0])
        {
        }

        else
        {
          v11 = [v8 key];
          v12 = kVMUAnalysisDataKey[0];

          if (v11 != v12)
          {
            v13 = [v8 key];
            v14 = [v13 length];

            if (v14 > v5)
            {
              v5 = v14;
            }
          }
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end