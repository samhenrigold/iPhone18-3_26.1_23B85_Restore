@interface CKNSExtension
- (void)beginMatchingExtensions:(id)extensions;
- (void)dealloc;
- (void)endMatchingExtensions;
@end

@implementation CKNSExtension

- (void)dealloc
{
  [(CKNSExtension *)self endMatchingExtensions];
  v3.receiver = self;
  v3.super_class = CKNSExtension;
  [(CKNSExtension *)&v3 dealloc];
}

- (void)beginMatchingExtensions:(id)extensions
{
  v12[1] = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  if (!self->_beginMappingID)
  {
    v11 = *MEMORY[0x277CCA0F8];
    v12[0] = *MEMORY[0x277CD2C10];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = MEMORY[0x277CCA9C8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__CKNSExtension_beginMatchingExtensions___block_invoke;
    v9[3] = &unk_278DE8B90;
    v10 = extensionsCopy;
    v7 = [v6 beginMatchingExtensionsWithAttributes:v5 completion:v9];
    beginMappingID = self->_beginMappingID;
    self->_beginMappingID = v7;
  }
}

void __41__CKNSExtension_beginMatchingExtensions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CKNSExtension_beginMatchingExtensions___block_invoke_2;
  block[3] = &unk_278DE7EE0;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__CKNSExtension_beginMatchingExtensions___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!a1[4])
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = [v3 count];
      v5 = a1[5];
      if (v4)
      {
        v17 = a1;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v18 + 1) + 8 * i) _plugIn];
              v12 = [v11 localizedContainingName];

              v13 = [v2 objectForKey:v12];

              if (v13)
              {
                v14 = [v2 objectForKeyedSubscript:v12];
                v15 = [v14 intValue];

                v16 = [MEMORY[0x277CCABB0] numberWithInt:(v15 + 1)];
                [v2 setObject:v16 forKeyedSubscript:v12];
              }

              else
              {
                [v2 setObject:&unk_2856EBA18 forKeyedSubscript:v12];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v8);
        }

        a1 = v17;
      }
    }

    (*(a1[6] + 16))();
  }
}

- (void)endMatchingExtensions
{
  if (self->_beginMappingID)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
    beginMappingID = self->_beginMappingID;
    self->_beginMappingID = 0;
  }
}

@end