@interface NSArray(INImageProxyInjecting)
- (void)_injectProxiesForImages:()INImageProxyInjecting completion:;
@end

@implementation NSArray(INImageProxyInjecting)

- (void)_injectProxiesForImages:()INImageProxyInjecting completion:
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = INImageProxyInjectionQueue();
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([self count])
    {
      v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v23 = v7;
      [v9 setUnderlyingQueue:v7];
      [v9 setMaxConcurrentOperationCount:1];
      [v9 setSuspended:1];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = self;
      v10 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v34;
        do
        {
          v14 = 0;
          v15 = v12;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v33 + 1) + 8 * v14);
            if ([v16 conformsToProtocol:&unk_1F02E20C8])
            {
              v12 = objc_alloc_init(INImageProxyInjectionOperation);
              [(INImageProxyInjectionOperation *)v12 setInjector:v16];
              [(INImageProxyInjectionOperation *)v12 setImageProxyRequestBlock:v24];
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
              v31[3] = &unk_1E7285B78;
              v32 = v8;
              [(INImageProxyInjectionOperation *)v12 setCopyReturnBlock:v31];
              v17 = &v32;
            }

            else
            {
              v18 = MEMORY[0x1E696AAE0];
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
              v29[3] = &unk_1E7287190;
              v30[0] = v8;
              v30[1] = v16;
              v12 = [v18 blockOperationWithBlock:v29];
              v17 = v30;
            }

            if (v15)
            {
              [(INImageProxyInjectionOperation *)v12 addDependency:v15];
            }

            [v9 addOperation:v12];

            ++v14;
            v15 = v12;
          }

          while (v11 != v14);
          v11 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v19 = MEMORY[0x1E696AAE0];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_4;
      v26[3] = &unk_1E7287140;
      v27 = v8;
      v28 = v6;
      v20 = v8;
      v21 = [v19 blockOperationWithBlock:v26];
      v22 = v21;
      if (v12)
      {
        [v21 addDependency:v12];
      }

      [v9 addOperation:v22];
      [v9 setSuspended:0];

      v7 = v23;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      block[3] = &unk_1E7287140;
      v38 = v8;
      v39 = v6;
      v9 = v8;
      dispatch_async(v7, block);

      v12 = v39;
    }
  }
}

@end