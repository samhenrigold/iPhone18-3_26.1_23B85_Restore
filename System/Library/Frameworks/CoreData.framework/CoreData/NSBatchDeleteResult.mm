@interface NSBatchDeleteResult
- (NSBatchDeleteResult)initWithResultType:(unint64_t)type andObject:(id)object;
- (NSBatchDeleteResult)initWithSubresults:(id)subresults;
- (void)dealloc;
@end

@implementation NSBatchDeleteResult

- (void)dealloc
{
  self->_aggregatedResult = 0;
  v3.receiver = self;
  v3.super_class = NSBatchDeleteResult;
  [(NSBatchDeleteResult *)&v3 dealloc];
}

- (NSBatchDeleteResult)initWithResultType:(unint64_t)type andObject:(id)object
{
  v9.receiver = self;
  v9.super_class = NSBatchDeleteResult;
  v6 = [(NSBatchDeleteResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_resultType = type;
    v6->_aggregatedResult = [object copy];
  }

  return v7;
}

- (NSBatchDeleteResult)initWithSubresults:(id)subresults
{
  v59 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = NSBatchDeleteResult;
  v4 = [(NSBatchDeleteResult *)&v49 init];
  if (!v4)
  {
    return v4;
  }

  if ([subresults count])
  {
    resultType = [objc_msgSend(subresults "lastObject")];
    v4->_resultType = resultType;
  }

  else
  {
    resultType = v4->_resultType;
  }

  if (resultType == 2)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v23 = [subresults countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v42;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(subresults);
          }

          v28 = *(*(&v41 + 1) + 8 * i);
          v29 = v4->_resultType;
          if (v29 != [v28 resultType])
          {
            v31 = MEMORY[0x1E695DF30];
            v32 = *MEMORY[0x1E695D930];
            v53 = @"Results";
            subresultsCopy = subresults;
            v33 = MEMORY[0x1E695DF20];
            v34 = &subresultsCopy;
            v35 = &v53;
            goto LABEL_49;
          }

          v25 += [objc_msgSend(v28 "result")];
        }

        v24 = [subresults countByEnumeratingWithState:&v41 objects:v55 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
    goto LABEL_44;
  }

  if (resultType == 1)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = [subresults countByEnumeratingWithState:&v37 objects:v52 count:16];
    if (!v16)
    {
      goto LABEL_44;
    }

    v17 = v16;
    v18 = *v38;
    while (1)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(subresults);
        }

        v20 = *(*(&v37 + 1) + 8 * j);
        v21 = v4->_resultType;
        if (v21 != [v20 resultType])
        {
          v31 = MEMORY[0x1E695DF30];
          v32 = *MEMORY[0x1E695D930];
          v50 = @"Results";
          subresultsCopy2 = subresults;
          v33 = MEMORY[0x1E695DF20];
          v34 = &subresultsCopy2;
          v35 = &v50;
          goto LABEL_49;
        }

        result = [v20 result];
        if ([result count])
        {
          [v7 addObjectsFromArray:result];
        }
      }

      v17 = [subresults countByEnumeratingWithState:&v37 objects:v52 count:16];
      if (!v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (resultType)
  {
    return v4;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [subresults countByEnumeratingWithState:&v45 objects:v58 count:16];
  v7 = MEMORY[0x1E695E110];
  if (!v6)
  {
    goto LABEL_44;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v46;
  do
  {
    v12 = 0;
    v13 = -v10;
    v36 = v10 + v8;
    do
    {
      if (*v46 != v11)
      {
        objc_enumerationMutation(subresults);
      }

      v14 = *(*(&v45 + 1) + 8 * v12);
      v15 = v4->_resultType;
      if (v15 != [v14 resultType])
      {
        v31 = MEMORY[0x1E695DF30];
        v32 = *MEMORY[0x1E695D930];
        v56 = @"Results";
        subresultsCopy3 = subresults;
        v33 = MEMORY[0x1E695DF20];
        v34 = &subresultsCopy3;
        v35 = &v56;
LABEL_49:
        objc_exception_throw([v31 exceptionWithName:v32 reason:@"Mismatched result types during aggregation of batch delete results" userInfo:{objc_msgSend(v33, "dictionaryWithObjects:forKeys:count:", v34, v35, 1)}]);
      }

      if (((v13 != v12) & ~v9) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = [objc_msgSend(v14 "result")];
      }

      ++v12;
    }

    while (v8 != v12);
    v8 = [subresults countByEnumeratingWithState:&v45 objects:v58 count:16];
    v10 = v36;
  }

  while (v8);
  v7 = MEMORY[0x1E695E110];
  if (v9)
  {
    v7 = MEMORY[0x1E695E118];
  }

LABEL_44:
  v4->_aggregatedResult = v7;
  return v4;
}

@end