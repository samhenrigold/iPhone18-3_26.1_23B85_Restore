@interface SidecarTransferGroup
- (BOOL)handleMessage:(id)message error:(id *)error;
- (NSArray)items;
- (SidecarTransferGroup)initWithMessage:(id)message;
@end

@implementation SidecarTransferGroup

- (BOOL)handleMessage:(id)message error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  messageCopy = message;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v8 = [messageCopy objectForKey:&unk_2877BFC38];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allKeys = [v8 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    errorCopy = error;
    selfCopy = self;
    if (v10)
    {
      v12 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v7 addIndex:{objc_msgSend(v14, "integerValue")}];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    self = selfCopy;
    error = errorCopy;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__SidecarTransferGroup_handleMessage_error___block_invoke;
  v21[3] = &unk_279BC2F58;
  v21[4] = self;
  v15 = messageCopy;
  v22 = v15;
  v23 = &v24;
  [v7 enumerateIndexesUsingBlock:v21];
  v16 = v25;
  if (error)
  {
    v17 = v25[5];
    if (v17)
    {
      *error = v17;
      v16 = v25;
    }
  }

  v18 = v16[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v18;
}

void __44__SidecarTransferGroup_handleMessage_error___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 16) count] <= a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a2];
  }

  v7 = SidecarMessageGetItemData(*(a1 + 40), a2);
  if (v7 && ([v6 appendData:v7] & 1) != 0)
  {
    *(*(a1 + 32) + 8) += [v6 isComplete];
  }

  else
  {
    *a3 = 1;
    v8 = *(a1 + 40);
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SidecarErrorDomain" code:-1010 userInfo:0];
    if (v9)
    {
      v12 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      if (v12)
      {
        log = v12;
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        v12 = log;
        if (v13)
        {
          v14 = [v9 domain];
          v15 = [v9 code];
          v16 = [v9 localizedDescription];
          *buf = 138543875;
          v19 = v14;
          v20 = 2048;
          v21 = v15;
          v22 = 2113;
          v23 = v16;
          _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

          v12 = log;
        }
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (NSArray)items
{
  if ([(SidecarTransferGroup *)self isComplete])
  {
    v3 = [(NSArray *)self->_mutableItems copy];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (SidecarTransferGroup)initWithMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v23.receiver = self;
  v23.super_class = SidecarTransferGroup;
  v5 = [(SidecarTransferGroup *)&v23 init];
  if (!v5)
  {
LABEL_21:
    v7 = v5;
    goto LABEL_22;
  }

  Type = SidecarMessageGetType(messageCopy);
  v7 = 0;
  if (Type <= 4 && ((1 << Type) & 0x1A) != 0)
  {
    v5->_type = Type;
    v8 = [messageCopy objectForKey:&unk_2877BFC80];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v8;
      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        v21 = v8;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v24 + 1) + 8 * v13);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v15 = [v14 objectForKey:&unk_2877BFC50];
            v16 = [v14 objectForKey:&unk_2877BFC68];
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
            {

LABEL_18:
              v18 = MEMORY[0x277CBEBF8];
              v8 = v21;
              goto LABEL_19;
            }

            v17 = -[SidecarMutableItem initWithType:capacity:]([SidecarMutableItem alloc], "initWithType:capacity:", v16, [v15 unsignedIntegerValue]);
            [v9 addObject:v17];

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          v8 = v21;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v18 = v9;
LABEL_19:
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    mutableItems = v5->_mutableItems;
    v5->_mutableItems = v18;

    goto LABEL_21;
  }

LABEL_22:

  return v7;
}

@end