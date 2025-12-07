@interface PBObjectToRepresentationCoercion
- (BOOL)canCoerceToType:(id)type;
- (PBObjectToRepresentationCoercion)initWithClass:(Class)class;
- (void)addCoercionToType:(id)type block:(id)block;
- (void)createRepresentationOfType:(id)type fromObject:(id)object completionBlock:(id)block;
@end

@implementation PBObjectToRepresentationCoercion

- (PBObjectToRepresentationCoercion)initWithClass:(Class)class
{
  v11.receiver = self;
  v11.super_class = PBObjectToRepresentationCoercion;
  v4 = [(PBObjectToRepresentationCoercion *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_theClass, class);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    coercionBlockByType = v5->_coercionBlockByType;
    v5->_coercionBlockByType = dictionary;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    typeOrder = v5->_typeOrder;
    v5->_typeOrder = orderedSet;
  }

  return v5;
}

- (void)addCoercionToType:(id)type block:(id)block
{
  typeCopy = type;
  v6 = MEMORY[0x25F8AC430](block);
  [(NSMutableDictionary *)self->_coercionBlockByType setObject:v6 forKeyedSubscript:typeCopy];

  [(NSMutableOrderedSet *)self->_typeOrder addObject:typeCopy];
}

- (BOOL)canCoerceToType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_typeOrder;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (UTTypeConformsTo(*(*(&v10 + 1) + 8 * i), typeCopy))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)createRepresentationOfType:(id)type fromObject:(id)object completionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  objectCopy = object;
  blockCopy = block;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_typeOrder;
  v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v35 + 1) + 8 * v15);
      if (UTTypeConformsTo(v16, typeCopy))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = [(NSMutableDictionary *)self->_coercionBlockByType objectForKeyedSubscript:v16];
    v17 = v16;

    if (!v18)
    {
      goto LABEL_12;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __90__PBObjectToRepresentationCoercion_createRepresentationOfType_fromObject_completionBlock___block_invoke;
    v31[3] = &unk_279A07458;
    v32 = typeCopy;
    v33 = objectCopy;
    v34 = blockCopy;
    v19 = v18[2];
    v20 = blockCopy;
    v21 = objectCopy;
    v22 = typeCopy;
    v19(v18, v17, v21, v31);
  }

  else
  {
LABEL_9:

    v17 = 0;
LABEL_12:
    v23 = dispatch_get_global_queue(0, 0);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__PBObjectToRepresentationCoercion_createRepresentationOfType_fromObject_completionBlock___block_invoke_3;
    v27[3] = &unk_279A06AB0;
    v29 = objectCopy;
    v30 = blockCopy;
    v28 = typeCopy;
    v24 = blockCopy;
    v25 = objectCopy;
    v26 = typeCopy;
    dispatch_async(v23, v27);

    v18 = v30;
  }
}

void __90__PBObjectToRepresentationCoercion_createRepresentationOfType_fromObject_completionBlock___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 || v8 || v9)
  {
    if (v9)
    {
      v13 = [v9 domain];
      v14 = [v13 isEqualToString:@"PBErrorDomain"];

      if ((v14 & 1) == 0)
      {
        v15 = a1[4];
        v16 = objc_opt_class();
        v17 = PBCannotCreateRepresentationError(v15, v16, v10);

        v10 = v17;
      }
    }
  }

  else
  {
    v11 = a1[4];
    v12 = objc_opt_class();
    v10 = PBCannotCreateRepresentationError(v11, v12, 0);
  }

  v18 = a1[6];
  if (v18)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__PBObjectToRepresentationCoercion_createRepresentationOfType_fromObject_completionBlock___block_invoke_2;
    v19[3] = &unk_279A06DF8;
    v23 = v18;
    v20 = v7;
    v21 = v8;
    v22 = v10;
    PBDispatchAsyncCallback(v19);
  }
}

void __90__PBObjectToRepresentationCoercion_createRepresentationOfType_fromObject_completionBlock___block_invoke_3(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v2 = a1[4];
    v3 = objc_opt_class();
    v4 = PBCannotCreateRepresentationError(v2, v3, 0);
    (*(v1 + 16))(v1, 0, 0, v4);
  }
}

@end