@interface _PASPosixDataCollector
- (id)allData;
- (id)handleData;
@end

@implementation _PASPosixDataCollector

- (id)allData
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_totalBytes)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:self->_totalBytes];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_chunks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendData:{*(*(&v10 + 1) + 8 * i), v10}];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)handleData
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36___PASPosixDataCollector_handleData__block_invoke;
  v4[3] = &unk_1E77F2290;
  v4[4] = self;
  v2 = MEMORY[0x1AC566DD0](v4, a2);

  return v2;
}

@end